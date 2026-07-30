	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s47, s[0:1], 0x64
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s58, s[0:1], 0x5c
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s6, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v80, 3, v0
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v77, 2, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v3, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s9, s4, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s5, s2, s47
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s10, s5, 31
	s_mul_i32 s7, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s8
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s6, s4
	s_load_b64 s[4:5], s[0:1], 0x0
	s_xor_b32 s6, s6, s10
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s58, v3
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s18, s10, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s10, s10, s47
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s12, s18, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s18, v80
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v4, s12, v80
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s46, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s36, 1, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[4:5], null, v4, s58, v[3:4]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s36
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	buffer_load_b32 v4, v3, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s5, s47, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s6, s5, s47
	s_abs_i32 s5, s5
	s_ashr_i32 s6, s6, 31
	s_mul_hi_u32 s7, s5, s9
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v5, 2, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s9, s7, s8
	s_add_i32 s11, s7, 1
	s_sub_i32 s5, s5, s9
	v_lshrrev_b32_e32 v82, 3, v3
	s_sub_i32 s2, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v5, v77, v5, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s2, s2, s5
	s_add_i32 s5, s7, 1
	s_cmp_ge_u32 s2, s8
	s_mov_b32 s4, 0
	s_cselect_b32 s2, s5, s7
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s7, s17, s19
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s7, s7, s18
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s7, s7, 16
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s5, s19, s16
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s6, s7, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s5, s5, s18
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s6, s6, 63
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s7, s46, s2
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s8, s6, 31
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s5, s5, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s8, s8, 26
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s7, s7, 6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s6, s6, s8
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s5, s5, 0x7fffffc0
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s7, s2
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s59, s7, s5
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s76, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s59, s76
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v9, 3, v3
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow145
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v81, 15, v0
	v_lshlrev_b32_e32 v78, 1, v0
	v_and_b32_e32 v79, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s18, v81
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v5, s12, v81, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v4
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_and_b32 v10, 16, v0
	v_dual_mov_b32 v24, 0x7632 :: v_dual_lshlrev_b32 v65, 3, v1
	.loc	1 590 31                        ; attention.py:590:31
	v_dual_cndmask_b32 v4, 0x80000000, v5 :: v_dual_add_nc_u32 v3, 0, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v79
	v_dual_mov_b32 v23, 0x5410 :: v_dual_add_nc_u32 v2, s19, v2
	v_lshlrev_b32_e32 v16, 3, v0
	v_bfe_i32 v20, v0, 3, 1
	v_cndmask_b32_e64 v15, 0x420, 0, vcc_lo
	v_bfe_i32 v21, v0, 5, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_mov_b32_e32 v1, 0
	buffer_load_u16 v9, v4, s[60:63], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v4, 24, v78
	v_cmp_eq_u32_e64 s1, 0, v10
	v_and_b32_e32 v6, 24, v0
	v_lshlrev_b32_e32 v13, 5, v0
	v_dual_mov_b32 v25, v1 :: v_dual_and_b32 v14, 28, v0
	v_lshl_or_b32 v26, v81, 5, v4
	v_bfe_i32 v19, v0, 2, 1
	v_and_or_b32 v15, v16, 16, v15
	v_and_b32_e32 v16, 0x420, v20
	v_and_b32_e32 v20, 0x840, v21
	v_cndmask_b32_e64 v21, 0x1054, v23, s1
	v_xor_b32_e32 v23, 8, v26
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v5, 4, v0
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_lshlrev_b32 v83, 4, v0
	v_and_b32_e32 v7, 0x70, v0
	v_lshlrev_b32_e32 v8, 3, v81
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v11, 14, v0
	v_lshlrev_b32_e32 v12, 6, v79
	v_and_or_b32 v89, 0x3e0, v13, v14
	v_and_b32_e32 v19, 0x840, v19
	v_lshl_add_u32 v90, v81, 1, v3
	v_dual_mov_b32 v3, v1 :: v_dual_lshlrev_b32 v14, 4, v6
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v31, 16, v26
	v_dual_mov_b32 v17, 0xff800000 :: v_dual_lshlrev_b32 v66, 4, v79
	v_add_nc_u32_e32 v91, 0, v26
	v_xor_b32_e32 v26, 24, v26
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s77, s3, 11
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v112, 0, v23
	v_and_b32_e32 v18, 4, v0
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v85, s16, v2
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v86, s17, v2
	v_xor_b32_e32 v87, v83, v6
	v_and_or_b32 v88, v5, 1, s77
	v_lshlrev_b32_e32 v29, 2, v11
	v_lshlrev_b32_e32 v30, 3, v10
	v_mov_b32_e32 v2, v1
	v_lshrrev_b32_e32 v27, 1, v7
	v_mov_b32_e32 v5, v1
	v_lshl_or_b32 v28, v7, 4, v8
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v13, 0x60, v13
	v_mov_b32_e32 v7, v1
	v_lshl_or_b32 v11, v11, 7, v12
	v_or3_b32 v102, v15, v19, v14
	v_cndmask_b32_e64 v14, 0x3276, v24, s1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v113, 0, v31
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[67:68], null, s45, v80, v[65:66]
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v114, 0, v26
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[68:69], null, s15, v80, v[65:66]
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[69:70], v91
	ds_load_b64 v[71:72], v112
	ds_load_b64 v[73:74], v113
	ds_load_b64 v[75:76], v114
	v_xor_b32_e32 v84, v77, v82
	v_and_b32_e32 v22, 0x80, v78
	v_lshl_add_u32 v18, v18, 7, 0
	v_mov_b32_e32 v8, v1
	v_or3_b32 v101, v11, v30, v29
	v_xor_b32_e32 v11, 4, v89
	v_xor3_b32 v13, v16, v13, v20
	v_lshl_or_b32 v15, v21, 8, v21
	v_lshl_or_b32 v14, v14, 8, v14
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_xor_b32_e32 v12, 0x210, v84
	v_add3_u32 v13, v18, v22, v13
	v_and_b32_e32 v15, 0x540054, v15
	v_add_nc_u32_e32 v117, 0, v11
	v_and_b32_e32 v11, 0x760076, v14
	s_lshr_b32 s0, s0, 29
	v_xor_b32_e32 v32, 8, v87
	s_add_i32 s2, s3, s0
	v_xor_b32_e32 v27, v28, v27
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s8, s2, -8
	v_xor_b32_e32 v28, 8, v89
	v_xor_b32_e32 v29, 12, v89
	v_xor_b32_e32 v30, 16, v89
	v_xor_b32_e32 v33, 20, v89
	v_xor_b32_e32 v34, 24, v89
	v_xor_b32_e32 v35, 28, v89
	v_add_nc_u32_e32 v103, 0, v12
	v_xor_b32_e32 v12, 8, v101
	v_xor_b32_e32 v16, 16, v101
	v_xor_b32_e32 v19, 24, v101
	v_xor_b32_e32 v20, 32, v101
	v_xor_b32_e32 v21, 40, v101
	v_xor_b32_e32 v18, 48, v101
	v_xor_b32_e32 v22, 56, v101
	v_xor_b32_e32 v23, 32, v102
	v_xor_b32_e32 v24, 64, v102
	v_xor_b32_e32 v26, 0x60, v102
	v_add_nc_u32_e32 v124, v13, v10
	v_lshl_or_b32 v10, v15, 4, v15
	v_lshl_or_b32 v11, v11, 4, v11
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s2, s2, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s8, s3, s8
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s2, s13, s2
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s1, s14, s8
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s45, v65
	v_or_b32_e32 v92, 30, v88
	v_or_b32_e32 v93, 32, v88
	v_or_b32_e32 v94, 34, v88
	v_or_b32_e32 v95, 36, v88
	v_or_b32_e32 v96, 38, v88
	v_or_b32_e32 v97, 40, v88
	v_or_b32_e32 v98, 42, v88
	v_or_b32_e32 v99, 44, v88
	v_or_b32_e32 v100, 46, v88
	v_or_b32_e32 v104, 48, v88
	v_or_b32_e32 v105, 50, v88
	v_or_b32_e32 v106, 52, v88
	v_or_b32_e32 v107, 54, v88
	v_or_b32_e32 v108, 56, v88
	v_or_b32_e32 v109, 58, v88
	v_or_b32_e32 v110, 60, v88
	v_or_b32_e32 v111, 62, v88
	v_add_nc_u32_e32 v115, 0, v32
	v_add_nc_u32_e32 v116, 0, v27
	v_add_nc_u32_e32 v118, 0, v28
	v_add_nc_u32_e32 v119, 0, v29
	v_add_nc_u32_e32 v120, 0, v30
	v_add_nc_u32_e32 v121, 0, v33
	v_add_nc_u32_e32 v122, 0, v34
	v_add_nc_u32_e32 v123, 0, v35
	v_add_nc_u32_e32 v125, 0, v12
	v_add_nc_u32_e32 v126, 0, v16
	v_add_nc_u32_e32 v127, 0, v19
	v_add_nc_u32_e32 v128, 0, v20
	v_add_nc_u32_e32 v129, 0, v21
	v_add_nc_u32_e32 v130, 0, v18
	v_add_nc_u32_e32 v131, 0, v22
	v_add_nc_u32_e32 v132, 0, v23
	v_add_nc_u32_e32 v133, 0, v24
	v_add_nc_u32_e32 v134, 0, v26
	v_and_b32_e32 v135, 0x5040504, v10
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v136, 1, v68
	v_add_nc_u32_e32 v137, 2, v68
	v_add_nc_u32_e32 v138, 3, v68
	v_add_nc_u32_e32 v139, 4, v68
	v_add_nc_u32_e32 v140, 5, v68
	v_add_nc_u32_e32 v141, 6, v68
	v_and_b32_e32 v142, 0x7060706, v11
	v_add_nc_u32_e32 v144, 7, v68
	.loc	1 585 26                        ; attention.py:585:26
	s_mov_b32 s48, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s82, s12, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s83, s1, s2
	s_lshl_b32 s78, s45, 4
	s_lshl_b32 s79, s45, 5
	s_mul_i32 s80, s45, 48
	s_mov_b32 s81, 0x76543210
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s74, s62
	s_mov_b32 s75, s63
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s73, s7, 0xffff
	s_mov_b32 s68, s10
	s_mov_b32 s72, s6
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s69, s11
	s_add_i32 s83, s83, s18
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e32 vcc_lo, s58, v66
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v143, 16, v9
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v40, 1, v0
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s18, s59, s77
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v157, 6, v65
	v_or_b32_e32 v156, 4, v65
	v_or_b32_e32 v9, 1, v65
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v40, s18, v40
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v11, 5, v65
	v_or_b32_e32 v155, 7, v65
	v_or_b32_e32 v10, 3, v65
	v_or_b32_e32 v12, 2, v65
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[40:41], null, v40, s58, v[66:67]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v157, s59, v157
	v_or_b32_e32 v156, s59, v156
	v_or_b32_e32 v155, s59, v155
	v_or_b32_e32 v11, s59, v11
	v_or_b32_e32 v9, s59, v9
	v_or_b32_e32 v10, s59, v10
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v157, v85
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v157, v86
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v12, s59, v12
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v156, v85
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[40:43], v40, s[60:63], 0 offen
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v156, v86
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s19, s83, s59
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s6, v155, v85
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v155, v86
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v11, v85
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s13, v11, v86
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s16, v9, v85
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s17, v9, v86
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s14, v10, v85
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s15, v10, v86
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v11, s19, v141, 1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v12, v85
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v12, v86
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v12, s19, v139, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s2
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v157, s19, v136, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s4, s5
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v156, s19, v138, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s20, s6, s7
	s_and_b32 s6, s8, s13
	s_and_b32 s8, s16, s17
	s_and_b32 s7, s36, s1
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v155, s19, v140, 1
	v_add_lshl_u32 v10, s19, v144, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s14, s15
	s_and_b32 s5, s36, s2
	.loc	1 634 32                        ; attention.py:634:32
	v_add_nc_u32_e32 v44, 0, v87
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v11, 0x80000000, v11, s7
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s36, s8
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v9, 0x80000000, v12, s5
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s36, s4
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v12, 0x80000000, v157, s1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s36, s6
	s_and_b32 s8, s36, s20
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v156, 0x80000000, v156, s4
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v32, s48 :: v_dual_mov_b32 v35, s51
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v155, 0x80000000, v155, s6
	v_cndmask_b32_e64 v10, 0x80000000, v10, s8
	.loc	1 639 33                        ; attention.py:639:33
	v_mov_b32_e32 v33, s49
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v146, v148 :: v_dual_mov_b32 v145, v25
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v34, s50 :: v_dual_mov_b32 v37, s53
	v_dual_mov_b32 v36, s52 :: v_dual_mov_b32 v39, s55
	v_mov_b32_e32 v38, s54
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v154, s59, v65
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s9, s12
	v_or_b32_e32 v158, 2, v88
	s_and_b32 s9, s36, s2
	v_or_b32_e32 v159, 4, v88
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s10, v154, v85
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s11, v154, v86
	v_or_b32_e32 v160, 6, v88
	v_or_b32_e32 v162, 10, v88
	v_or_b32_e32 v161, 8, v88
	v_or_b32_e32 v163, 12, v88
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s2, s10, s11
	v_or_b32_e32 v164, 14, v88
	s_and_b32 s10, s36, s2
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_add_lshl_u32 v158, v158, s59, 1
	v_add_lshl_u32 v159, v159, s59, 1
	v_or_b32_e32 v15, 18, v88
	v_add_lshl_u32 v160, v160, s59, 1
	v_or_b32_e32 v18, 20, v88
	v_or_b32_e32 v22, 26, v88
	v_add_lshl_u32 v161, v161, s59, 1
	v_or_b32_e32 v24, 28, v88
	v_or_b32_e32 v14, 16, v88
	v_or_b32_e32 v19, 22, v88
	v_or_b32_e32 v20, 24, v88
	v_add_lshl_u32 v15, v15, s59, 1
	v_add_lshl_u32 v18, v18, s59, 1
	v_add_lshl_u32 v22, v22, s59, 1
	v_add_lshl_u32 v24, v24, s59, 1
	v_add_lshl_u32 v13, s59, v88, 1
	v_add_lshl_u32 v23, v92, s59, 1
	v_add_lshl_u32 v16, v93, s59, 1
	v_add_lshl_u32 v25, v94, s59, 1
	v_add_lshl_u32 v26, v95, s59, 1
	v_add_lshl_u32 v28, v96, s59, 1
	v_add_lshl_u32 v21, v97, s59, 1
	v_add_lshl_u32 v29, v98, s59, 1
	v_add_lshl_u32 v30, v99, s59, 1
	v_add_lshl_u32 v31, v100, s59, 1
	v_add_lshl_u32 v27, v104, s59, 1
	v_add_lshl_u32 v152, v110, s59, 1
	v_add_lshl_u32 v153, v111, s59, 1
	v_add_lshl_u32 v14, v14, s59, 1
	v_add_lshl_u32 v19, v19, s59, 1
	v_add_lshl_u32 v20, v20, s59, 1
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v147, v147, v147 :: v_dual_add_nc_u32 v154, 0, v101
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s44, 0xff800000, v17
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v44, v[40:41]
	ds_store_b64 v115, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x5
	buffer_load_u16 v11, v11, s[64:67], 0 offen
	buffer_load_u16 v157, v9, s[64:67], 0 offen
	buffer_load_u16 v9, v12, s[64:67], 0 offen
	buffer_load_u16 v156, v156, s[64:67], 0 offen
	buffer_load_u16 v155, v155, s[64:67], 0 offen
	buffer_load_u16 v10, v10, s[64:67], 0 offen
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[54:57], v91 offset1:1
	ds_load_2addr_stride64_b64 v[58:61], v91 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[148:151], v112 offset1:1
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v12.h, 0xff80, v11.l, s7
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v12.l, 0xff80, v157.l, s5
	v_add_lshl_u32 v11, s19, v137, 1
	v_add_lshl_u32 v157, s19, v68, 1
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v9.h, 0xff80, v156.l, s4
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v10.h, 0xff80, v10.l, s8
	v_cndmask_b16 v10.l, 0xff80, v155.l, s6
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v155, 0, v84
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[54:55], v[69:70], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[56:57], v[69:70], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[58:59], v[69:70], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[60:61], v[69:70], v[32:39] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[32:35], v112 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[36:39], v113 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[148:149], v[71:72], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[150:151], v[71:72], v[48:55] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	v_cndmask_b32_e64 v157, 0x80000000, v157, s10
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[56:59], v114 offset0:2 offset1:3
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v149, v106, s59, 1
	v_add_lshl_u32 v150, v107, s59, 1
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_u16 v11, v11, s[64:67], 0 offen
	buffer_load_u16 v157, v157, s[64:67], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v148, v108, s59, 1
	v_add_lshl_u32 v151, v109, s59, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v9.l, 0xff80, v9.l, s1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[32:33], v[71:72], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[34:35], v[71:72], v[174:181] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[32:35], v113 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[36:37], v[73:74], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[38:39], v[73:74], v[48:55] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[36:39], v114 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[32:33], v[73:74], v[166:173] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v32, v105, s59, 1
	s_clause 0x18
	buffer_load_u16 v15, v15, s[68:71], 0 offen
	buffer_load_u16 v18, v18, s[68:71], 0 offen
	buffer_load_u16 v22, v22, s[68:71], 0 offen
	buffer_load_u16 v24, v24, s[68:71], 0 offen
	buffer_load_u16 v23, v23, s[68:71], 0 offen
	buffer_load_u16 v25, v25, s[68:71], 0 offen
	buffer_load_u16 v26, v26, s[68:71], 0 offen
	buffer_load_u16 v28, v28, s[68:71], 0 offen
	buffer_load_u16 v29, v29, s[68:71], 0 offen
	buffer_load_u16 v30, v30, s[68:71], 0 offen
	buffer_load_u16 v31, v31, s[68:71], 0 offen
	buffer_load_u16 v32, v32, s[68:71], 0 offen
	buffer_load_u16 v149, v149, s[68:71], 0 offen
	buffer_load_u16 v150, v150, s[68:71], 0 offen
	buffer_load_u16 v151, v151, s[68:71], 0 offen
	buffer_load_u16 v152, v152, s[68:71], 0 offen
	buffer_load_u16 v153, v153, s[68:71], 0 offen
	buffer_load_u16 v13, v13, s[68:71], 0 offen
	buffer_load_u16 v14, v14, s[68:71], 0 offen
	buffer_load_u16 v19, v19, s[68:71], 0 offen
	buffer_load_u16 v20, v20, s[68:71], 0 offen
	buffer_load_u16 v16, v16, s[68:71], 0 offen
	buffer_load_u16 v21, v21, s[68:71], 0 offen
	buffer_load_u16 v27, v27, s[68:71], 0 offen
	buffer_load_u16 v148, v148, s[68:71], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[38:39], v[75:76], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[36:37], v[75:76], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[56:57], v[75:76], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[34:35], v[73:74], v[174:181] neg_lo:[1,1,0]
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v33.l, 0
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v57, v53
	v_cvt_f32_i32_e32 v56, v54
	v_cvt_f32_i32_e32 v39, v166
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v166, v162, s59, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v167
	v_cvt_f32_i32_e32 v53, v168
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v167, v163, s59, 1
	v_add_lshl_u32 v168, v164, s59, 1
	s_clause 0x6
	buffer_load_u16 v158, v158, s[68:71], 0 offen
	buffer_load_u16 v162, v159, s[68:71], 0 offen
	buffer_load_u16 v163, v160, s[68:71], 0 offen
	buffer_load_u16 v164, v166, s[68:71], 0 offen
	buffer_load_u16 v159, v161, s[68:71], 0 offen
	buffer_load_u16 v161, v167, s[68:71], 0 offen
	buffer_load_u16 v160, v168, s[68:71], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v62, v42
	v_cvt_f32_i32_e32 v63, v43
	v_cvt_f32_i32_e32 v64, v45
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[174:181], v[58:59], v[75:76], v[174:181] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v58, v50
	v_cvt_f32_i32_e32 v61, v46
	v_dual_mul_f32 v63, v143, v63 :: v_dual_add_nc_u32 v156, 0, v89
	v_mul_f32_e32 v62, v143, v62
	v_mul_f32_e32 v64, v143, v64
	v_cvt_f32_i32_e32 v36, v48
	v_mul_f32_e32 v58, v143, v58
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v166.h, v12.l
	v_mov_b16_e64 v167.h, v12.h
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v165, v41
	v_cvt_f32_i32_e32 v41, v174
	v_cvt_f32_i32_e32 v37, v51
	v_cvt_f32_i32_e32 v38, v52
	v_cvt_f32_i32_e32 v43, v181
	v_cvt_f32_i32_e32 v42, v178
	v_cvt_f32_i32_e32 v59, v47
	v_cvt_f32_i32_e32 v60, v49
	v_cvt_f32_i32_e32 v52, v169
	v_cvt_f32_i32_e32 v51, v171
	v_cvt_f32_i32_e32 v50, v172
	v_cvt_f32_i32_e32 v48, v173
	v_mul_f32_e32 v60, v143, v60
	v_cvt_f32_i32_e32 v49, v175
	v_cvt_f32_i32_e32 v47, v176
	v_cvt_f32_i32_e32 v46, v177
	v_cvt_f32_i32_e32 v45, v179
	v_cvt_f32_i32_e32 v35, v44
	v_cvt_f32_i32_e32 v44, v180
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v40, v170
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v167.l, v33.l
	v_mov_b16_e64 v166.l, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v165, v143, v165
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v169.h, v33.l
	v_mov_b16_e64 v170.h, v33.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v167
	v_cmp_neq_f32_e64 s11, 0xff800000, v166
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.h, v33.l
	v_mov_b16_e64 v168.h, v33.l
	v_mov_b16_e64 v171.h, v33.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s7, s7, s2
	s_and_b32 s5, s5, s11
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s59, s59, 64
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(33)
	v_cndmask_b16 v11.h, 0xff80, v11.l, s9
	s_waitcnt vmcnt(32)
	v_cndmask_b16 v11.l, 0xff80, v157.l, s10
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v157, 0, v102
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v116, v[11:12], v[9:10] offset1:16
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v33.h, v11.l
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v33
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v33.h, v9.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s10, s10, s12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v33
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s1, s1, s17
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v19, 16, v19
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v161
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v158, v165, v158 :: v_dual_add_nc_u32 v165, 0, v83
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v161.h, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v62, v62, v162
	v_dual_mul_f32 v162, v63, v163 :: v_dual_mul_f32 v163, v64, v164
	v_mad_u64_u32 v[63:64], null, s18, s45, v[67:68]
	v_mul_f32_e32 v64, v58, v18
	v_mul_f32_e32 v18, v143, v57
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v58, v146, v146
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v164.h, v11.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v143, v61
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v164.l, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v57, v18, v22 :: v_dual_mul_f32 v18, v143, v56
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v24
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v24, v143, v37
	v_mul_f32_e32 v37, v143, v43
	v_mul_f32_e32 v61, v11, v12
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v11.l, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v56, v18, v22
	v_mul_f32_e32 v18, v143, v54
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v23
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v23, v143, v36
	v_dual_mul_f32 v36, v143, v42 :: v_dual_mul_f32 v43, v24, v19
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v11.h, v9.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v54, v18, v22
	v_mul_f32_e32 v18, v143, v55
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v25
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v143, v59 :: v_dual_lshlrev_b32 v59, 16, v160
	v_dual_mul_f32 v25, v143, v38 :: v_dual_lshlrev_b32 v38, 16, v153
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v55, v18, v22 :: v_dual_mul_f32 v18, v143, v53
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v26
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v60, v60, v15
	v_mul_f32_e32 v59, v12, v59
	v_mul_f32_e32 v37, v37, v38
	v_mul_f32_e32 v42, v23, v14
	v_dual_mul_f32 v53, v18, v22 :: v_dual_mul_f32 v18, v143, v52
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v28
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v15.l, v33.l
	v_mov_b16_e32 v15.h, v10.h
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v164
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v12.l, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v28, v18, v22
	v_mul_f32_e32 v18, v143, v51
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v29
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v26, v143, v39
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v39, 16, v159
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v12.h, v10.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v15
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v29, v18, v22
	v_mul_f32_e32 v18, v143, v50
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v30
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v11
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s9, s9, s13
	v_cndmask_b32_e64 v9, 0, 1, s7
	v_cndmask_b32_e64 v11, 0, 1, s9
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v30, v18, v22
	v_mul_f32_e32 v18, v143, v48
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v31
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v12
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s8, s8, s14
	s_and_b32 s4, s4, s16
	v_cndmask_b32_e64 v10, 0, 1, s5
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v31, v18, v22 :: v_dual_mul_f32 v18, v143, v49
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v32
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v12, 0, 1, s10
	v_cndmask_b32_e64 v15, 0, 1, s4
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v9.h, 8, v11.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v32, v18, v22
	v_mul_f32_e32 v18, v143, v47
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v149
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s6, s6, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v160.h, v33.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v14, 0, 1, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v48.h, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v47, v18, v22
	v_mul_f32_e32 v18, v143, v46
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v150
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v52.h, v33.l
	v_mov_b16_e32 v51.h, v33.l
	v_mov_b16_e32 v50.h, v33.l
	v_mov_b16_e32 v49.h, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v46, v18, v22
	v_mul_f32_e32 v18, v143, v45
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v151
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v151.h, v33.l
	v_mov_b16_e64 v150.h, v33.l
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s59, s76
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v45, v18, v22 :: v_dual_mul_f32 v18, v143, v44
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v22, 16, v152
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v152.h, v33.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v44, v18, v22
	v_mul_f32_e32 v18, v143, v34
	v_mul_f32_e32 v22, v143, v35
	v_mul_f32_e32 v34, v143, v40
	v_mul_f32_e32 v35, v143, v41
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v40, 16, v21
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v38, v18, v13 :: v_dual_lshlrev_b32 v41, 16, v148
	v_dual_mul_f32 v39, v22, v39 :: v_dual_mul_f32 v148, v25, v20
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[18:19], v154
	ds_load_b64 v[20:21], v125
	ds_load_b64 v[22:23], v126
	ds_load_b64 v[24:25], v127
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v16, v26, v16
	v_dual_mul_f32 v34, v34, v40 :: v_dual_mul_f32 v35, v35, v27
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[26:27], v128
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v149, v36, v41
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v13, 0, 1, s8
	v_or_b16 v41.h, v10.l, v9.l
	v_or_b16 v41.l, v12.l, v9.h
	v_lshlrev_b16 v9.h, 8, v15.l
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[11:12], v130
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v9.l, 8, v13.l
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(5)
	v_and_b32_e32 v36, 0xffff0000, v18
	v_lshlrev_b32_e32 v40, 16, v19
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v33.h, v18.l
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v18, 0xffff0000, v19
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v19, 0, 1, s1
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(4)
	v_lshlrev_b32_e32 v154, 16, v21
	v_and_b32_e32 v153, 0xffff0000, v20
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v15, 0x3fb8aa3b, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v33.h, v20.l
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v10.l, v19.l
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v19, 0xffff0000, v21
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v20, 0xffff0000, v22
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v21.h, v14.l, v9.l
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v159, 16, v23
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v21.l, v10.l, v9.h
	.loc	1 649 37                        ; attention.py:649:37
	v_and_b32_e32 v23, 0xffff0000, v23
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[9:10], v129
	ds_load_b64 v[13:14], v131
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v164, 0x3fb8aa3b, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v33.h, v22.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v40
	v_mul_f32_e32 v40, 0x3fb8aa3b, v154
	v_mul_f32_e32 v166, 0x3fb8aa3b, v36
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v36, 0xffff0000, v24
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v19, 0x3fb8aa3b, v19
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v23, 0x3fb8aa3b, v23 :: v_dual_fmac_f32 v40, s82, v61
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v61, 16, v25
	v_and_b32_e32 v25, 0xffff0000, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v19, s82, v59
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v20
	.loc	1 684 25                        ; attention.py:684:25
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v23, s82, v43 :: v_dual_and_b32 v20, 0xffff0000, v26
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v36
	v_dual_mul_f32 v25, 0x3fb8aa3b, v25 :: v_dual_fmac_f32 v22, s82, v62
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v62, 16, v27
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v36, 0xffff0000, v9
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v43, s82, v57
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v61
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v25, s82, v54 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v20
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v20, 0xffff0000, v11
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v57, s82, v56 :: v_dual_lshlrev_b32 v56, 16, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v10
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v54, s82, v55 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v62
	v_fmac_f32_e32 v59, s82, v60
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v10, 0x3fb8aa3b, v10
	v_dual_mul_f32 v60, 0x3fb8aa3b, v159 :: v_dual_fmac_f32 v55, s82, v53
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v53, 16, v12
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v36, s82, v30
	v_fmac_f32_e32 v10, s82, v31
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v30, 0x3fb8aa3b, v53 :: v_dual_mul_f32 v31, 0x3fb8aa3b, v12
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v15, s82, v38
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v153
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v60, s82, v64
	v_fmac_f32_e32 v56, s82, v32
	v_dual_fmac_f32 v30, s82, v47 :: v_dual_fmac_f32 v31, s82, v46
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_store_b32 v155, v41
	ds_store_b32 v103, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v32, v156
	ds_load_b32 v46, v117
	ds_load_b32 v47, v118
	ds_load_b32 v64, v119
	ds_load_b32 v153, v120
	ds_load_b32 v154, v121
	ds_load_b32 v155, v122
	ds_load_b32 v156, v123
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v61, s82, v29
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v29, 16, v14
	v_and_b32_e32 v14, 0xffff0000, v14
	v_and_b32_e32 v27, 0xffff0000, v27
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v20, 0x3fb8aa3b, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v33.h, v24.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v14, 0x3fb8aa3b, v14 :: v_dual_mul_f32 v27, 0x3fb8aa3b, v27
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v164, s82, v39
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v24, 0x3fb8aa3b, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v33.h, v26.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v14, s82, v37 :: v_dual_fmac_f32 v27, s82, v28
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(5)
	v_and_b32_e32 v37, 0x10000, v47
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v28, 0xffff0000, v13
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v26, 0x3fb8aa3b, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v33.h, v9.l
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v21, 0x10000, v46
	v_cmp_ne_u32_e64 s24, 0, v37
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v37, 0x1000000, v156
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v53, 0x3fb8aa3b, v28
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v26, s82, v16
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b32_e32 v16, 0x1000000, v46
	v_and_b32_e32 v29, 0x1000000, v47
	v_cmp_ne_u32_e64 s11, 0, v37
	v_and_b32_e32 v37, 0x1000000, v154
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v53, s82, v45
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v39, 0x3fb8aa3b, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v33.h, v11.l
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v9, 0x10000, v32
	v_cmp_ne_u32_e64 s18, 0, v37
	v_and_b32_e32 v11, 1, v32
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v166, s82, v158 :: v_dual_and_b32 v41, 1, v47
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s31, 0, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v37, 0xff800000, v10, s18
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v10.l, 8, v32.l
	v_and_b32_e32 v21, 1, v154
	v_and_b32_e32 v45, 0x1000000, v153
	v_cmp_ne_u32_e64 s35, 0, v16
	v_cmp_ne_u32_e64 s25, 0, v29
	v_and_b16 v10.l, 1, v10.l
	v_cmp_ne_u32_e64 s2, 0, v9
	v_and_b32_e32 v9, 0x10000, v153
	v_cmp_eq_u32_e64 s13, 1, v21
	v_cmp_eq_u32_e64 s37, 1, v11
	v_cmp_eq_u16_e64 s40, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v46.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v16, 0xff800000, v19, s35
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v19, 0x1000000, v155
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v21, 0xff800000, v23, s25
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v23, 0x10000, v155
	v_and_b16 v10.l, 1, v10.l
	v_cmp_ne_u32_e64 s17, 0, v45
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v20, s82, v42
	v_dual_fmac_f32 v39, s82, v34 :: v_dual_and_b32 v34, 1, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s41, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v47.l
	v_cmp_ne_u32_e64 s12, 0, v9
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v9, 0xff800000, v15, s37
	v_cndmask_b32_e64 v15, 0xff800000, v40, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v40, 0x10000, v154
	v_and_b16 v10.l, 1, v10.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v29, 0xff800000, v27, s17
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s15, 0, v23
	v_cmp_ne_u32_e64 s19, 0, v19
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v154.h, v33.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s42, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v64.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v42, 0x3fb8aa3b, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v33.h, v13.l
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v13, 0x10000, v64
	v_lshrrev_b16 v27.l, 8, v154.l
	v_and_b16 v10.l, 1, v10.l
	v_lshrrev_b16 v27.h, 8, v155.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v38, s82, v163 :: v_dual_and_b32 v47, 1, v156
	v_fmac_f32_e32 v24, s82, v148
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s43, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v153.l
	v_cmp_ne_u32_e64 s20, 0, v13
	v_cmp_eq_u32_e64 s33, 1, v41
	v_cmp_eq_u32_e64 s26, 1, v34
	v_cmp_ne_u32_e64 s14, 0, v40
	v_and_b16 v10.l, 1, v10.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v40, 0xff800000, v30, s15
	v_cndmask_b32_e64 v41, 0xff800000, v31, s19
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v158.h, v33.l
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v30.h, 1, v27.l
	v_cmp_eq_u16_e64 s30, 1, v10.l
	v_and_b32_e32 v10, 1, v155
	v_and_b16 v31.l, 1, v27.h
	v_and_b32_e32 v28, 1, v46
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v11, 0xff800000, v22, s2
	v_cndmask_b32_e64 v27, 0xff800000, v54, s30
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v54, 0x3fb8aa3b, v33
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v22, 0xff800000, v24, s26
	v_cndmask_b32_e64 v24, 0xff800000, v57, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v57.h, v33.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v42, s82, v35
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s21, 1, v10
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v54, s82, v149
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s34, 1, v47
	v_cmp_eq_u32_e64 s39, 1, v28
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v45, 0xff800000, v14, s11
	v_cndmask_b32_e64 v14, 0xff800000, v38, s41
	v_cndmask_b32_e64 v38, 0xff800000, v42, s21
	v_cndmask_b32_e64 v42, 0xff800000, v54, s34
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v62, s82, v44
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v12, 0x1000000, v32
	v_and_b32_e32 v44, 0x1000000, v64
	v_and_b32_e32 v148, 1, v153
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v13, 0xff800000, v164, s39
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v30.l, 8, v156.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v149, v41, v42
.Ltmp4:
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v18
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s38, 0, v12
	v_cmp_ne_u32_e64 s22, 0, v44
	v_cmp_eq_u32_e64 s23, 1, v148
	v_and_b32_e32 v34, 0x10000, v156
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v18, s82, v162
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v30.l, 1, v30.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v25, 0xff800000, v25, s22
	v_cndmask_b32_e64 v26, 0xff800000, v26, s23
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s16, 0, v34
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v12, 0xff800000, v18, s38
	v_cndmask_b32_e64 v18, 0xff800000, v20, s33
	v_cndmask_b32_e64 v20, 0xff800000, v60, s24
	v_cndmask_b32_e64 v10, 0xff800000, v166, s40
	v_cndmask_b32_e64 v19, 0xff800000, v59, s42
	v_cndmask_b32_e64 v23, 0xff800000, v43, s43
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s29, 1, v30.h
	v_cmp_eq_u16_e64 s28, 1, v31.l
	v_cmp_eq_u16_e64 s27, 1, v30.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v28, 0xff800000, v55, s12
	v_cndmask_b32_e64 v36, 0xff800000, v36, s14
	v_cndmask_b32_e64 v44, 0xff800000, v62, s16
	v_cndmask_b32_e64 v34, 0xff800000, v39, s13
	v_cndmask_b32_e64 v35, 0xff800000, v61, s29
	v_cndmask_b32_e64 v39, 0xff800000, v56, s28
	v_cndmask_b32_e64 v43, 0xff800000, v53, s27
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v53, v9, v10
	v_max3_f32 v55, v12, v13, v14
	v_max3_f32 v56, v19, v20, v21
	v_max3_f32 v59, v22, v23, v24
	v_max3_f32 v60, v25, v26, v27
	v_max3_f32 v30, v15, v16, v18
	v_max_f32_e32 v156, v44, v45
	v_max3_f32 v61, v28, v29, v34
	v_max3_f32 v62, v35, v36, v37
	v_max3_f32 v47, v38, v39, v40
	v_max3_f32 v53, v53, v11, v55
	v_max3_f32 v54, v56, v59, v60
	v_max3_f32 v149, v149, v43, v156
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v47, v61, v62, v47
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v30, v53, v30, v54
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_b128 v157, v[9:12]
	ds_store_b128 v157, v[26:29] offset:512
	ds_store_b128 v132, v[13:16]
	ds_store_b128 v132, v[34:37] offset:512
	ds_store_b128 v133, v[18:21]
	ds_store_b128 v133, v[38:41] offset:512
	ds_store_b128 v134, v[22:25]
	ds_store_b128 v134, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v30, v30, v47, v149
.Ltmp12:
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
	ds_load_b128 v[53:56], v124
	ds_load_b128 v[59:62], v124 offset:256
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v31.h, v33.l
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v46, 1, v63
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v47, v30, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v64.h, v33.l
	v_mov_b16_e32 v32.h, v33.l
	v_mov_b16_e64 v153.h, v33.l
	v_mov_b16_e64 v148.h, v33.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v149, v17, v30, v47
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v155.h, v33.l
	v_mov_b16_e32 v33.h, v33.l
	v_mov_b16_e64 v164.h, v33.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v30, v34, v149
	v_sub_f32_e32 v34, v35, v149
	v_sub_f32_e32 v35, v36, v149
	v_sub_f32_e32 v162, v45, v149
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v45, v17, v149
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v37, v149
	v_sub_f32_e32 v37, v38, v149
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v39, v149
	v_sub_f32_e32 v39, v40, v149
	v_sub_f32_e32 v40, v41, v149
	v_sub_f32_e32 v156, v42, v149
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v41, v62, v62
.Ltmp16:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v45, v45
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.h, v33.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v19, v149
	v_sub_f32_e32 v23, v23, v149
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s14
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v157, v43, v149
.Ltmp17:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v43, v53, v59, v54
.Ltmp18:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v25, v25, v149
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v17.l, v35.h
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v42, v56, v56
.Ltmp20:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v45, 0, v45, s44
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v23, v23
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v27, v27, v149
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v17, 1, v17
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v41, v42, v41
	v_max3_f32 v42, v60, v55, v61
.Ltmp22:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v45
	v_mul_f32_e32 v2, v2, v45
	v_mul_f32_e32 v3, v3, v45
	v_mul_f32_e32 v4, v4, v45
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v41, v43, v42, v41
.Ltmp24:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v5, v5, v45
	v_mul_f32_e32 v6, v6, v45
	v_mul_f32_e32 v7, v7, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v8, v8, v45 :: v_dual_mov_b32 v45, v41
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v25, v25
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v19, 0, v19, s42
	v_cndmask_b32_e64 v23, 0, v23, s43
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v27, v27
.Ltmp25:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v45, v45 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v24, v24, v149
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v43, v63, s79, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v48.l, v19.h
	v_mov_b16_e64 v151.l, v23.h
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v45, v45, v45
.Ltmp28:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v25, s22
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v159, v44, v149
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v42, v63, s78, 1
	v_add_lshl_u32 v44, v63, s80, 1
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v63, v41, v45
.Ltmp30:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v45, 0x80000000, v43, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v43, 1, v48
	v_and_b32_e32 v48, 1, v151
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v24, v24
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v31.l, v25.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v27, s30
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v151, v162
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v9, v149
	v_sub_f32_e32 v11, v11, v149
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v57.l, v27.h
	v_cmp_o_f32_e64 s30, v27, v27
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v24, 0, v24, s20
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s20, v25, v25
	v_add3_u32 v25, v25, v31, 0x7fff
	v_and_b32_e32 v31, 1, v57
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v151, 0, v151, s11
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v12, v12, v149
	v_sub_f32_e32 v13, v13, v149
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v27, v27, v31, 0x7fff
	v_mov_b16_e32 v31.h, v33.l
	v_mov_b16_e64 v31.l, v151.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v10, v149
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s37
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v14, v14, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v16, v16, v149 :: v_dual_and_b32 v31, 1, v31
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v161.l, v9.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s37, v9, v9
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v15, v149
	v_sub_f32_e32 v18, v18, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v161
	v_mov_b16_e64 v169.l, v11.h
	v_cmp_o_f32_e64 s2, v11, v11
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v20, v149
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s40
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v9, v9, v41, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v21, v149
	v_sub_f32_e32 v22, v22, v149
	v_sub_f32_e32 v26, v26, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v160.l, v10.h
	v_cmp_o_f32_e64 s40, v10, v10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v21, v21
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v160
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v26, v26
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v28, v28, v149
	v_sub_f32_e32 v29, v29, v149
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v10, v10, v41, 0x7fff
	v_and_b32_e32 v41, 1, v169
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v18, s33
	v_cndmask_b32_e64 v20, 0, v20, s24
	v_cndmask_b32_e64 v21, 0, v21, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s24, v19, v19
	v_add3_u32 v163, v11, v41, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v12
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v22, 0, v22, s26
	v_cndmask_b32_e64 v26, 0, v26, s23
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v41, 0x80000000, v42, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v49.l, v18.h
	v_mov_b16_e64 v150.l, v20.h
	v_mov_b16_e64 v171.l, v21.h
	v_mov_b16_e64 v152.l, v22.h
	v_mov_b16_e32 v64.l, v26.h
	v_cmp_o_f32_e64 s33, v18, v18
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s42, v20, v20
	v_and_b32_e32 v47, 1, v152
	v_add3_u32 v19, v19, v43, 0x7fff
	v_cmp_o_f32_e64 s25, v21, v21
	v_mov_b16_e64 v168.l, v11.h
	v_cmp_o_f32_e64 s38, v11, v11
	v_cmp_o_f32_e64 s26, v23, v23
	v_cmp_o_f32_e64 s43, v22, v22
	v_add3_u32 v22, v22, v47, 0x7fff
	v_and_b32_e32 v12, 1, v168
	v_add3_u32 v23, v23, v48, 0x7fff
	v_cmp_o_f32_e64 s23, v26, v26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v38, v38
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v166, v11, v12, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v13
	v_exp_f32_e32 v13, v15
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v32.l, v24.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v30, v30
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s39
	v_cndmask_b32_e64 v13, 0, v13, s31
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v57, v156
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v28, 0, v28, s12
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v32, 1, v32
	v_mov_b16_e32 v52.l, v11.h
	v_mov_b16_e32 v50.l, v13.h
	v_cmp_o_f32_e64 s39, v11, v11
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s28
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v153.l, v28.h
	v_and_b32_e32 v12, 1, v52
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v52, 0x80000000, v44, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v44, 1, v150
	v_cmp_o_f32_e64 s22, v24, v24
	v_add3_u32 v24, v24, v32, 0x7fff
	v_add3_u32 v168, v11, v12, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v12, v14
	v_exp_f32_e32 v14, v16
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v11, 0x80000000, v46, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v16, 1, v50
	v_and_b32_e32 v46, 1, v171
	v_add3_u32 v20, v20, v44, 0x7fff
	v_mov_b16_e32 v32.h, v33.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v150, v159
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v16, v13, v16, 0x7fff
	v_add3_u32 v21, v21, v46, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v12, 0, v12, s41
	v_cndmask_b32_e64 v14, 0, v14, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s41, v13, v13
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[45:48], v45, s[72:75], 0 offen
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s17
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v170.l, v12.h
	v_mov_b16_e32 v51.l, v14.h
	v_cmp_o_f32_e64 s31, v12, v12
	v_cmp_o_f32_e64 s35, v14, v14
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v15, 1, v170
	v_and_b32_e32 v42, 1, v51
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v30, 0, v30, s13
	v_cndmask_b32_e64 v36, 0, v36, s18
	v_cndmask_b32_e64 v37, 0, v37, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v15, v12, v15, 0x7fff
	v_add3_u32 v170, v14, v42, 0x7fff
	v_and_b32_e32 v42, 1, v49
	v_and_b32_e32 v49, 1, v64
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[11:14], v11, s[72:75], 0 offen
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s19
	v_cndmask_b32_e64 v39, 0, v39, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v18, v18, v42, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[41:44], v41, s[72:75], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v26, v26, v49, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[49:52], v52, s[72:75], 0 offen
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v57, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v33.l, v38.h
	v_and_b32_e32 v152, 1, v153
	v_mov_b16_e64 v148.l, v29.h
	v_cmp_o_f32_e64 s12, v28, v28
	v_mov_b16_e64 v154.l, v34.h
	v_mov_b16_e64 v155.l, v30.h
	v_mov_b16_e64 v158.l, v36.h
	v_mov_b16_e64 v161.l, v37.h
	v_mov_b16_e64 v160.l, v40.h
	v_mov_b16_e64 v164.l, v39.h
	v_mov_b16_e64 v169.l, v57.h
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v28, v28, v152, 0x7fff
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v152, v63
.Ltmp32:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v64, v157
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v150, 0, v150, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s16, v35, v35
	v_and_b32_e32 v148, 1, v148
	v_and_b32_e32 v153, 1, v154
	v_and_b32_e32 v154, 1, v155
	v_and_b32_e32 v155, 1, v158
	v_and_b32_e32 v156, 1, v161
	v_and_b32_e32 v157, 1, v160
	v_and_b32_e32 v158, 1, v164
	v_and_b32_e32 v160, 1, v169
	v_add3_u32 v17, v35, v17, 0x7fff
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v152, v152 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v29, v29
	v_cmp_o_f32_e64 s15, v36, v36
	v_cmp_o_f32_e64 s18, v37, v37
	v_cmp_o_f32_e64 s21, v39, v39
	v_cmp_o_f32_e64 s28, v57, v57
	v_add3_u32 v29, v29, v148, 0x7fff
	v_add3_u32 v35, v36, v155, 0x7fff
	v_add3_u32 v36, v37, v156, 0x7fff
	v_add3_u32 v37, v39, v158, 0x7fff
	v_add3_u32 v39, v57, v160, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v15.h, s31
	v_cndmask_b16 v57.l, 0x7fff, v168.h, s39
	v_cndmask_b16 v148.l, 0x7fff, v17.h, s16
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v17, v152, v152
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s17, v38, v38
	v_cmp_o_f32_e64 s19, v40, v40
	v_add3_u32 v33, v38, v33, 0x7fff
	v_add3_u32 v38, v40, v157, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s43
	v_cndmask_b16 v22.h, 0x7fff, v27.h, s30
	v_permlanex16_b32 v27, v57, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v63, v63, v17
.Ltmp38:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v64, 0, v64, s27
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v34, v34
	v_add3_u32 v34, v34, v153, 0x7fff
	v_cndmask_b16 v153.h, 0x7fff, v38.h, s19
	v_cndmask_b16 v153.l, 0x7fff, v37.h, s21
	v_perm_b32 v37, v27, v57, v135
	v_perm_b32 v38, v27, v57, v142
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v57, v63
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.l, v64.h
	v_mov_b16_e64 v32.l, v150.h
	v_cmp_o_f32_e64 s14, v30, v30
	v_add3_u32 v30, v30, v154, 0x7fff
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v159, 1, v167
	v_and_b32_e32 v32, 1, v32
	v_cmp_o_f32_e64 s27, v64, v64
	v_cmp_o_f32_e64 s29, v151, v151
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v57, v57
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s34, v150, v150
	v_add3_u32 v40, v64, v159, 0x7fff
	v_add3_u32 v32, v150, v32, 0x7fff
	v_add3_u32 v31, v151, v31, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s40
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s37
	v_cndmask_b16 v9.h, 0x7fff, v166.h, s38
	v_cndmask_b16 v9.l, 0x7fff, v163.h, s2
	v_cndmask_b16 v64.h, 0x7fff, v170.h, s35
	v_cndmask_b16 v64.l, 0x7fff, v16.h, s41
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s24
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s33
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s25
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s42
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s26
	v_cndmask_b16 v21.h, 0x7fff, v25.h, s20
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s22
	v_cndmask_b16 v22.l, 0x7fff, v26.h, s23
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s11
	v_cndmask_b16 v23.l, 0x7fff, v28.h, s12
	v_cndmask_b16 v24.h, 0x7fff, v34.h, s13
	v_cndmask_b16 v24.l, 0x7fff, v30.h, s14
	v_cndmask_b16 v148.h, 0x7fff, v35.h, s15
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v63, v57
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v31.h, s29
	v_cndmask_b16 v16.l, 0x7fff, v32.h, s34
	v_permlanex16_b32 v25, v10, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v9, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v64, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v19, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v18, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v20, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v21, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v155, v22, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v156, v23, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v157, v24, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v158, v148, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v147, v147, v57
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v151.h, 0x7fff, v33.h, s17
	v_cndmask_b16 v151.l, 0x7fff, v36.h, s18
	v_cndmask_b16 v15.h, 0x7fff, v40.h, s27
	v_cndmask_b16 v15.l, 0x7fff, v39.h, s28
	v_perm_b32 v33, v25, v10, v135
	v_perm_b32 v34, v25, v10, v142
	v_perm_b32 v35, v26, v9, v135
	v_perm_b32 v36, v26, v9, v142
	v_perm_b32 v39, v28, v64, v135
	v_perm_b32 v40, v28, v64, v142
	v_perm_b32 v25, v29, v19, v135
	v_perm_b32 v26, v29, v19, v142
	v_perm_b32 v27, v30, v18, v135
	v_perm_b32 v28, v30, v18, v142
	v_perm_b32 v29, v31, v20, v135
	v_perm_b32 v30, v31, v20, v142
	v_perm_b32 v31, v32, v21, v135
	v_perm_b32 v32, v32, v21, v142
	v_perm_b32 v17, v155, v22, v135
	v_perm_b32 v18, v155, v22, v142
	v_perm_b32 v19, v156, v23, v135
	v_perm_b32 v20, v156, v23, v142
	v_perm_b32 v21, v157, v24, v135
	v_perm_b32 v22, v157, v24, v142
	v_perm_b32 v23, v158, v148, v135
	v_perm_b32 v24, v158, v148, v142
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v148, v58, v57 :: v_dual_sub_f32 v53, v53, v147
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v57, v59, v147
	v_sub_f32_e32 v54, v54, v147
	v_sub_f32_e32 v58, v60, v147
	v_sub_f32_e32 v55, v55, v147
	v_sub_f32_e32 v59, v61, v147
	v_sub_f32_e32 v56, v56, v147
	v_sub_f32_e32 v60, v62, v147
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v60, v60
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v159, v151, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v53, 0, v53, s10
	v_cndmask_b32_e64 v57, 0, v57, s1
	v_cndmask_b32_e64 v54, 0, v54, s9
	v_cndmask_b32_e64 v58, 0, v58, s4
	v_cndmask_b32_e64 v55, 0, v55, s5
	v_cndmask_b32_e64 v59, 0, v59, s6
	v_cndmask_b32_e64 v56, 0, v56, s7
	v_cndmask_b32_e64 v60, 0, v60, s8
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v53, v53, v57 :: v_dual_add_f32 v54, v54, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v55, v55, v59
.Ltmp48:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v56, v56, v60
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v9, v159, v151, v135
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v53, v53, v54
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v10, v159, v151, v142
	v_permlanex16_b32 v154, v153, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v54, v55, v56
.Ltmp54:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v155, v146, v148
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v152, v15, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v150, v16, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v146
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v53, v53, v54
.Ltmp56:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(2)
	ds_store_b128 v165, v[11:14]
	s_waitcnt vmcnt(1)
	ds_store_b128 v165, v[41:44] offset:2048
	ds_store_b128 v165, v[45:48] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v165, v[49:52] offset:6144
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v54, v53
.Ltmp58:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v11, v154, v153, v135
	v_perm_b32 v12, v154, v153, v142
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v153, v155
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v13, v152, v15, v135
	v_perm_b32 v14, v152, v15, v142
	v_perm_b32 v15, v150, v16, v135
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v53, v53, v54
.Ltmp62:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v16, v150, v16, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v54, v53
	v_mov_b32_dpp v54, v54 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v151, v53, v54
.Ltmp65:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v156, v90
	ds_load_u16_d16 v157, v90 offset:256
	ds_load_u16_d16 v158, v90 offset:512
	ds_load_u16_d16 v159, v90 offset:768
	ds_load_u16_d16 v160, v90 offset:1024
	ds_load_u16_d16 v161, v90 offset:1280
	ds_load_u16_d16 v162, v90 offset:1536
	ds_load_u16_d16 v163, v90 offset:1792
	ds_load_u16_d16 v57, v90 offset:2048
	ds_load_u16_d16 v58, v90 offset:2304
	ds_load_u16_d16 v59, v90 offset:2560
	ds_load_u16_d16 v60, v90 offset:2816
	ds_load_u16_d16 v61, v90 offset:3072
	ds_load_u16_d16 v62, v90 offset:3328
	ds_load_u16_d16 v63, v90 offset:3584
	ds_load_u16_d16 v64, v90 offset:3840
	ds_load_u16_d16 v49, v90 offset:4096
	ds_load_u16_d16 v50, v90 offset:4352
	ds_load_u16_d16 v51, v90 offset:4608
	ds_load_u16_d16 v52, v90 offset:4864
	ds_load_u16_d16 v53, v90 offset:5120
	ds_load_u16_d16 v54, v90 offset:5376
	ds_load_u16_d16 v55, v90 offset:5632
	ds_load_u16_d16 v56, v90 offset:5888
	ds_load_u16_d16 v41, v90 offset:6144
	ds_load_u16_d16 v42, v90 offset:6400
	ds_load_u16_d16 v43, v90 offset:6656
	ds_load_u16_d16 v44, v90 offset:6912
	ds_load_u16_d16 v45, v90 offset:7168
	ds_load_u16_d16 v46, v90 offset:7424
	ds_load_u16_d16 v47, v90 offset:7680
	ds_load_u16_d16 v48, v90 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v156, v90 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v157, v90 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v158, v90 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v159, v90 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v90 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v161, v90 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v162, v90 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v163, v90 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v57, v90 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v58, v90 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v59, v90 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v60, v90 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v61, v90 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v62, v90 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v63, v90 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v64, v90 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v49, v90 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v50, v90 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v51, v90 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v52, v90 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v53, v90 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v54, v90 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v55, v90 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v56, v90 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v41, v90 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v42, v90 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v43, v90 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v44, v90 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v45, v90 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v46, v90 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v47, v90 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v48, v90 offset:8064
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v154, v151
.Ltmp67:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[156:163], v[33:40], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v154, v154 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[25:32], v[1:8]
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v26, 0, v153, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v25, v151, v154
.Ltmp71:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[17:24], v[1:8]
	v_mov_b32_e32 v17, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v25, v145, v26
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[9:16], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v9, v82
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v25, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v80
	s_mov_b32 s1, 0x76543210
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp73:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s47, s47, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v10, 0xff800000, v148, vcc_lo
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s45, 2
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v9, 0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v10, v10, v11 :: v_dual_and_b32 v11, 12, v77
.Ltmp76:
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v12, 0, v25, vcc_lo
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v11, 0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp79:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_mov_b32 v14, v10
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_mov_b32 v15, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_mov_b32 v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp88:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v15 :: v_dual_max_f32 v10, v10, v14
.Ltmp89:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s46, s47
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v12, v12, v13
.Ltmp92:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v1
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v16
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_cndmask_b32 v12, 0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v4, v2
.Ltmp99:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v13, 0, v6, vcc_lo
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp101:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v15, 0, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v7, v10
.Ltmp103:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v4
	v_add_f32_e32 v4, v3, v5
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, v9
.Ltmp108:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v16, v4
.Ltmp109:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v6
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v10, v10
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v7, v7 :: v_dual_mov_b32 v19, v14
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v9, v3
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v2, v5 :: v_dual_max_f32 v8, v8, v10
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v9, v7
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v10, v8 :: v_dual_mov_b32 v5, v3
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v19
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v4, v4, v16
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v16, v11 :: v_dual_add_f32 v13, v13, v18
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v11, v11, v16
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v11 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v15
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v15, v20
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v15, v11 :: v_dual_add_f32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v20, v16
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v16, v20
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp139:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp141:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp143:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp144:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp145:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v77
	v_and_b32_e32 v4, 0xe0, v78
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_lshlrev_b32 v2, 5, v79
.Ltmp147:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp149:
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s45, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp150:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 182
		.amdhsa_next_free_sgpr 84
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 182
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 84
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11168
; TotalNumSgprs: 86
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 86
; NumVGPRsForWavesPerEU: 182
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     86
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
