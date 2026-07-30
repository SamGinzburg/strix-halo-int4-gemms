	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s59, s[0:1], 0x64
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s72, s[0:1], 0x5c
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s6, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v59, 3, v0
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v56, 2, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s59
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
	s_xor_b32 s5, s2, s59
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
	v_cmp_gt_i32_e32 vcc_lo, s72, v3
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s18, s10, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s10, s10, s59
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s12, s18, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s18, v59
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v4, s12, v59
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s58, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s44, 1, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[4:5], null, v4, s72, v[3:4]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s44
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	buffer_load_b32 v4, v3, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s5, s59, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s6, s5, s59
	s_abs_i32 s5, s5
	s_ashr_i32 s6, s6, 31
	s_mul_hi_u32 s7, s5, s9
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v5, 2, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s9, s7, s8
	s_add_i32 s11, s7, 1
	s_sub_i32 s5, s5, s9
	v_lshrrev_b32_e32 v61, 3, v3
	s_sub_i32 s2, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v5, v56, v5, 0
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
	s_mul_i32 s7, s58, s2
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
	s_max_i32 s73, s7, s5
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s74, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s73, s74
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
.LBB0_3:                                ; %Flow136
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v60, 15, v0
	v_lshlrev_b32_e32 v57, 1, v0
	v_and_b32_e32 v58, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_22
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s18, v60
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v5, s12, v60, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v18, 0x5410 :: v_dual_lshlrev_b32 v45, 3, v1
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v4
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_lshlrev_b32 v7, 5, v0
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v3, 0, v3
	v_and_b32_e32 v8, 28, v0
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e32 v4, 0x80000000, v5, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v58
	v_lshlrev_b32_e32 v12, 3, v0
	v_bfe_i32 v14, v0, 2, 1
	v_bfe_i32 v15, v0, 3, 1
	v_bfe_i32 v16, v0, 5, 1
	v_cndmask_b32_e64 v11, 0x420, 0, vcc_lo
	s_clause 0x1
	s_load_b64 s[46:47], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_mov_b32_e32 v1, 0
	buffer_load_u16 v9, v4, s[60:63], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v4, 24, v57
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v10, 16, v0
	v_and_b32_e32 v6, 24, v0
	v_dual_mov_b32 v19, 0x7632 :: v_dual_add_nc_u32 v2, s19, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v20, v60, 5, v4
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v5, 4, v0
	v_lshlrev_b32_e32 v62, 4, v0
	v_and_or_b32 v76, 0x3e0, v7, v8
	v_and_b32_e32 v14, 0x840, v14
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v23, 8, v20
	v_and_or_b32 v11, v12, 16, v11
	v_and_b32_e32 v12, 0x60, v7
	v_and_b32_e32 v15, 0x420, v15
	v_and_b32_e32 v16, 0x840, v16
	v_lshl_add_u32 v77, v60, 1, v3
	v_mov_b32_e32 v3, v1
	v_cmp_eq_u32_e64 s1, 0, v10
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v22, 4, v6
	v_xor_b32_e32 v24, 16, v20
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v79, 0, v20
	v_xor_b32_e32 v20, 24, v20
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_lshlrev_b32 v46, 4, v58
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s75, s3, 11
	v_dual_mov_b32 v78, v1 :: v_dual_add_nc_u32 v101, 0, v23
	v_dual_mov_b32 v64, 0xff800000 :: v_dual_and_b32 v13, 4, v0
	v_and_or_b32 v75, v5, 1, s75
	v_cndmask_b32_e64 v18, 0x1054, v18, s1
	v_mov_b32_e32 v5, v1
	v_xor_b32_e32 v74, v62, v6
	v_mov_b32_e32 v6, v1
	v_or3_b32 v93, v11, v14, v22
	v_xor3_b32 v11, v15, v12, v16
	v_cndmask_b32_e64 v12, 0x3276, v19, s1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v102, 0, v24
	v_add_nc_u32_e32 v103, 0, v20
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[47:48], null, s45, v59, v[45:46]
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[48:49], v79
	ds_load_b64 v[50:51], v101
	ds_load_b64 v[52:53], v102
	ds_load_b64 v[54:55], v103
	v_and_b32_e32 v17, 0x80, v57
	v_lshl_add_u32 v13, v13, 7, 0
	v_lshl_or_b32 v14, v18, 8, v18
	v_lshl_or_b32 v12, v12, 8, v12
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_xor_b32_e32 v63, v56, v61
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v72, s16, v2
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v73, s17, v2
	v_mov_b32_e32 v2, v1
	v_add3_u32 v11, v13, v17, v11
	v_and_b32_e32 v13, 0x540054, v14
	v_and_b32_e32 v12, 0x760076, v12
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_mul_lo_u32 v14, s15, v59
	s_add_i32 s2, s3, s0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v65, 1, v45
	v_or_b32_e32 v66, 2, v45
	v_or_b32_e32 v67, 3, v45
	v_or_b32_e32 v68, 4, v45
	v_or_b32_e32 v69, 5, v45
	v_or_b32_e32 v70, 6, v45
	v_or_b32_e32 v71, 7, v45
	v_xor_b32_e32 v21, 0x210, v63
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s8, s2, -8
	v_xor_b32_e32 v25, 8, v74
	v_xor_b32_e32 v26, 4, v76
	v_xor_b32_e32 v27, 8, v76
	v_xor_b32_e32 v28, 12, v76
	v_xor_b32_e32 v29, 16, v76
	v_xor_b32_e32 v30, 20, v76
	v_xor_b32_e32 v31, 24, v76
	v_xor_b32_e32 v32, 28, v76
	v_xor_b32_e32 v15, 32, v93
	v_xor_b32_e32 v16, 64, v93
	v_xor_b32_e32 v18, 0x60, v93
	v_lshl_or_b32 v13, v13, 4, v13
	v_add_nc_u32_e32 v115, v11, v10
	v_lshl_or_b32 v10, v12, 4, v12
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s2, s2, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s8, s3, s8
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s2, s13, s2
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s1, s14, s8
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s45, v45
	v_or_b32_e32 v80, 24, v75
	v_or_b32_e32 v81, 26, v75
	v_or_b32_e32 v82, 28, v75
	v_or_b32_e32 v83, 30, v75
	v_or_b32_e32 v84, 32, v75
	v_or_b32_e32 v85, 34, v75
	v_or_b32_e32 v86, 36, v75
	v_or_b32_e32 v87, 38, v75
	v_or_b32_e32 v88, 40, v75
	v_or_b32_e32 v89, 42, v75
	v_or_b32_e32 v90, 44, v75
	v_or_b32_e32 v91, 46, v75
	v_or_b32_e32 v92, 48, v75
	v_add_nc_u32_e32 v94, 0, v21
	v_or_b32_e32 v95, 50, v75
	v_or_b32_e32 v96, 52, v75
	v_or_b32_e32 v97, 54, v75
	v_or_b32_e32 v98, 56, v75
	v_or_b32_e32 v99, 58, v75
	v_or_b32_e32 v100, 60, v75
	v_add_nc_u32_e32 v104, 0, v25
	v_add_nc_u32_e32 v105, 0, v26
	v_add_nc_u32_e32 v106, 0, v27
	v_add_nc_u32_e32 v107, 0, v28
	v_add_nc_u32_e32 v108, 0, v29
	v_add_nc_u32_e32 v109, 0, v30
	v_add_nc_u32_e32 v110, 0, v31
	v_add_nc_u32_e32 v111, 0, v32
	v_add_nc_u32_e32 v112, 0, v15
	v_add_nc_u32_e32 v113, 0, v16
	v_add_nc_u32_e32 v114, 0, v18
	v_and_b32_e32 v116, 0x5040504, v13
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v117, v14, v65
	v_add_nc_u32_e32 v118, v14, v66
	v_add_nc_u32_e32 v119, v14, v67
	v_add_nc_u32_e32 v120, v14, v68
	v_add_nc_u32_e32 v121, v14, v69
	v_add_nc_u32_e32 v122, v14, v70
	v_add_nc_u32_e32 v123, v14, v71
	v_add_nc_u32_e32 v124, v14, v45
	v_and_b32_e32 v125, 0x7060706, v10
	v_or_b32_e32 v127, 62, v75
	.loc	1 585 26                        ; attention.py:585:26
	s_mov_b32 s48, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s80, s12, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s81, s1, s2
	s_lshl_b32 s76, s45, 4
	s_lshl_b32 s77, s45, 5
	s_mul_i32 s78, s45, 48
	s_mov_b32 s79, 0x76543210
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s65, s11
	s_add_i32 s81, s81, s18
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e32 vcc_lo, s72, v46
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v126, 16, v9
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 31 is_stmt 0                ; attention.py:0:31
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	v_and_b16 v131.h, 0xff, v43.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, 0
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v148.h, v147.l
	v_mov_b16_e64 v147.h, v146.l
	v_mov_b16_e64 v146.h, v145.l
	v_mov_b16_e64 v147.l, v43.l
	v_mov_b16_e64 v146.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v32, v126, v32
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v156.h, v155.l
	v_mov_b16_e64 v155.l, v43.l
	v_mov_b16_e64 v155.h, v154.l
	v_mov_b16_e64 v154.l, v43.l
	v_mov_b16_e64 v154.h, v153.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v35, v35
	v_dual_mul_f32 v39, v126, v39 :: v_dual_mul_f32 v32, v32, v146
	v_mul_f32_e32 v40, v126, v40
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_mul_f32_e32 v39, v39, v155
	v_dual_mul_f32 v35, v126, v35 :: v_dual_mul_f32 v40, v40, v154
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v160.h, v159.l
	v_mov_b16_e64 v159.l, v43.l
	v_mov_b16_e64 v159.h, v158.l
	v_mov_b16_e64 v158.l, v43.l
	v_mov_b16_e64 v158.h, v157.l
	v_mov_b16_e64 v140.h, v139.l
	v_mov_b16_e64 v139.l, v43.l
	v_mov_b16_e64 v139.h, v138.l
	v_mov_b16_e64 v138.l, v43.l
	v_mov_b16_e64 v138.h, v137.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v19, v19
	v_dual_mul_f32 v36, v126, v36 :: v_dual_mul_f32 v35, v35, v159
	v_dual_mul_f32 v23, v126, v23 :: v_dual_mul_f32 v40, s80, v40
	v_mul_f32_e32 v24, v126, v24
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v152.h, v151.l
	v_mov_b16_e64 v151.l, v43.l
	v_mov_b16_e64 v151.h, v150.l
	v_mov_b16_e64 v150.l, v43.l
	v_mov_b16_e64 v150.h, v149.l
	v_mov_b16_e64 v144.h, v143.l
	v_mov_b16_e64 v143.l, v43.l
	v_mov_b16_e64 v143.h, v142.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v20, v20
	v_dual_mul_f32 v33, v126, v33 :: v_dual_mul_f32 v36, v36, v158
	v_mul_f32_e32 v19, v126, v19
	v_mul_f32_e32 v23, v23, v139
	v_dual_mul_f32 v27, v126, v27 :: v_dual_mul_f32 v24, v24, v138
	v_mul_f32_e32 v28, v126, v28
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v153.l, v43.l
	v_mov_b16_e64 v153.h, v152.l
	v_mov_b16_e64 v142.l, v43.l
	v_mov_b16_e64 v142.h, v141.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_mul_f32_e32 v27, v27, v151
	v_dual_mul_f32 v37, v126, v37 :: v_dual_mul_f32 v28, v28, v150
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v36, s80, v36
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v20, v126, v20 :: v_dual_mul_f32 v19, v19, v143
	v_mul_f32_e32 v25, v126, v25
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v134.h, v133.l
	v_mov_b16_e64 v133.l, v43.l
	v_mov_b16_e64 v133.h, v132.l
	v_mov_b16_e64 v132.l, v43.l
	v_mov_b16_e64 v132.h, v131.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_dual_mul_f32 v13, v126, v13 :: v_dual_mul_f32 v28, s80, v28
	v_mul_f32_e32 v14, v126, v14
	v_mul_f32_e32 v20, v20, v142
	v_dual_mul_f32 v26, v126, v26 :: v_dual_mul_f32 v25, v25, v153
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v136.h, v135.l
	v_mov_b16_e64 v135.l, v43.l
	v_mov_b16_e64 v135.h, v134.l
	v_mov_b16_e64 v134.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_mul_f32_e32 v11, v126, v11
	v_dual_mul_f32 v133, v13, v133 :: v_dual_mul_f32 v14, v14, v132
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v132, s80, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v12, v126, v12 :: v_dual_mul_f32 v135, v11, v135
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v157.l, v43.l
	v_mov_b16_e64 v157.h, v156.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v149.l, v43.l
	v_mov_b16_e64 v149.h, v148.l
	v_mov_b16_e64 v148.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v29, v126, v29 :: v_dual_mul_f32 v134, v12, v134
	v_mul_f32_e32 v30, v126, v30
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v152.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v9, v9
	v_dual_mul_f32 v38, v126, v38 :: v_dual_mul_f32 v37, v37, v157
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_dual_mul_f32 v29, v29, v149 :: v_dual_mul_f32 v30, v30, v148
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v39, s80, v39
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v137.l, v43.l
	v_mov_b16_e64 v137.h, v136.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v10, v10
	v_dual_mul_f32 v26, v26, v152 :: v_dual_mul_f32 v37, s80, v37
	v_mul_f32_e32 v9, v126, v9
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v130.h, 0xff, v43.h
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v43.h, v160.l
	v_mov_b16_e64 v156.l, v43.l
	v_mov_b16_e64 v162.l, v43.l
	v_mov_b16_e64 v162.h, v130.l
	v_mov_b16_e64 v163.l, v43.l
	v_mov_b16_e64 v163.h, v161.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_dual_mul_f32 v15, v126, v15 :: v_dual_mul_f32 v30, s80, v30
	v_mul_f32_e32 v16, v126, v16
	.loc	1 681 34                        ; attention.py:681:34
	s_waitcnt vmcnt(0)
	v_and_b16 v44.h, 0xff, v44.h
	v_and_b16 v42.h, 0xff, v42.h
	v_and_b16 v41.h, 0xff, v41.h
	v_and_b16 v42.l, 0xff, v42.l
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v138, s80, v26
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v10, v126, v10 :: v_dual_mul_f32 v137, v9, v137
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v9.l, 0xff, v41.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v160.l, v43.l
	v_mov_b16_e64 v145.l, v43.l
	v_mov_b16_e64 v145.h, v144.l
	v_mov_b16_e64 v144.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_dual_mul_f32 v34, v126, v34 :: v_dual_mul_f32 v33, v33, v43
	v_dual_mul_f32 v38, v38, v156 :: v_dual_mul_f32 v35, s80, v35
	v_mul_f32_e32 v15, v15, v162
	v_dual_mul_f32 v17, v126, v17 :: v_dual_mul_f32 v16, v16, v163
	v_mul_f32_e32 v18, v126, v18
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v44.l, 0xff, v44.l
	v_cmp_ne_u16_e64 s1, 0, v42.l
	v_cmp_ne_u16_e64 s2, 0, v41.h
	v_cmp_ne_u16_e64 s4, 0, v42.h
	v_cmp_ne_u16_e64 s5, 0, v131.h
	v_cmp_ne_u16_e64 s7, 0, v130.h
	v_cmp_ne_u16_e64 s8, 0, v44.h
	v_cmp_ne_u16_e64 s9, 0, v9.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v141.l, v43.l
	v_mov_b16_e64 v141.h, v140.l
	v_mov_b16_e64 v140.l, v43.l
	v_mov_b16_e64 v136.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v21, v126, v21 :: v_dual_mul_f32 v38, s80, v38
	v_mul_f32_e32 v22, v126, v22
	v_dual_mul_f32 v34, v34, v160 :: v_dual_mul_f32 v33, s80, v33
	v_mul_f32_e32 v31, v126, v31
	v_dual_mul_f32 v17, v17, v145 :: v_dual_mul_f32 v18, v18, v144
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v27, s80, v27
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s6, 0, v44.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s35, s10, s1
	s_and_b32 s26, s11, s2
	s_and_b32 s27, s12, s4
	s_and_b32 s25, s16, s8
	s_and_b32 s28, s13, s5
	s_and_b32 s31, s17, s9
	s_and_b32 s33, s15, s7
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v21, v21, v141 :: v_dual_mul_f32 v22, v22, v140
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v29, s80, v29 :: v_dual_mul_f32 v34, s80, v34
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v31, v31, v147 :: v_dual_mul_f32 v136, v10, v136
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v32, s80, v32 :: v_dual_mul_f32 v141, s80, v19
	v_dual_mul_f32 v139, s80, v17 :: v_dual_mul_f32 v140, s80, v18
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v17, 0, 1, s35
	v_cndmask_b32_e64 v18, 0, 1, s26
	v_cndmask_b32_e64 v10, 0, 1, s27
	v_cndmask_b32_e64 v9, 0, 1, s25
	v_cndmask_b32_e64 v13, 0, 1, s28
	v_cndmask_b32_e64 v11, 0, 1, s31
	v_cndmask_b32_e64 v19, 0, 1, s33
	s_and_b32 s30, s14, s6
	v_lshlrev_b16 v9.l, 8, v9.l
	v_cndmask_b32_e64 v12, 0, 1, s30
	v_lshlrev_b16 v9.h, 8, v10.l
	v_mov_b16_e32 v10.l, v17.l
	v_lshlrev_b16 v10.h, 8, v11.l
	v_mov_b16_e32 v11.l, v19.l
	v_lshlrev_b16 v11.h, 8, v13.l
	v_mov_b16_e32 v13.l, v18.l
	v_or_b16 v12.h, v12.l, v9.l
	v_or_b16 v12.l, v10.l, v9.h
	v_add_nc_u32_e32 v9, 0, v63
	v_or_b16 v10.h, v11.l, v10.h
	v_or_b16 v10.l, v13.l, v11.h
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v42, s80, v21 :: v_dual_add_nc_u32 v11, 0, v76
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	ds_store_b32 v94, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v11
	ds_load_b32 v12, v105
	ds_load_b32 v13, v106
	ds_load_b32 v17, v107
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v41, s80, v20 :: v_dual_mul_f32 v44, s80, v22
	v_dual_mul_f32 v143, s80, v15 :: v_dual_mul_f32 v144, s80, v16
	.loc	1 681 25                        ; attention.py:681:25
	ds_load_b32 v15, v108
	ds_load_b32 v19, v109
	ds_load_b32 v20, v110
	ds_load_b32 v21, v111
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v133, s80, v133 :: v_dual_mul_f32 v142, s80, v14
	v_dual_mul_f32 v130, s80, v23 :: v_dual_mul_f32 v131, s80, v24
	v_dual_mul_f32 v135, s80, v135 :: v_dual_mul_f32 v134, s80, v134
	v_mul_f32_e32 v31, s80, v31
	v_dual_mul_f32 v137, s80, v137 :: v_dual_mul_f32 v136, s80, v136
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 681 25                        ; attention.py:681:25
	v_lshrrev_b16 v9.l, 8, v11.l
	v_lshrrev_b16 v9.h, 8, v12.l
	v_and_b32_e32 v16, 0x1000000, v11
	v_and_b32_e32 v23, 0x10000, v11
	v_and_b32_e32 v11, 1, v11
	v_and_b16 v10.l, 1, v9.l
	v_and_b16 v14.l, 1, v9.h
	v_lshrrev_b16 v9.l, 8, v13.l
	v_lshrrev_b16 v9.h, 8, v17.l
	v_and_b32_e32 v145, 0x10000, v12
	v_and_b32_e32 v149, 1, v13
	v_and_b32_e32 v157, 0x10000, v19
	v_and_b16 v18.l, 1, v9.l
	v_and_b16 v22.l, 1, v9.h
	v_lshrrev_b16 v9.l, 8, v15.l
	v_lshrrev_b16 v9.h, 8, v19.l
	v_and_b32_e32 v159, 0x1000000, v20
	v_and_b32_e32 v162, 0x1000000, v21
	v_and_b32_e32 v163, 0x10000, v21
	v_and_b32_e32 v164, 1, v21
	v_and_b16 v25.l, 1, v9.l
	v_and_b16 v25.h, 1, v9.h
	v_lshrrev_b16 v9.l, 8, v20.l
	v_lshrrev_b16 v9.h, 8, v21.l
	v_cmp_eq_u32_e64 s42, 1, v11
	v_cmp_eq_u16_e64 s43, 1, v10.l
	v_cmp_ne_u32_e64 s36, 0, v145
	v_cmp_eq_u32_e64 s29, 1, v149
	v_cmp_ne_u32_e64 s11, 0, v157
	v_cmp_ne_u32_e64 s8, 0, v159
	v_cmp_eq_u32_e64 s6, 1, v164
	v_cmp_ne_u32_e64 s1, 0, v163
	v_cmp_ne_u32_e64 s4, 0, v162
	v_and_b32_e32 v146, 1, v12
	v_and_b32_e32 v147, 0x1000000, v13
	v_and_b32_e32 v152, 1, v17
	v_and_b32_e32 v154, 0x10000, v15
	v_and_b32_e32 v155, 1, v15
	v_and_b16 v26.l, 1, v9.l
	v_and_b16 v26.h, 1, v9.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v9, 0xff800000, v33, s42
	v_cndmask_b32_e64 v10, 0xff800000, v34, s43
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v151, 0x10000, v17
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v34, 0xff800000, v130, s11
	v_cndmask_b32_e64 v130, 0xff800000, v133, s6
	v_cndmask_b32_e64 v133, 0xff800000, v144, s4
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v153, 0x1000000, v15
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v15, 0xff800000, v39, s36
	v_cndmask_b32_e64 v39, 0xff800000, v134, s8
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v150, 0x1000000, v17
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v17, 0xff800000, v132, s29
	v_cndmask_b32_e64 v132, 0xff800000, v143, s1
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v24, 0x1000000, v12
	v_and_b32_e32 v156, 0x1000000, v19
	v_and_b32_e32 v158, 1, v19
	v_and_b32_e32 v148, 0x10000, v13
	v_and_b32_e32 v160, 0x10000, v20
	v_and_b32_e32 v161, 1, v20
	v_cmp_ne_u32_e64 s40, 0, v23
	v_cmp_ne_u32_e64 s41, 0, v16
	v_cmp_eq_u32_e64 s39, 1, v146
	v_cmp_ne_u32_e64 s24, 0, v147
	v_cmp_eq_u32_e64 s21, 1, v152
	v_cmp_eq_u16_e64 s22, 1, v22.l
	v_cmp_ne_u32_e64 s19, 0, v151
	v_cmp_eq_u32_e64 s17, 1, v155
	v_cmp_eq_u16_e64 s18, 1, v25.l
	v_cmp_ne_u32_e64 s16, 0, v154
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v146, v132, v133
.Ltmp4:
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_ne_u32_e64 s15, 0, v153
	v_cmp_eq_u16_e64 s38, 1, v14.l
	v_cmp_ne_u32_e64 s37, 0, v24
	v_cmp_eq_u32_e64 s13, 1, v158
	v_cmp_eq_u16_e64 s14, 1, v25.h
	v_cmp_ne_u32_e64 s12, 0, v156
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v145, v39, v130
.Ltmp6:
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_ne_u32_e64 s20, 0, v150
	v_cmp_eq_u16_e64 s34, 1, v18.l
	v_cmp_ne_u32_e64 s23, 0, v148
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v11, 0xff800000, v35, s40
	v_cndmask_b32_e64 v12, 0xff800000, v36, s41
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s10, 1, v161
	v_cmp_eq_u16_e64 s9, 1, v26.l
	v_cmp_ne_u32_e64 s7, 0, v160
	v_cmp_eq_u16_e64 s5, 1, v26.h
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v25, 0, v93
	v_cndmask_b32_e64 v20, 0xff800000, v28, s24
	v_cndmask_b32_e64 v21, 0xff800000, v29, s21
	v_cndmask_b32_e64 v22, 0xff800000, v30, s22
	v_cndmask_b32_e64 v23, 0xff800000, v31, s19
	v_cndmask_b32_e64 v28, 0xff800000, v139, s17
	v_cndmask_b32_e64 v29, 0xff800000, v140, s18
	v_cndmask_b32_e64 v30, 0xff800000, v141, s16
	v_cndmask_b32_e64 v31, 0xff800000, v41, s15
	v_cndmask_b32_e64 v13, 0xff800000, v37, s39
	v_cndmask_b32_e64 v14, 0xff800000, v38, s38
	v_cndmask_b32_e64 v16, 0xff800000, v40, s37
	v_cndmask_b32_e64 v24, 0xff800000, v32, s20
	v_cndmask_b32_e64 v32, 0xff800000, v42, s13
	v_cndmask_b32_e64 v33, 0xff800000, v44, s14
	v_cndmask_b32_e64 v35, 0xff800000, v131, s12
	v_cndmask_b32_e64 v18, 0xff800000, v138, s34
	v_cndmask_b32_e64 v19, 0xff800000, v27, s23
	v_cndmask_b32_e64 v36, 0xff800000, v137, s10
	v_cndmask_b32_e64 v37, 0xff800000, v136, s9
	v_cndmask_b32_e64 v38, 0xff800000, v135, s7
	v_cndmask_b32_e64 v131, 0xff800000, v142, s5
	ds_store_b128 v25, v[9:12]
	ds_store_b128 v25, v[28:31] offset:512
	ds_store_b128 v112, v[13:16]
	ds_store_b128 v112, v[32:35] offset:512
	ds_store_b128 v113, v[17:20]
	ds_store_b128 v113, v[36:39] offset:512
	ds_store_b128 v114, v[21:24]
	ds_store_b128 v114, v[130:133] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[134:137], v115 offset:256
	ds_load_b128 v[138:141], v115
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v41, v18, v19, v20
	v_max3_f32 v42, v21, v22, v23
	v_max3_f32 v44, v24, v28, v29
	v_max3_f32 v142, v30, v31, v32
	v_max3_f32 v143, v33, v34, v35
	v_max3_f32 v144, v36, v37, v38
.Ltmp8:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v128
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s73, s73, 64
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s73, s74
	.loc	1 681 25                        ; attention.py:681:25
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v25, v137, v137
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v26, v141, v141
	v_max3_f32 v27, v138, v134, v139
	v_max3_f32 v40, v135, v140, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v25, v26, v25
	v_max3_f32 v25, v27, v40, v25
	v_max3_f32 v27, v12, v13, v14
	v_max3_f32 v40, v15, v16, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v26, v25
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v26, v25
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v25, v25, v26
	v_max_f32_e32 v26, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v26, v26, v11, v27
	v_max3_f32 v27, v41, v42, v44
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v41, v25
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v42, v142, v143, v144
	v_max3_f32 v44, v145, v131, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v26, v26, v40, v27
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v26, v26, v42, v44
	v_dual_max_f32 v27, v41, v41 :: v_dual_max_f32 v42, v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v40, v26, s79, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v27, v25, v27
.Ltmp20:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v25, v129, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v26, v128, v26, v40
	v_max_f32_e32 v64, v42, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v25, v25, v27 :: v_dual_sub_f32 v40, v128, v26
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v42, v134, v64 :: v_dual_sub_f32 v41, v129, v25
	v_sub_f32_e32 v128, v135, v64
	v_sub_f32_e32 v134, v136, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v40, v40
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v136, v137, v64 :: v_dual_sub_f32 v143, v15, v26
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v41, v41
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v137, v9, v26 :: v_dual_sub_f32 v44, v139, v64
	v_sub_f32_e32 v135, v141, v64
	v_sub_f32_e32 v139, v11, v26
	v_sub_f32_e32 v146, v18, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v40, 0, v40, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v129
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v129, v140, v64 :: v_dual_sub_f32 v142, v14, v26
	v_sub_f32_e32 v140, v12, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v12, v44
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v27, 0, v41, s2
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v138, v64
	v_sub_f32_e32 v138, v10, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v14, v129
	v_exp_f32_e32 v15, v134
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v6, v6, v40
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v41
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v28, v28, v26 :: v_dual_mul_f32 v5, v5, v40
	v_dual_sub_f32 v148, v20, v26 :: v_dual_mul_f32 v1, v1, v40
	v_dual_sub_f32 v152, v24, v26 :: v_dual_mul_f32 v3, v3, v40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v14, s30
	v_cndmask_b32_e64 v42, 0, v15, s33
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v29, v29, v26 :: v_dual_mul_f32 v2, v2, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v9, s35
	v_mad_u64_u32 v[9:10], null, s82, s45, v[47:48]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v144, v16, v26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v16, v135
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v11, s26
	v_cndmask_b32_e64 v11, 0, v12, s27
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v141, v13, v26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v128
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v42
	v_add_f32_e32 v129, v18, v10
.Ltmp22:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v14, v9, s76, 1
	v_add_lshl_u32 v15, v9, s77, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v30, v30, v26 :: v_dual_mul_f32 v7, v7, v40
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v16, s25
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v145, v17, v26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v136
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v12, 0, v13, s28
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v136, v142
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_lshlrev_b32_e32 v13, 1, v9
	v_add_lshl_u32 v9, v9, s78, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v31, v31, v26 :: v_dual_mul_f32 v4, v4, v40
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v134, v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp24:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v10, 0x80000000, v13, s0
	v_cndmask_b32_e64 v13, 0x80000000, v14, s0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v17, s31
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v17, 0x80000000, v15, s0
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v33, v33, v26 :: v_dual_mul_f32 v8, v8, v40
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v135, v141
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v42, v44, v128
	v_add_f32_e32 v44, v129, v134
.Ltmp26:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v134, v140
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v128, v132, v26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v132, v138
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp28:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v130, v26
	v_sub_f32_e32 v129, v133, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v133, v139
	v_exp_f32_e32 v138, v144
.Ltmp29:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v44, v41
.Ltmp30:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v147, v19, v26
	v_sub_f32_e32 v44, v131, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v131, v137
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v134, s41
.Ltmp31:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v130, v41
.Ltmp32:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v140, v147
	v_exp_f32_e32 v147, v28
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v133, 0, v133, s40
	v_cndmask_b32_e64 v136, 0, v136, s38
.Ltmp33:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v130, v130 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v137, v143
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s25, v40, v40
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v131, 0, v131, s42
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v139, v146
.Ltmp35:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v130
.Ltmp36:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v151, v23, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v130, v145
	v_exp_f32_e32 v141, v148
	v_exp_f32_e32 v146, v152
.Ltmp37:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v142, v41
.Ltmp38:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v137, s36
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v145, v151
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v30, v30
.Ltmp39:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v142, v142 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v31, v31
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v130, 0, v130, s29
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp41:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v28, v41, v142
.Ltmp42:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v150, v22, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v142.l, v131.h
	v_mov_b16_e64 v142.h, v43.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s18
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v41, v28
.Ltmp44:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v144, v150
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v30, 0, v30, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v134, 1, v142
	v_mov_b16_e64 v142.l, v133.h
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v149, v21, v26
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v21, 0x80000000, v9, s0
	s_clause 0x3
	buffer_load_b128 v[9:12], v10, s[68:71], 0 offen
	buffer_load_b128 v[13:16], v13, s[68:71], 0 offen
	buffer_load_b128 v[17:20], v17, s[68:71], 0 offen
	buffer_load_b128 v[21:24], v21, s[68:71], 0 offen
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v28, v28, v41
.Ltmp48:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v132, s43
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v132.h, v43.l
	v_add3_u32 v134, v131, v134, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v143, v149
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v28, v78, v27
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v132.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v31, 0, v31, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v29, v29
	v_mov_b32_e32 v78, v28
	v_and_b32_e32 v132, 1, v132
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s14
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v132, v41, v132, 0x7fff
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e32 v41.h, v43.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v32, v32, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v132.h, 0x7fff, v132.h, s2
	v_cmp_o_f32_e64 s2, v131, v131
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v41, 1, v41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v131, 0, v135, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v135, 1, v142
	v_mov_b16_e64 v142.l, v136.h
	v_cndmask_b16 v132.l, 0x7fff, v134.h, s2
	v_add3_u32 v41, v40, v41, 0x7fff
	v_mov_b16_e64 v40.l, v131.h
	v_mov_b16_e32 v40.h, v43.l
	v_add3_u32 v134, v133, v135, 0x7fff
	v_and_b32_e32 v135, 1, v142
	v_cmp_o_f32_e64 s2, v133, v133
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v133, 0, v138, s37
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v35, v35, v26 :: v_dual_and_b32 v40, 1, v40
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s25
	v_add3_u32 v135, v136, v135, 0x7fff
	v_cmp_o_f32_e64 s25, v136, v136
	v_mov_b16_e64 v136.l, v133.h
	v_mov_b16_e64 v136.h, v43.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v34, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v40, v131, v40, 0x7fff
	v_mov_b16_e64 v138.l, v137.h
	v_mov_b16_e64 v138.h, v43.l
	v_cmp_o_f32_e64 s26, v131, v131
	v_and_b32_e32 v131, 1, v136
	v_cndmask_b16 v41.l, 0x7fff, v134.h, s2
	v_cndmask_b16 v134.h, 0x7fff, v135.h, s25
	v_and_b32_e32 v135, 1, v138
	v_cndmask_b16 v134.l, 0x7fff, v40.h, s26
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v139, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v131, v133, v131, 0x7fff
	v_cmp_o_f32_e64 s2, v133, v133
	v_add3_u32 v133, v137, v135, 0x7fff
	v_mov_b16_e64 v135.h, v43.l
	v_mov_b16_e64 v135.l, v40.h
	v_mov_b16_e64 v136.l, v130.h
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s2
	v_cmp_o_f32_e64 s2, v137, v137
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v141, s24
	v_cndmask_b32_e64 v138, 0, v140, s23
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v36, v36, v26 :: v_dual_and_b32 v135, 1, v135
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v131.l, 0x7fff, v133.h, s2
	v_and_b32_e32 v133, 1, v136
	v_mov_b16_e64 v136.l, v137.h
	v_mov_b16_e64 v139.l, v138.h
	v_mov_b16_e64 v139.h, v43.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v135, v40, v135, 0x7fff
	v_cmp_o_f32_e64 s2, v40, v40
	v_add3_u32 v40, v130, v133, 0x7fff
	v_cmp_o_f32_e64 s23, v130, v130
	v_and_b32_e32 v130, 1, v139
	v_and_b32_e32 v133, 1, v136
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v144, s22
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v135.h, 0x7fff, v135.h, s2
	v_cndmask_b16 v135.l, 0x7fff, v40.h, s23
	v_add3_u32 v40, v138, v130, 0x7fff
	v_add3_u32 v130, v137, v133, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v133, 0, v143, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v139.l, v136.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v137, v137
	v_cmp_o_f32_e64 s21, v138, v138
	v_mov_b16_e64 v137.l, v133.h
	v_mov_b16_e64 v137.h, v43.l
	v_and_b32_e32 v138, 1, v139
	v_cndmask_b16 v130.h, 0x7fff, v130.h, s2
	v_cndmask_b16 v130.l, 0x7fff, v40.h, s21
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v146, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v137, 1, v137
	v_add3_u32 v138, v136, v138, 0x7fff
	v_cmp_o_f32_e64 s2, v136, v136
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v145, s19
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v139.l, v40.h
	v_add3_u32 v137, v133, v137, 0x7fff
	v_mov_b16_e64 v140.h, v43.l
	v_cndmask_b16 v138.h, 0x7fff, v138.h, s2
	v_mov_b16_e64 v140.l, v136.h
	v_cmp_o_f32_e64 s2, v133, v133
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v133, 0, v147, s17
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v39, v39, v26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v139, 1, v139
	v_and_b32_e32 v140, 1, v140
	v_mov_b16_e64 v141.h, v43.l
	v_mov_b16_e64 v141.l, v133.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v32, v32
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v139, v40, v139, 0x7fff
	v_cmp_o_f32_e64 s17, v40, v40
	v_mov_b16_e32 v40.l, v29.h
	v_mov_b16_e32 v40.h, v43.l
	v_cndmask_b16 v138.l, 0x7fff, v137.h, s2
	v_add3_u32 v137, v136, v140, 0x7fff
	v_and_b32_e32 v140, 1, v141
	v_cmp_o_f32_e64 s2, v136, v136
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e64 v141.l, v31.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v136, v133, v140, 0x7fff
	v_mov_b16_e64 v140.l, v30.h
	v_mov_b16_e64 v140.h, v43.l
	v_add3_u32 v40, v29, v40, 0x7fff
	v_cmp_o_f32_e64 s16, v133, v133
	v_and_b32_e32 v133, 1, v141
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v32, 0, v32, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v29, 1, v140
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v139.l, 0x7fff, v137.h, s2
	v_add3_u32 v133, v31, v133, 0x7fff
	v_cmp_o_f32_e64 s2, v31, v31
	v_add3_u32 v29, v30, v29, 0x7fff
	v_cmp_o_f32_e64 s13, v30, v30
	v_mov_b16_e32 v30.l, v33.h
	v_mov_b16_e32 v30.h, v43.l
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e32 v31.h, v43.l
	v_cndmask_b16 v133.l, 0x7fff, v29.h, s13
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v29, 1, v30
	v_cndmask_b16 v133.h, 0x7fff, v133.h, s2
	v_and_b32_e32 v30, 1, v31
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v31, 0, v34, s11
	v_cndmask_b32_e64 v35, 0, v35, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v29, v33, v29, 0x7fff
	v_cmp_o_f32_e64 s2, v33, v33
	v_mov_b16_e32 v33.h, v43.l
	v_mov_b16_e32 v33.l, v31.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v34.h, v43.l
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s11, v32, v32
	v_cndmask_b16 v152.h, 0x7fff, v29.h, s2
	v_and_b32_e32 v29, 1, v33
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e64 s2, v35, v35
	v_cndmask_b16 v152.l, 0x7fff, v30.h, s11
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v30, 0, v36, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s10, v31, v31
	v_add3_u32 v32, v35, v34, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v31, 0, v37, s9
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v42, v42
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v153.l, 0x7fff, v29.h, s10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v39, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v153.h, 0x7fff, v32.h, s2
	v_mov_b16_e32 v32.l, v30.h
	v_mov_b16_e32 v32.h, v43.l
	v_mov_b16_e32 v33.l, v31.h
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v35.h, v43.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v129, v129
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v32, 1, v32
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v35, 1, v35
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v38, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v31, v31
	v_add3_u32 v32, v30, v32, 0x7fff
	v_add3_u32 v33, v31, v33, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_add3_u32 v31, v29, v35, 0x7fff
	v_cmp_o_f32_e64 s8, v29, v29
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v42, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v36.l, v34.h
	v_mov_b16_e32 v36.h, v43.l
	v_cndmask_b16 v154.h, 0x7fff, v33.h, s2
	v_cndmask_b16 v154.l, 0x7fff, v32.h, s7
	v_cndmask_b16 v155.h, 0x7fff, v31.h, s8
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v31, 0, v44, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v32.h, v43.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v129, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v30, 1, v36
	v_mov_b16_e32 v36.l, v31.h
	v_mov_b16_e32 v37.h, v43.l
	v_and_b32_e32 v32, 1, v32
	v_mov_b16_e32 v37.l, v33.h
	v_cmp_o_f32_e64 s4, v29, v29
	v_and_b32_e32 v36, 1, v36
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v128, v128
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v32, v29, v32, 0x7fff
	v_and_b32_e32 v37, 1, v37
	v_cmp_o_f32_e64 s2, v31, v31
	v_add3_u32 v36, v31, v36, 0x7fff
	v_cmp_o_f32_e64 s5, v33, v33
	v_cndmask_b16 v156.l, 0x7fff, v32.h, s4
	v_add3_u32 v31, v33, v37, 0x7fff
	v_permlanex16_b32 v32, v41, s79, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v38.h, v43.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v128, s1
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s17
	v_cndmask_b16 v157.h, 0x7fff, v31.h, s5
	v_perm_b32 v31, v32, v41, v116
	v_perm_b32 v32, v32, v41, v125
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v41, 0, v62
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[13:16] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[17:20] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[21:24] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v77
	ds_load_u16_d16 v10, v77 offset:256
	ds_load_u16_d16 v11, v77 offset:512
	ds_load_u16_d16 v12, v77 offset:768
	ds_load_u16_d16 v13, v77 offset:1024
	ds_load_u16_d16 v14, v77 offset:1280
	ds_load_u16_d16 v15, v77 offset:1536
	ds_load_u16_d16 v16, v77 offset:1792
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v38.l, v35.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v136.h, s16
	v_add3_u32 v30, v34, v30, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	v_and_b32_e32 v34, 1, v38
	v_cmp_o_f32_e64 s6, v35, v35
	v_cndmask_b16 v156.h, 0x7fff, v36.h, s2
	v_permlanex16_b32 v36, v131, s79, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v155.l, 0x7fff, v30.h, s1
	v_add3_u32 v29, v35, v34, 0x7fff
	v_permlanex16_b32 v30, v132, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v134, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v135, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v130, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v138, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v139, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v40, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v133, s79, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v157.l, 0x7fff, v29.h, s6
	v_perm_b32 v29, v30, v132, v116
	v_perm_b32 v30, v30, v132, v125
	v_perm_b32 v33, v34, v134, v116
	v_perm_b32 v34, v34, v134, v125
	v_perm_b32 v35, v36, v131, v116
	v_perm_b32 v36, v36, v131, v125
	v_perm_b32 v17, v37, v135, v116
	v_perm_b32 v18, v37, v135, v125
	v_perm_b32 v19, v38, v130, v116
	v_perm_b32 v20, v38, v130, v125
	v_perm_b32 v21, v39, v138, v116
	v_perm_b32 v22, v39, v138, v125
	v_perm_b32 v23, v42, v139, v116
	v_perm_b32 v24, v42, v139, v125
	v_perm_b32 v37, v43, v40, v116
	v_perm_b32 v38, v43, v40, v125
	v_perm_b32 v39, v44, v133, v116
	v_perm_b32 v40, v44, v133, v125
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v9, v77 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v10, v77 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v11, v77 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v12, v77 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v13, v77 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v14, v77 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v15, v77 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v16, v77 offset:1920
	ds_load_u16_d16 v128, v77 offset:2048
	ds_load_u16_d16 v129, v77 offset:2304
	ds_load_u16_d16 v130, v77 offset:2560
	ds_load_u16_d16 v131, v77 offset:2816
	ds_load_u16_d16 v132, v77 offset:3072
	ds_load_u16_d16 v133, v77 offset:3328
	ds_load_u16_d16 v134, v77 offset:3584
	ds_load_u16_d16 v135, v77 offset:3840
	ds_load_u16_d16 v136, v77 offset:4096
	ds_load_u16_d16 v137, v77 offset:4352
	ds_load_u16_d16 v138, v77 offset:4608
	ds_load_u16_d16 v139, v77 offset:4864
	ds_load_u16_d16 v140, v77 offset:5120
	ds_load_u16_d16 v141, v77 offset:5376
	ds_load_u16_d16 v142, v77 offset:5632
	ds_load_u16_d16 v143, v77 offset:5888
	ds_load_u16_d16 v144, v77 offset:6144
	ds_load_u16_d16 v145, v77 offset:6400
	ds_load_u16_d16 v146, v77 offset:6656
	ds_load_u16_d16 v147, v77 offset:6912
	ds_load_u16_d16 v148, v77 offset:7168
	ds_load_u16_d16 v149, v77 offset:7424
	ds_load_u16_d16 v150, v77 offset:7680
	ds_load_u16_d16 v151, v77 offset:7936
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v128, v77 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v129, v77 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v130, v77 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v131, v77 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v132, v77 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v133, v77 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v134, v77 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v135, v77 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v77 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v77 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v138, v77 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v139, v77 offset:4992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v140, v77 offset:5248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v141, v77 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v142, v77 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v143, v77 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v144, v77 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v145, v77 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v146, v77 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v147, v77 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v148, v77 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v149, v77 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v150, v77 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v151, v77 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v158, v152, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v159, v153, s79, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[29:36], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v160, v154, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v155, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v162, v156, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v163, v157, s79, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v158, v152, v116
	v_perm_b32 v42, v158, v152, v125
	v_perm_b32 v43, v159, v153, v116
	v_perm_b32 v44, v159, v153, v125
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[128:135], v[17:24], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v9, v160, v154, v116
	v_perm_b32 v10, v160, v154, v125
	v_perm_b32 v11, v161, v155, v116
	v_perm_b32 v12, v161, v155, v125
	v_perm_b32 v13, v162, v156, v116
	v_perm_b32 v14, v162, v156, v125
	v_perm_b32 v15, v163, v157, v116
	v_perm_b32 v16, v163, v157, v125
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[136:143], v[37:44], v[1:8]
	v_dual_mov_b32 v128, v26 :: v_dual_mov_b32 v129, v25
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[144:151], v[9:16], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc0 .LBB0_23
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v9, 1, v0
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s82, s73, s75
	v_or_b32_e32 v15, 2, v75
	v_or_b32_e32 v16, 4, v75
	v_or_b32_e32 v17, 6, v75
	v_or_b32_e32 v9, s82, v9
	v_or_b32_e32 v18, 8, v75
	.loc	1 634 32                        ; attention.py:634:32
	v_add_nc_u32_e32 v13, 0, v74
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v14, s73, v75, 1
	v_or_b32_e32 v19, 10, v75
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[9:10], null, v9, s72, v[46:47]
	v_or_b32_e32 v20, 12, v75
	v_or_b32_e32 v21, 14, v75
	v_or_b32_e32 v22, 16, v75
	v_or_b32_e32 v23, 18, v75
	v_or_b32_e32 v24, 20, v75
	v_or_b32_e32 v25, 22, v75
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v15, v15, s73, 1
	v_add_lshl_u32 v16, v16, s73, 1
	v_add_lshl_u32 v17, v17, s73, 1
	v_add_lshl_u32 v161, v127, s73, 1
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[9:12], v9, s[60:63], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v18, v18, s73, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v169, s55 :: v_dual_mov_b32 v166, s52
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v26, v80, s73, 1
	v_add_lshl_u32 v27, v81, s73, 1
	v_add_lshl_u32 v28, v82, s73, 1
	v_add_lshl_u32 v29, v83, s73, 1
	v_add_lshl_u32 v30, v84, s73, 1
	v_add_lshl_u32 v31, v85, s73, 1
	v_add_lshl_u32 v32, v86, s73, 1
	v_add_lshl_u32 v33, v87, s73, 1
	v_add_lshl_u32 v34, v88, s73, 1
	v_add_lshl_u32 v35, v89, s73, 1
	v_add_lshl_u32 v36, v90, s73, 1
	v_add_lshl_u32 v37, v91, s73, 1
	v_add_lshl_u32 v38, v92, s73, 1
	v_add_lshl_u32 v39, v95, s73, 1
	v_add_lshl_u32 v40, v96, s73, 1
	v_add_lshl_u32 v41, v97, s73, 1
	v_add_lshl_u32 v42, v98, s73, 1
	v_add_lshl_u32 v43, v99, s73, 1
	v_add_lshl_u32 v44, v100, s73, 1
	v_add_lshl_u32 v19, v19, s73, 1
	v_add_lshl_u32 v20, v20, s73, 1
	v_add_lshl_u32 v21, v21, s73, 1
	v_add_lshl_u32 v22, v22, s73, 1
	v_add_lshl_u32 v23, v23, s73, 1
	v_add_lshl_u32 v24, v24, s73, 1
	v_add_lshl_u32 v25, v25, s73, 1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v168, s54 :: v_dual_mov_b32 v167, s53
	v_dual_mov_b32 v164, s50 :: v_dual_mov_b32 v165, s51
	v_dual_mov_b32 v162, s48 :: v_dual_mov_b32 v163, s49
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s4, s81, s73
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v13, v[9:10]
	ds_store_b64 v104, v[11:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v160, v14, s[64:67], 0 offen
	buffer_load_u16 v159, v15, s[64:67], 0 offen
	buffer_load_u16 v158, v16, s[64:67], 0 offen
	buffer_load_u16 v157, v17, s[64:67], 0 offen
	buffer_load_u16 v156, v18, s[64:67], 0 offen
	buffer_load_u16 v155, v19, s[64:67], 0 offen
	buffer_load_u16 v154, v20, s[64:67], 0 offen
	buffer_load_u16 v153, v21, s[64:67], 0 offen
	buffer_load_u16 v152, v22, s[64:67], 0 offen
	buffer_load_u16 v151, v23, s[64:67], 0 offen
	buffer_load_u16 v150, v24, s[64:67], 0 offen
	buffer_load_u16 v149, v25, s[64:67], 0 offen
	buffer_load_u16 v148, v26, s[64:67], 0 offen
	buffer_load_u16 v147, v27, s[64:67], 0 offen
	buffer_load_u16 v146, v28, s[64:67], 0 offen
	buffer_load_u16 v145, v29, s[64:67], 0 offen
	buffer_load_u16 v144, v30, s[64:67], 0 offen
	buffer_load_u16 v143, v31, s[64:67], 0 offen
	buffer_load_u16 v142, v32, s[64:67], 0 offen
	buffer_load_u16 v141, v33, s[64:67], 0 offen
	buffer_load_u16 v140, v34, s[64:67], 0 offen
	buffer_load_u16 v139, v35, s[64:67], 0 offen
	buffer_load_u16 v138, v36, s[64:67], 0 offen
	buffer_load_u16 v137, v37, s[64:67], 0 offen
	buffer_load_u16 v136, v38, s[64:67], 0 offen
	buffer_load_u16 v135, v39, s[64:67], 0 offen
	buffer_load_u16 v134, v40, s[64:67], 0 offen
	buffer_load_u16 v133, v41, s[64:67], 0 offen
	buffer_load_u16 v132, v42, s[64:67], 0 offen
	buffer_load_u16 v131, v43, s[64:67], 0 offen
	buffer_load_u16 v130, v44, s[64:67], 0 offen
	buffer_load_u16 v161, v161, s[64:67], 0 offen
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v79 offset1:1
	ds_load_2addr_stride64_b64 v[41:44], v79 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[170:173], v101 offset1:1
	ds_load_2addr_stride64_b64 v[174:177], v101 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[178:181], v102 offset1:1
	ds_load_2addr_stride64_b64 v[182:185], v102 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[186:189], v103 offset1:1
	ds_load_2addr_stride64_b64 v[190:193], v103 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[48:49], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[11:12], v[48:49], v[162:169] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[48:49], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[48:49], v[162:169] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[50:51], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[172:173], v[50:51], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[174:175], v[50:51], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[176:177], v[50:51], v[9:16] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s73, v45
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[178:179], v[52:53], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[180:181], v[52:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[182:183], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[52:53], v[9:16] neg_lo:[1,1,0]
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v41, v72
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v41, v73
	v_mov_b16_e32 v41.h, 0
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[186:187], v[54:55], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[54:55], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[190:191], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[192:193], v[54:55], v[9:16] neg_lo:[1,1,0]
	v_mov_b16_e32 v42.l, v41.h
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s10, s44, s1
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s2, s10
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v42, s4, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s1, s46, v42
	v_add_co_ci_u32_e64 v43, null, s47, v43, s1
	.loc	1 681 34                        ; attention.py:681:34
	global_load_d16_u8 v42, v[42:43], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v43, s73, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v43, v72
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v43, v73
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_and_b32 s11, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s11
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v41, s4, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v44, 31, v41
	v_add_co_u32 v43, s1, s46, v41
	v_add_co_ci_u32_e64 v44, null, s47, v44, s1
	global_load_d16_hi_u8 v41, v[43:44], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s73, v66
	v_mov_b16_e32 v43.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v44, v72
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v44, v73
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v42.h, v43.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s44, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s12
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v44, s4, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v163, 31, v44
	v_add_co_u32 v162, s1, s46, v44
	v_add_co_ci_u32_e64 v163, null, s47, v163, s1
	global_load_d16_hi_u8 v42, v[162:163], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s73, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v44, v72
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v44, v73
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_and_b32 s13, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s13
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s4, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, s1, s46, v43
	v_add_co_ci_u32_e64 v44, null, s47, v44, s1
	global_load_d16_u8 v43, v[43:44], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s73, v68
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v44, v72
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v44, v73
	v_mov_b16_e32 v44.l, v43.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s44, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s14
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v44, s4, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v163, 31, v44
	v_add_co_u32 v162, s1, s46, v44
	v_add_co_ci_u32_e64 v163, null, s47, v163, s1
	global_load_d16_u8 v44, v[162:163], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v162, s73, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v162, v72
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v162, v73
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_and_b32 s15, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s15
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v162, s4, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v163, 31, v162
	v_add_co_u32 v162, s1, s46, v162
	v_add_co_ci_u32_e64 v163, null, s47, v163, s1
	global_load_d16_hi_u8 v43, v[162:163], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v162, s73, v70
	v_mov_b16_e32 v41.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v162, v72
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v162, v73
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v44.h, v41.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s44, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s16
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v162, s4, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v163, 31, v162
	v_add_co_u32 v162, s1, s46, v162
	v_add_co_ci_u32_e64 v163, null, s47, v163, s1
	global_load_d16_hi_u8 v44, v[162:163], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v162, s73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v162, v72
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v162, v73
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_and_b32 s17, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s17
	s_cbranch_execz .LBB0_5
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v162, s4, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v163, 31, v162
	v_add_co_u32 v162, s1, s46, v162
	v_add_co_ci_u32_e64 v163, null, s47, v163, s1
	global_load_d16_u8 v41, v[162:163], off
	s_branch .LBB0_5
.LBB0_22:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v25, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v28, v8
	s_branch .LBB0_24
.LBB0_23:                               ; %Flow
	v_mov_b32_e32 v9, v61
.LBB0_24:                               ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v59
	s_mov_b32 s1, 0x76543210
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp50:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s59, s59, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v10, 0xff800000, v25, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v12, 0, v28, vcc_lo
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v60
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s45, 2
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v11, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v9, 0, v9
.Ltmp52:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp54:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v15, v1 :: v_dual_add_f32 v12, v12, v13
	v_dual_mov_b32 v16, v2 :: v_dual_mov_b32 v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v11 :: v_dual_and_b32 v11, 12, v56
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v14, v10 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp60:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s58, s59
	.loc	1 822 30 is_stmt 0              ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v17 :: v_dual_add_f32 v2, v2, v16
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_add_f32 v1, v1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v8 :: v_dual_max_f32 v10, v10, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v1
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_cndmask_b32 v13, 0, v6
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp71:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_cndmask_b32 v12, 0, v5
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v7, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v4
	v_add_f32_e32 v4, v3, v5
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, v9
.Ltmp81:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v16, v4
.Ltmp82:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v10, v10
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v7, v7
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
.Ltmp88:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v9, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v2, v5 :: v_dual_max_f32 v8, v8, v10
.Ltmp90:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v9, v7 :: v_dual_mov_b32 v10, v8
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v4, v16
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp98:
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
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
.Ltmp102:
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
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v15, v20
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v15, v11 :: v_dual_add_f32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v20, v16
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v16, v20
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_26
; %bb.25:
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp111:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp113:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp115:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_26:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp116:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp117:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v56
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v57
.Ltmp119:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v57
	v_lshlrev_b32_e32 v2, 5, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp121:
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
.Ltmp122:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 194
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 194
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10892
; TotalNumSgprs: 85
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 85
; NumVGPRsForWavesPerEU: 194
; Occupancy: 7
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
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
	.quad	.Ltmp20-.Lfunc_begin0
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
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
