	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v48, 15, v0
	v_lshrrev_b32_e32 v9, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v2, 1, v48
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v43, 0xc0, v0
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v46, 31, v0
	v_and_b32_e32 v49, 0xf0, v0
	.loc	1 693 86                        ; attention.py:693:86
	v_and_b32_e32 v50, 7, v0
	v_lshrrev_b32_e32 v51, 3, v0
	v_lshlrev_b32_e32 v45, 2, v0
	v_lshlrev_b32_e32 v47, 5, v0
	s_mov_b32 s44, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s54
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s42, v2
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s18, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s54
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s12, s18, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s18, v9
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v3, s12, v9
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, v3, s42, v[2:3]
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v4, 3, v43
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v44, v4, 0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s54
	s_abs_i32 s4, s4
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_u16 v3, v3, s[56:59], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s17, s19
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, s18
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s19, s16
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s8
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s18
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 63
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s6, s41, s2
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s4, s4, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 26
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s6, s6, 6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s5, s7
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s6, s2
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s55, s6, s4
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s72, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s55, s72
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s18, v48
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s12, v48, 1
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_and_b32 v5, 24, v44
	v_and_b32_e32 v12, 30, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e64 s2, 1, v3
	v_and_b32_e32 v17, 16, v0
	v_lshrrev_b32_e32 v6, 1, v0
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_lshlrev_b32 v8, 1, v43
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_dual_mov_b32 v19, 0x5410 :: v_dual_add_nc_u32 v4, s19, v1
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v7, 0xe0, v0
	v_lshlrev_b32_e32 v15, 3, v46
	v_lshlrev_b32_e32 v25, 4, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v27, v48, 5, v5
	v_lshlrev_b32_e32 v30, 1, v12
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_lshlrev_b32_e32 v16, 3, v48
	buffer_load_u16 v10, v3, s[56:59], 0 offen
	.loc	1 693 86                        ; attention.py:693:86
	v_lshlrev_b32_e32 v3, 3, v50
	v_cmp_eq_u32_e64 s2, 0, v17
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 633 49                        ; attention.py:633:49
	v_lshlrev_b32_e32 v11, 3, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[23:24], null, s43, v51, v[3:4]
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v26, 0x60, v0
	v_dual_mov_b32 v17, v1 :: v_dual_and_b32 v28, 24, v6
	v_lshl_or_b32 v32, v46, 2, v8
	v_lshl_or_b32 v56, v48, 8, v15
	v_add_nc_u32_e32 v58, 0, v25
	v_mov_b32_e32 v6, v1
	v_lshrrev_b32_e32 v29, 3, v7
	v_lshrrev_b32_e32 v31, 4, v7
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v24, 16, v27
	v_xor_b32_e32 v25, 24, v27
	v_lshl_or_b32 v88, v46, 6, v30
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s0
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v54, s16, v4
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v55, s17, v4
	v_mov_b32_e32 v4, v1
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s43, v3
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v15, v49, 4, v16
	v_cndmask_b32_e64 v16, 0x1054, v19, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v19, 8, v27
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v21, 2, v48
	v_dual_mov_b32 v35, 0xff800000 :: v_dual_lshlrev_b32 v14, 6, v0
	v_lshrrev_b32_e32 v18, 1, v49
	v_add3_u32 v57, 0, v2, v26
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v22, 24, v11
	v_add_nc_u32_e32 v86, 0, v27
	v_xor_b32_e32 v11, v11, v28
	v_xor_b32_e32 v87, v45, v29
	v_xor_b32_e32 v89, v32, v31
	v_xor_b32_e32 v26, 32, v56
	v_xor_b32_e32 v27, 40, v56
	v_xor_b32_e32 v28, 48, v56
	v_xor_b32_e32 v29, 56, v56
	v_xor_b32_e32 v30, 64, v56
	v_xor_b32_e32 v31, 0x48, v56
	v_add_nc_u32_e32 v92, 0, v24
	v_add_nc_u32_e32 v93, 0, v25
	v_xor_b32_e32 v24, 8, v88
	v_xor_b32_e32 v25, 12, v88
	v_add_nc_u32_e32 v91, 0, v19
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v13, 0x380, v47
	v_and_b32_e32 v14, 64, v14
	v_xor_b32_e32 v15, v15, v18
	v_cndmask_b32_e64 v18, 0x3276, v20, s2
	v_add_nc_u32_e32 v98, 0, v26
	v_add_nc_u32_e32 v99, 0, v27
	v_add_nc_u32_e32 v100, 0, v28
	v_add_nc_u32_e32 v101, 0, v29
	v_add_nc_u32_e32 v102, 0, v30
	v_add_nc_u32_e32 v103, 0, v31
	v_add_nc_u32_e32 v113, 0, v24
	v_add_nc_u32_e32 v114, 0, v25
	ds_load_b64 v[24:25], v86
	ds_load_b64 v[26:27], v91
	ds_load_b64 v[28:29], v92
	ds_load_b64 v[30:31], v93
	v_or3_b32 v90, v14, v13, v12
	v_xor_b32_e32 v12, 8, v56
	v_lshl_or_b32 v16, v16, 8, v16
	v_lshl_or_b32 v18, v18, 8, v18
	v_xor_b32_e32 v32, 0x50, v56
	v_xor_b32_e32 v33, 0x58, v56
	v_add_nc_u32_e32 v95, 0, v12
	v_and_b32_e32 v16, 0x540054, v16
	v_and_b32_e32 v12, 0x760076, v18
	v_add_nc_u32_e32 v104, 0, v32
	v_add_nc_u32_e32 v105, 0, v33
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[32:33], null, s15, v9, v[21:22]
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s73, s3, 11
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s9, s1, -8
	v_and_or_b32 v52, v9, 1, s73
	v_or3_b32 v53, s73, v9, 62
	v_xor_b32_e32 v13, 16, v56
	v_xor_b32_e32 v14, 24, v56
	v_xor_b32_e32 v36, 0x60, v56
	v_xor_b32_e32 v37, 0x68, v56
	v_xor_b32_e32 v38, 0x70, v56
	v_xor_b32_e32 v39, 0x78, v56
	v_xor_b32_e32 v19, 0x420, v87
	v_xor_b32_e32 v20, 4, v88
	v_xor_b32_e32 v40, 16, v88
	v_xor_b32_e32 v41, 20, v88
	v_xor_b32_e32 v42, 24, v88
	v_xor_b32_e32 v118, 28, v88
	v_xor_b32_e32 v119, 32, v88
	v_xor_b32_e32 v120, 36, v88
	v_xor_b32_e32 v121, 40, v88
	v_xor_b32_e32 v122, 44, v88
	v_xor_b32_e32 v123, 48, v88
	v_xor_b32_e32 v124, 52, v88
	v_xor_b32_e32 v125, 56, v88
	v_xor_b32_e32 v126, 60, v88
	v_xor_b32_e32 v127, 0x210, v89
	v_xor_b32_e32 v128, 4, v90
	v_xor_b32_e32 v129, 8, v90
	v_xor_b32_e32 v130, 12, v90
	v_xor_b32_e32 v131, 16, v90
	v_xor_b32_e32 v132, 20, v90
	v_xor_b32_e32 v133, 24, v90
	v_xor_b32_e32 v134, 28, v90
	v_add_nc_u32_e32 v94, 0, v11
	v_lshl_or_b32 v11, v16, 4, v16
	v_lshl_or_b32 v9, v12, 4, v12
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s8, s1, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s9, s3, s9
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s13, s8
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s2, s14, s9
	v_or_b32_e32 v59, 8, v52
	v_or_b32_e32 v60, 10, v52
	v_or_b32_e32 v61, 12, v52
	v_or_b32_e32 v62, 14, v52
	v_or_b32_e32 v63, 16, v52
	v_or_b32_e32 v64, 18, v52
	v_or_b32_e32 v65, 20, v52
	v_or_b32_e32 v66, 22, v52
	v_or_b32_e32 v67, 24, v52
	v_or_b32_e32 v68, 26, v52
	v_or_b32_e32 v69, 28, v52
	v_or_b32_e32 v70, 30, v52
	v_or_b32_e32 v71, 32, v52
	v_or_b32_e32 v72, 34, v52
	v_or_b32_e32 v73, 36, v52
	v_or_b32_e32 v74, 38, v52
	v_or_b32_e32 v75, 40, v52
	v_or_b32_e32 v76, 42, v52
	v_or_b32_e32 v77, 44, v52
	v_or_b32_e32 v78, 46, v52
	v_or_b32_e32 v79, 48, v52
	v_or_b32_e32 v80, 50, v52
	v_or_b32_e32 v81, 52, v52
	v_or_b32_e32 v82, 54, v52
	v_or_b32_e32 v83, 56, v52
	v_or_b32_e32 v84, 58, v52
	v_or_b32_e32 v85, 60, v52
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e64 s1, s42, v22
	v_add_nc_u32_e32 v96, 0, v13
	v_add_nc_u32_e32 v97, 0, v14
	v_add_nc_u32_e32 v106, 0, v36
	v_add_nc_u32_e32 v107, 0, v37
	v_add_nc_u32_e32 v108, 0, v38
	v_add_nc_u32_e32 v109, 0, v39
	v_add_nc_u32_e32 v110, 0, v15
	v_add_nc_u32_e32 v111, 0, v19
	v_add_nc_u32_e32 v112, 0, v20
	v_add_nc_u32_e32 v115, 0, v40
	v_add_nc_u32_e32 v116, 0, v41
	v_add_nc_u32_e32 v117, 0, v42
	v_add_nc_u32_e32 v118, 0, v118
	v_add_nc_u32_e32 v119, 0, v119
	v_add_nc_u32_e32 v120, 0, v120
	v_add_nc_u32_e32 v121, 0, v121
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v134, 0, v134
	v_and_b32_e32 v135, 0x5040504, v11
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v136, 1, v32
	v_add_nc_u32_e32 v137, 2, v32
	v_and_b32_e32 v138, 0x7060706, v9
	v_add_nc_u32_e32 v140, 3, v32
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s76, s12, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s77, s2, s8
	s_lshl_b32 s74, s43, 5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s75, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	s_add_i32 s77, s77, s18
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v139, 16, v10
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v142, 2, v0
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s12, s55, s73
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v142, s12, v142
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[145:146], null, v142, s42, v[22:23]
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v173, 2, v21
	v_or_b32_e32 v177, 1, v21
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v184, s55, v21
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v186, 3, v21
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s13, s77, s55
	v_or_b32_e32 v187, 6, v52
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v142, 0x80000000, v145, s1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v177, s55, v177
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v184, v54
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s4, v184, v55
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v143, v60, s55, 1
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b64 v[145:146], v142, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s10, v177, v54
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s11, v177, v55
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s2, s2, s4
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_add_lshl_u32 v177, s13, v136, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, vcc_lo, s2
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v187, v187, s55, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s10, s11
	v_or_b32_e32 v185, 2, v52
	v_or_b32_e32 v188, 4, v52
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v190, v61, s55, 1
	v_add_lshl_u32 v189, v59, s55, 1
	v_add_lshl_u32 v191, s55, v52, 1
	v_add_lshl_u32 v36, v62, s55, 1
	v_add_lshl_u32 v38, v64, s55, 1
	v_add_lshl_u32 v40, v68, s55, 1
	v_add_lshl_u32 v41, v70, s55, 1
	v_add_lshl_u32 v42, v72, s55, 1
	v_add_lshl_u32 v154, v63, s55, 1
	v_add_lshl_u32 v156, v65, s55, 1
	v_add_lshl_u32 v157, v66, s55, 1
	v_add_lshl_u32 v158, v67, s55, 1
	v_add_lshl_u32 v160, v69, s55, 1
	v_add_lshl_u32 v159, v71, s55, 1
	v_add_lshl_u32 v161, v73, s55, 1
	v_add_lshl_u32 v175, v75, s55, 1
	v_add_lshl_u32 v182, v77, s55, 1
	v_add_lshl_u32 v18, v74, s55, 1
	v_add_lshl_u32 v19, v76, s55, 1
	v_add_lshl_u32 v20, v78, s55, 1
	v_add_lshl_u32 v33, v80, s55, 1
	v_add_lshl_u32 v37, v82, s55, 1
	v_add_lshl_u32 v39, v84, s55, 1
	v_add_lshl_u32 v144, s55, v53, 1
	v_add_lshl_u32 v183, v85, s55, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v142.l, 0
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v141
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v94, v[145:146]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[162:165], v86 offset1:1
	ds_load_2addr_stride64_b64 v[166:169], v86 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[178:181], v91 offset1:1
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1
	buffer_load_u16 v187, v187, s[64:67], 0 offen
	buffer_load_u16 v143, v143, s[64:67], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[162:163], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[164:165], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[166:167], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[208:215], v[168:169], v[24:25], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v91 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v92 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[178:179], v[26:27], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[180:181], v[26:27], v[192:199] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v180, v81, s55, 1
	v_add_lshl_u32 v178, v79, s55, 1
	v_add_lshl_u32 v181, v83, s55, 1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[9:10], v[26:27], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[208:215], v[11:12], v[26:27], v[208:215] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v92 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[13:14], v[28:29], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[15:16], v[28:29], v[192:199] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[13:16], v93 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[9:10], v[28:29], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[208:215], v[11:12], v[28:29], v[208:215] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v93 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[13:14], v[30:31], v[145:152] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v13, s55, v173
	v_or_b32_e32 v173, s55, v186
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[192:199], v[15:16], v[30:31], v[192:199] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v217, v148
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s6, v13, v54
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v13, v55
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v173, v54
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v173, v55
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v173, s13, v137, 1
	v_add_lshl_u32 v13, s13, v32, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s6, s7
	s_and_b32 s6, vcc_lo, s4
	s_and_b32 s2, vcc_lo, s2
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v177, 0x80000000, v177, s6
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	s_clause 0x2
	buffer_load_u16 v173, v173, s[60:63], 0 offen
	buffer_load_u16 v177, v177, s[60:63], 0 offen
	buffer_load_u16 v13, v13, s[60:63], 0 offen
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s8, s9
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v179, v150
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, vcc_lo, s4
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[9:10], v[30:31], v[200:207] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v14, v192
	v_cvt_f32_i32_e32 v162, v196
	v_mul_f32_e32 v192, v139, v217
	v_mul_f32_e32 v179, v139, v179
	v_cvt_f32_i32_e32 v168, v147
	v_cvt_f32_i32_e32 v171, v193
	v_cvt_f32_i32_e32 v15, v194
	v_cvt_f32_i32_e32 v16, v195
	v_cvt_f32_i32_e32 v172, v197
	v_cvt_f32_i32_e32 v163, v198
	v_cvt_f32_i32_e32 v174, v199
	v_cvt_f32_i32_e32 v147, v202
	v_cvt_f32_i32_e32 v164, v200
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v200.l, v142.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v216, v146
	v_cvt_f32_i32_e32 v176, v201
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v201.l, v142.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v167, v145
	v_cvt_f32_i32_e32 v169, v149
	v_cvt_f32_i32_e32 v165, v151
	v_cvt_f32_i32_e32 v170, v152
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v166, 0, v87
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[208:215], v[11:12], v[30:31], v[208:215] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v152, v207
	v_cvt_f32_i32_e32 v155, v203
	v_cvt_f32_i32_e32 v153, v205
	v_cvt_f32_i32_e32 v146, v204
	v_cvt_f32_i32_e32 v11, v210
	v_cvt_f32_i32_e32 v151, v209
	v_cvt_f32_i32_e32 v149, v213
	v_cvt_f32_i32_e32 v150, v211
	v_cvt_f32_i32_e32 v9, v214
	v_cvt_f32_i32_e32 v148, v215
	v_cvt_f32_i32_e32 v10, v212
	v_cvt_f32_i32_e32 v12, v208
	v_mul_f32_e32 v150, v139, v150
	v_cvt_f32_i32_e32 v145, v206
	v_mul_f32_e32 v162, v139, v162
	v_mul_f32_e32 v14, v139, v14
	v_mul_f32_e32 v11, v139, v11
	v_mul_f32_e32 v153, v139, v153
	v_mul_f32_e32 v155, v139, v155
	v_mul_f32_e32 v151, v139, v151
	v_mul_f32_e32 v149, v139, v149
	v_mul_f32_e32 v9, v139, v9
	v_mul_f32_e32 v147, v139, v147
	v_mul_f32_e32 v145, v139, v145
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v187, 16, v187
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v143, 16, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v187, v192, v187
	v_mul_f32_e32 v143, v179, v143
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x18
	buffer_load_u16 v36, v36, s[64:67], 0 offen
	buffer_load_u16 v38, v38, s[64:67], 0 offen
	buffer_load_u16 v40, v40, s[64:67], 0 offen
	buffer_load_u16 v41, v41, s[64:67], 0 offen
	buffer_load_u16 v42, v42, s[64:67], 0 offen
	buffer_load_u16 v156, v156, s[64:67], 0 offen
	buffer_load_u16 v157, v157, s[64:67], 0 offen
	buffer_load_u16 v202, v160, s[64:67], 0 offen
	buffer_load_u16 v158, v158, s[64:67], 0 offen
	buffer_load_u16 v154, v154, s[64:67], 0 offen
	buffer_load_u16 v182, v182, s[64:67], 0 offen
	buffer_load_u16 v192, v175, s[64:67], 0 offen
	buffer_load_u16 v193, v161, s[64:67], 0 offen
	buffer_load_u16 v159, v159, s[64:67], 0 offen
	buffer_load_u16 v199, v18, s[64:67], 0 offen
	buffer_load_u16 v198, v19, s[64:67], 0 offen
	buffer_load_u16 v160, v20, s[64:67], 0 offen
	buffer_load_u16 v197, v33, s[64:67], 0 offen
	buffer_load_u16 v196, v37, s[64:67], 0 offen
	buffer_load_u16 v195, v39, s[64:67], 0 offen
	buffer_load_u16 v194, v144, s[64:67], 0 offen
	buffer_load_u16 v175, v183, s[64:67], 0 offen
	buffer_load_u16 v179, v181, s[64:67], 0 offen
	buffer_load_u16 v180, v180, s[64:67], 0 offen
	buffer_load_u16 v161, v178, s[64:67], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v18, v139, v170
	v_mul_f32_e32 v19, v139, v171
	v_mul_f32_e32 v20, v139, v172
	v_mul_f32_e32 v37, v139, v176
	v_mul_f32_e32 v144, v139, v168
	v_mul_f32_e32 v165, v139, v165
	v_mul_f32_e32 v168, v139, v15
	v_mul_f32_e32 v163, v139, v163
	v_mul_f32_e32 v152, v139, v152
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(27)
	v_cndmask_b16 v186.h, 0xff80, v173.l, s2
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v173, v185, s55, 1
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(25)
	v_cndmask_b16 v186.l, 0xff80, v13.l, s5
	v_add_lshl_u32 v13, s13, v140, 1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v185, v188, s55, 1
	s_clause 0x4
	buffer_load_u16 v173, v173, s[64:67], 0 offen
	buffer_load_u16 v188, v190, s[64:67], 0 offen
	buffer_load_u16 v189, v189, s[64:67], 0 offen
	buffer_load_u16 v190, v185, s[64:67], 0 offen
	buffer_load_u16 v191, v191, s[64:67], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v177.l, 0xff80, v177.l, s6
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	v_mov_b16_e64 v142.h, v186.l
	v_mov_b16_e64 v200.h, v186.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v185, v139, v216
	v_mul_f32_e32 v33, v139, v174
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_u16 v13, v13, s[60:63], 0 offen
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v142
	v_cmp_neq_f32_e64 s7, 0xff800000, v200
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v142.h, v177.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v39, v139, v167
	v_mul_f32_e32 v167, v139, v169
	v_mul_f32_e32 v169, v139, v16
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s2, s2, s7
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v142
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v164, v139, v164
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s5, s5, s9
	s_and_b32 s6, s6, s7
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s55, s55, 64
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v15, 16, v36
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v16, 16, v38
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v36, 16, v40
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v38, 16, v41
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v40, 16, v42
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v176, v19, v16 :: v_dual_lshlrev_b32 v157, 16, v157
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v154, 16, v154
	v_lshlrev_b32_e32 v172, 16, v202
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v174, v18, v15
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v178, v20, v36 :: v_dual_lshlrev_b32 v159, 16, v159
	v_dual_mul_f32 v20, v14, v154 :: v_dual_mul_f32 v19, v168, v156
	v_mul_f32_e32 v154, v169, v157
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v160, 16, v160
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v161, 16, v161
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v11, v180
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v184, 0, v88
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v170, 16, v189
	v_lshlrev_b32_e32 v171, 16, v188
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v41, 16, v191
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v173, v185, v173
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v185, 0, v90
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v42, 16, v190
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v181, v33, v38 :: v_dual_mul_f32 v188, v39, v41
	v_mul_f32_e32 v183, v37, v40
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v177.h, 0xff80, v13.l, s4
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v16, v167, v170 :: v_dual_add_nc_u32 v13, 0, v89
	v_mul_f32_e32 v15, v165, v171
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b32 v166, v186
	ds_store_b32 v111, v177
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v201.h, v177.h
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v14, v162, v158 :: v_dual_mul_f32 v39, v164, v159
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v201
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v37, v163, v172
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b32 v163, v184
	ds_load_b32 v164, v112
	ds_load_b32 v166, v113
	ds_load_b32 v167, v114
	ds_load_b32 v168, v115
	ds_load_b32 v38, v116
	ds_load_b32 v36, v117
	ds_load_b32 v33, v118
	ds_load_b32 v18, v119
	ds_load_b32 v169, v120
	ds_load_b32 v165, v121
	ds_load_b32 v162, v122
	ds_load_b32 v159, v123
	ds_load_b32 v158, v124
	ds_load_b32 v157, v125
	ds_load_b32 v156, v126
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v170, 0, 1, s6
	v_cndmask_b32_e64 v40, 0, 1, s2
	s_and_b32 s4, s4, s8
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v144, v144, v42
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v41, 0, 1, s4
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt lgkmcnt(15)
	v_mov_b16_e64 v142.h, v163.l
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v163, 0xffff0000, v163
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v42, 0, 1, s5
	v_lshlrev_b16 v40.l, 8, v40.l
	v_lshlrev_b16 v40.h, 8, v41.l
	v_mov_b16_e64 v41.l, v170.l
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(14)
	v_and_b32_e32 v170, 0xffff0000, v164
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v184, 0x3fb8aa3b, v163
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v40.l, v42.l, v40.l
	s_waitcnt lgkmcnt(0)
	v_or_b16 v40.h, v41.l, v40.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v41, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v164.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v170, 0x3fb8aa3b, v170
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v171, 0xffff0000, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v41, s76, v188 :: v_dual_and_b32 v42, 0xffff0000, v166
	.loc	1 685 25                        ; attention.py:685:25
	s_barrier
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v170, s76, v187
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v186, 0x3fb8aa3b, v142 :: v_dual_mul_f32 v171, 0x3fb8aa3b, v171
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v164, 0xffff0000, v167
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v166.l
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v166, 0xffff0000, v36
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b16 v13, v40
	ds_store_b16_d16_hi v127, v40
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v171, s76, v176
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v187, 0x3fb8aa3b, v164
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v164, 0xffff0000, v18
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v42, 0x3fb8aa3b, v42
	v_mul_f32_e32 v189, 0x3fb8aa3b, v166
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v40, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v167.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v191, 0x3fb8aa3b, v164
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v42, s76, v143 :: v_dual_and_b32 v163, 0xffff0000, v38
	v_fmac_f32_e32 v189, s76, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v178, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v168.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v188, 0x3fb8aa3b, v163
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v143, 0xffff0000, v33
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v13, v131
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v185
	ds_load_u16_d16_hi v38, v185 offset:32
	ds_load_u16_d16_hi v18, v128
	ds_load_u16_d16_hi v33, v129
	ds_load_u16_d16_hi v36, v130
	ds_load_u16_d16 v163, v130 offset:32
	ds_load_u16_d16 v164, v129 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v188, s76, v154
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v190, 0x3fb8aa3b, v143
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v191, s76, v183 :: v_dual_fmac_f32 v184, s76, v173
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_load_u16_d16 v166, v128 offset:32
	ds_load_u16_d16 v167, v134 offset:32
	ds_load_u16_d16 v168, v133 offset:32
	ds_load_u16_d16 v172, v132 offset:32
	ds_load_u16_d16 v173, v131 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v190, s76, v181 :: v_dual_mul_f32 v181, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v142.h, v38.l
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v38, v134
	v_mad_u64_u32 v[176:177], null, s12, s43, v[23:24]
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v181, s76, v20
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v183, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt lgkmcnt(8)
	v_mov_b16_e64 v142.h, v36.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v186, s76, v144 :: v_dual_mov_b32 v143, v17
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v154, v35, v35
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v183, s76, v19
	v_fmac_f32_e32 v178, s76, v15
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v15.l, 1, v13.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v185, 0x3fb8aa3b, v142 :: v_dual_fmac_f32 v40, s76, v16
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v13.h, 8, v13.h
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v33.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s23, 1, v15.l
	v_and_b16 v15.l, 1, v18.h
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v185, s76, v14
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v14, v133
	v_and_b16 v13.h, 1, v13.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v200, 0x3fb8aa3b, v142
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s20, 1, v15.l
	v_and_b16 v15.l, 1, v33.h
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v18.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s24, 1, v13.h
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v13.h, 8, v38.h
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v200, s76, v37
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s17, 1, v15.l
	v_and_b16 v15.l, 1, v36.h
	v_mov_b32_e32 v144, v34
	v_and_b16 v13.h, 1, v13.h
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v187, s76, v174
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v17, 0xff800000, v40, s17
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s18, 1, v15.l
	v_and_b16 v15.l, 1, v13.l
	v_lshrrev_b16 v13.l, 8, v13.l
	v_cmp_eq_u16_e64 s10, 1, v13.h
	v_lshrrev_b16 v13.h, 8, v18.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v14.h, 1, v14.l
	v_cmp_eq_u16_e64 s7, 1, v15.l
	ds_load_u16_d16 v15, v132
	v_and_b16 v13.l, 1, v13.l
	v_and_b16 v13.h, 1, v13.h
	v_cmp_eq_u16_e64 s9, 1, v14.h
	v_lshrrev_b16 v14.h, 8, v33.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v181, s7
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s11, 1, v13.l
	v_cmp_eq_u16_e64 s22, 1, v13.h
	v_lshrrev_b16 v13.h, 8, v36.h
	v_and_b16 v14.h, 1, v14.h
	v_and_b16 v40.l, 1, v38.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v181, v152, v160
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v16, 0xff800000, v170, s22
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v13.h, 1, v13.h
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v152, 16, v197
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v170, 0x3fb8aa3b, v142
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s21, 1, v14.h
	v_cmp_eq_u16_e64 s15, 1, v40.l
	v_cmp_eq_u16_e64 s19, 1, v13.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v34, 0xff800000, v171, s11
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v13.l, 8, v15.l
	v_and_b16 v15.h, 1, v15.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v18, 0xff800000, v42, s21
	v_cndmask_b32_e64 v37, 0xff800000, v185, s9
	v_cndmask_b32_e64 v42, 0xff800000, v191, s10
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v13.l, 1, v13.l
	v_cmp_eq_u16_e64 s8, 1, v15.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v15, 0xff800000, v186, s20
	v_cndmask_b32_e64 v19, 0xff800000, v178, s18
	v_cndmask_b32_e64 v20, 0xff800000, v187, s19
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s12, 1, v13.l
	v_lshrrev_b16 v13.l, 8, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v183, s8
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v183, v151, v152 :: v_dual_fmac_f32 v170, s76, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v188, s12
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v13.l, 1, v13.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v39, 0xff800000, v200, s15
	v_cndmask_b32_e64 v14, 0xff800000, v184, s24
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v152, 16, v196
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v171, v34, v35, v36
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s13, 1, v13.l
	v_lshrrev_b16 v13.l, 8, v38.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v148, v139, v148
	v_mul_f32_e32 v184, v150, v152
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v152, 16, v195
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v10, v139, v10
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v13.l, 1, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v146, v139, v146
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v169.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v185, v149, v152 :: v_dual_lshlrev_b32 v152, 16, v194
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s14, 1, v13.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v13, 0xff800000, v41, s23
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v41.l, 1, v38.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v189, s13
	v_add_nc_u32_e32 v174, 0, v56
	v_cndmask_b32_e64 v40, 0xff800000, v190, s14
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v186, v148, v152
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s16, 1, v41.l
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v152, 16, v193
	v_lshlrev_b32_e32 v178, 16, v198
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v180, v10, v179
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v175
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v41, 0xff800000, v170, s16
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v170, v37, v38, v39
.Ltmp4:
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v187, v147, v152
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v152, 16, v192
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v139, v12
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v177, v40, v41, v42
.Ltmp6:
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v178, v153, v178
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v188, v146, v152
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v152, 16, v182
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v170, v171, v170, v177
	v_max_f32_e32 v171, v13, v14
	v_max3_f32 v177, v16, v17, v18
.Ltmp8:
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v182, v9, v10 :: v_dual_and_b32 v9, 0xffff0000, v169
	v_mul_f32_e32 v169, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v165.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v171, v171, v15, v177
	v_max3_f32 v177, v19, v20, v33
.Ltmp10:
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v10, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v165
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v169, s76, v187
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v177, v171, v177, v170
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v170, 1, v176
	v_add_lshl_u32 v171, v176, s74, 1
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v175, 0x3fb8aa3b, v9 :: v_dual_lshlrev_b32 v176, 16, v199
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v162
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_b64 v174, v[13:14]
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v147.h, v142.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v176, v155, v176 :: v_dual_fmac_f32 v175, s76, v178
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v189, 0x3fb8aa3b, v9
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v12, v12, v161 :: v_dual_and_b32 v9, 0xffff0000, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v10, s76, v176
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v155.h, v142.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v189, s76, v181
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v181, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v158
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v158.h, v142.l
	v_mov_b16_e64 v164.h, v142.l
	v_mov_b16_e64 v162.h, v142.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v181, s76, v183
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v183, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v157
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v176, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v162.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v145, v145, v152
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v183, s76, v184 :: v_dual_mul_f32 v184, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v156
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v174.h, v142.l
	v_mov_b16_e64 v173.h, v142.l
	v_mov_b16_e64 v159.h, v142.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v184, s76, v185
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v185, 0x3fb8aa3b, v9
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_lshrrev_b16 v9.l, 8, v166.l
	v_and_b16 v9.h, 1, v172.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v172.h, v142.l
	v_mov_b16_e64 v163.h, v142.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v185, s76, v186
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v186, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v159.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s37, 1, v9.h
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v146.h, v142.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s30, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v164.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v186, s76, v145 :: v_dual_mul_f32 v145, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v158.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v179, 0xff800000, v10, s30
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v10.l, 1, v168.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v145, s76, v12 :: v_dual_mul_f32 v12, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v157.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s31, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v163.l
	v_cmp_eq_u16_e64 s38, 1, v10.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v12, s76, v11
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.h, 1, v167.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v195, 0xff800000, v175, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v166.h, v142.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v200, 0xff800000, v12, s37
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s39, 1, v10.h
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.h, v142.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s25, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v173.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v175.h, v142.l
	v_mov_b16_e64 v151.h, v142.l
	v_mov_b16_e64 v168.h, v142.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v197, 0xff800000, v189, s25
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v153.h, v142.l
	v_mov_b16_e64 v160.h, v142.l
	v_mov_b16_e64 v150.h, v142.l
	v_mov_b16_e64 v165.h, v142.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s26, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v172.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.h, v142.l
	v_mov_b16_e64 v148.h, v142.l
	v_mov_b16_e64 v152.h, v142.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v199, 0xff800000, v181, s26
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v161.h, v142.l
	v_mov_b16_e64 v149.h, v142.l
	v_mov_b16_e64 v157.h, v142.l
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s55, s72
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s27, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v168.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v201, 0xff800000, v183, s27
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s28, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v167.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v203, 0xff800000, v184, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s29, 1, v9.l
	v_and_b16 v9.l, 1, v166.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v205, 0xff800000, v185, s29
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s33, 1, v9.l
	v_and_b16 v9.l, 1, v164.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v178, 0xff800000, v169, s33
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s34, 1, v9.l
	v_and_b16 v9.l, 1, v163.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v169.h, v142.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s35, 1, v9.l
	v_and_b16 v9.l, 1, v173.l
	v_cmp_eq_u16_e64 s36, 1, v9.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v9, 0x3fb8aa3b, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v142.h, v156.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v196, 0xff800000, v186, s35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v198, 0xff800000, v145, s36
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v9, s76, v180 :: v_dual_mul_f32 v12, 0x3fb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v145, v195, v196, v197
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v142.h, v142.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v202, 0xff800000, v9, s38
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v176, s76, v188
	v_fmac_f32_e32 v12, s76, v182
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v9, v198, v199, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v194, 0xff800000, v176, s34
	v_cndmask_b32_e64 v204, 0xff800000, v12, s39
	ds_store_b64 v95, v[15:16]
	ds_store_b64 v96, v[17:18]
	ds_store_b64 v97, v[19:20]
	ds_store_b64 v98, v[33:34]
	ds_store_b64 v99, v[35:36]
	ds_store_b64 v100, v[37:38]
	ds_store_b64 v101, v[39:40]
	ds_store_b64 v102, v[41:42]
	ds_store_b64 v103, v[178:179]
	ds_store_b64 v104, v[194:195]
	ds_store_b64 v105, v[196:197]
	ds_store_b64 v106, v[198:199]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v11, v178, v179, v194
	v_max_f32_e32 v10, v204, v205
.Ltmp18:
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_b64 v107, v[200:201]
	ds_store_b64 v108, v[202:203]
	ds_store_b64 v109, v[204:205]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v145, v11, v145, v9
	v_max_f32_e32 v9, v201, v202
.Ltmp20:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v176.h, v142.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v180, v9, v203, v10
.Ltmp22:
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_2addr_b64 v[9:12], v110 offset1:16
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v145, v177, v145, v180
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v177, v145, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v145, v141, v145, v177
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v17, v17, v145
	v_sub_f32_e32 v181, v33, v145
	.loc	1 689 74                        ; attention.py:689:74
	s_waitcnt lgkmcnt(0)
	v_dual_sub_f32 v33, v141, v145 :: v_dual_max_f32 v180, v11, v11
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v185, v37, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v13, v145
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 689 61 is_stmt 1              ; attention.py:689:61
	v_exp_f32_e32 v33, v33
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v184, v36, v145
	v_sub_f32_e32 v16, v16, v145
	v_sub_f32_e32 v15, v15, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v189, v41, v145
	v_sub_f32_e32 v183, v35, v145
	v_sub_f32_e32 v36, v196, v145
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s17
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v33, 0, v33, s40
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v192, v179, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v155.l, v17.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v206, v18, v145
	v_sub_f32_e32 v18, v19, v145
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v19, v9, v9
.Ltmp27:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v33
	v_mul_f32_e32 v2, v2, v33
	v_mul_f32_e32 v3, v3, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v4, v4, v33 :: v_dual_max_f32 v19, v19, v180
	v_mul_f32_e32 v5, v5, v33
	v_mul_f32_e32 v6, v6, v33
	v_mul_f32_e32 v7, v7, v33
	v_mul_f32_e32 v8, v8, v33
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v19, v19, v10, v12
.Ltmp29:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v14, v14, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v180.h, v142.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s23
	v_cndmask_b32_e64 v15, 0, v15, s20
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v33, v19
.Ltmp31:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v14, v14
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v155, 1, v155
	v_mov_b16_e64 v172.l, v13.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v187, v39, v145
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v33, v33 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v166.l, v15.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v191, v178, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s23, v13, v13
	v_cmp_o_f32_e64 s17, v17, v17
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v33, v33
.Ltmp35:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v14, 0, v14, s24
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v155, v17, v155, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v178, v204, v145
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s35
.Ltmp36:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v19, v33
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v173.l, v14.h
	v_cmp_o_f32_e64 s24, v14, v14
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v188, v40, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v178, v178
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v165.l, v36.h
	v_and_b32_e32 v19, 1, v173
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v40, v200, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v165, 1, v165
	v_add3_u32 v141, v14, v19, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v19, 0x80000000, v171, s0
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v171, v181
	v_exp_f32_e32 v181, v184
	v_exp_f32_e32 v184, v185
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v14, 1, v172
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v185, v188
	v_exp_f32_e32 v188, v189
	v_exp_f32_e32 v189, v192
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v178, 0, v178, s39
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v172, v13, v14, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v14, v16
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v13, 0x80000000, v170, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v170, 1, v166
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v184, 0, v184, s9
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v16, v206
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v171, 0, v171, s7
	v_cndmask_b32_e64 v188, 0, v188, s16
	v_cndmask_b32_e64 v189, 0, v189, s30
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v146.l, v184.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v201, v145
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v14, 0, v14, s22
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v167.l, v188.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v182, v34, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v146, 1, v146
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v163.l, v14.h
	v_and_b32_e32 v167, 1, v167
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v16, 0, v16, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s20, v14, v14
	v_cmp_o_f32_e64 s21, v15, v15
	v_and_b32_e32 v163, 1, v163
	v_mov_b16_e64 v150.l, v171.h
	v_mov_b16_e64 v168.l, v16.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v193, v195, v145
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s27
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v166, v14, v163, 0x7fff
	v_add3_u32 v163, v15, v170, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v170, v182
	v_exp_f32_e32 v182, v183
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v175.l, v41.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v186, v38, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v168, 1, v168
	v_cmp_o_f32_e64 s22, v16, v16
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v37, v197, v145 :: v_dual_and_b32 v150, 1, v150
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v175, 1, v175
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v183, v186
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v170, 0, v170, s11
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v168, v16, v168, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[13:16], v13, s[68:71], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.l, v189.h
	v_mov_b16_e64 v151.l, v170.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v20, v145
	v_sub_f32_e32 v179, v205, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s30, v36, v36
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v183, 0, v183, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v151, 1, v151
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v20, v20
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v156, 1, v156
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v147.l, v183.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v179, v179
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v36, v36, v165, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v182, 0, v182, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v162.l, v37.h
	v_and_b32_e32 v147, 1, v147
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v20, 0, v20, s19
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v186, v187
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v162, 1, v162
	v_mov_b16_e64 v148.l, v182.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v199, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v153.l, v20.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v179, 0, v179, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s29, v37, v37
	v_cmp_o_f32_e64 s39, v178, v178
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v18, s18
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v153, 1, v153
	v_cmp_o_f32_e64 s18, v20, v20
	v_add3_u32 v37, v37, v162, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v185, 0, v185, s14
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v160.l, v18.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v194, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v18, v18
	v_add3_u32 v153, v20, v153, 0x7fff
	v_mov_b16_e64 v194.h, v142.l
	v_and_b32_e32 v160, 1, v160
	v_mov_b16_e64 v194.l, v178.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v148, 1, v148
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v160, v18, v160, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[17:20], v19, s[68:71], 0 offen
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v165, v33 :: v_dual_and_b32 v192, 1, v194
.Ltmp39:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v186, 0, v186, s15
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v152.l, v185.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v162, v178, v192, 0x7fff
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v165, v165 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v177, v203, v145
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s34
	v_cndmask_b32_e64 v39, 0, v39, s26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v161.l, v186.h
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v178, v165, v165
.Ltmp43:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v190, v42, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v158.l, v35.h
	v_and_b32_e32 v152, 1, v152
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v177, v177
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v33, v178
.Ltmp45:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v187, v190
	v_exp_f32_e32 v190, v191
	v_exp_f32_e32 v191, v193
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s37
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v169.l, v39.h
	v_and_b32_e32 v161, 1, v161
	v_and_b32_e32 v158, 1, v158
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v181, 0, v181, s12
	v_cndmask_b32_e64 v177, 0, v177, s28
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v170, v170
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v187, 0, v187, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v171, v171
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v191, 0, v191, s31
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v183, v183
	v_cmp_o_f32_e64 s12, v184, v184
	v_mov_b16_e64 v164.l, v187.h
	v_cmp_o_f32_e64 s13, v185, v185
	v_cmp_o_f32_e64 s14, v186, v186
	v_mov_b16_e64 v159.l, v191.h
	v_cmp_o_f32_e64 s28, v35, v35
	v_mov_b16_e64 v176.l, v40.h
	v_and_b32_e32 v169, 1, v169
	v_add3_u32 v151, v170, v151, 0x7fff
	v_add3_u32 v150, v171, v150, 0x7fff
	v_add3_u32 v147, v183, v147, 0x7fff
	v_add3_u32 v146, v184, v146, 0x7fff
	v_add3_u32 v152, v185, v152, 0x7fff
	v_add3_u32 v161, v186, v161, 0x7fff
	v_add3_u32 v35, v35, v158, 0x7fff
	v_and_b32_e32 v164, 1, v164
	v_cmp_o_f32_e64 s16, v188, v188
	v_cmp_o_f32_e64 s25, v189, v189
	v_cmp_o_f32_e64 s31, v39, v39
	v_and_b32_e32 v159, 1, v159
	v_and_b32_e32 v176, 1, v176
	v_add3_u32 v167, v188, v167, 0x7fff
	v_add3_u32 v156, v189, v156, 0x7fff
	v_add3_u32 v39, v39, v169, 0x7fff
	v_cndmask_b16 v153.h, 0x7fff, v153.h, s18
	v_cndmask_b16 v153.l, 0x7fff, v160.h, s19
	v_cndmask_b16 v160.h, 0x7fff, v151.h, s7
	v_cndmask_b16 v160.l, 0x7fff, v150.h, s8
	v_cndmask_b16 v169.h, 0x7fff, v147.h, s11
	v_cndmask_b16 v169.l, 0x7fff, v146.h, s12
	v_cndmask_b16 v170.h, 0x7fff, v152.h, s13
	v_cndmask_b16 v170.l, 0x7fff, v161.h, s14
	v_cndmask_b16 v171.l, 0x7fff, v35.h, s28
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s29
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s30
	v_add3_u32 v164, v187, v164, 0x7fff
	v_cmp_o_f32_e64 s27, v191, v191
	v_cmp_o_f32_e64 s35, v40, v40
	v_add3_u32 v159, v191, v159, 0x7fff
	v_add3_u32 v40, v40, v176, 0x7fff
	v_cndmask_b16 v163.l, 0x7fff, v155.h, s17
	v_cndmask_b16 v164.l, 0x7fff, v167.h, s16
	v_cndmask_b16 v167.h, 0x7fff, v156.h, s25
	v_cndmask_b16 v36.l, 0x7fff, v162.h, s39
	v_permlanex16_b32 v155, v153, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v156, v160, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v169, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v162, v170, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v176, v35, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v171.h, 0x7fff, v159.h, s27
	v_perm_b32 v152, v155, v153, v135
	v_perm_b32 v153, v155, v153, v138
	v_perm_b32 v155, v156, v160, v135
	v_perm_b32 v156, v156, v160, v138
	v_perm_b32 v159, v161, v169, v135
	v_perm_b32 v160, v161, v169, v138
	v_perm_b32 v161, v162, v170, v135
	v_perm_b32 v162, v162, v170, v138
	v_perm_b32 v169, v176, v35, v135
	v_perm_b32 v170, v176, v35, v138
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v35, v33
.Ltmp47:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.l, v181.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v34, v144, v144
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v190, 0, v190, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s34, v41, v41
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v173.l, v179.h
	v_add3_u32 v41, v41, v175, 0x7fff
	v_mov_b16_e64 v157.l, v190.h
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s24
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_sub_f32 v38, v198, v145
.Ltmp51:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v141.l, 0x7fff, v172.h, s23
	v_and_b32_e32 v173, 1, v173
	v_mov_b16_e64 v142.l, v177.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp53:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v181, v181
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v35, v33
.Ltmp55:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v182, v182
	v_cmp_o_f32_e64 s15, v187, v187
	v_cmp_o_f32_e64 s26, v190, v190
	v_add3_u32 v148, v182, v148, 0x7fff
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v202, v145
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v158, v179, v173, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_and_b32 v142, 1, v142
.Ltmp59:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v174.l, v38.h
	v_cmp_o_f32_e64 s33, v38, v38
	v_cmp_o_f32_e64 s36, v177, v177
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp61:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v142, v177, v142, 0x7fff
	v_and_b32_e32 v174, 1, v174
	v_cndmask_b16 v166.h, 0x7fff, v166.h, s20
	v_cndmask_b16 v166.l, 0x7fff, v163.h, s21
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v35, v154, v33
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v38, v38, v174, 0x7fff
	v_cmp_o_f32_e64 s38, v179, v179
	v_cndmask_b16 v163.h, 0x7fff, v168.h, s22
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v9, v35
	v_sub_f32_e32 v11, v11, v35
	v_sub_f32_e32 v10, v10, v35
	v_sub_f32_e32 v12, v12, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v180.l, v42.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v12, v12
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v180, 1, v180
	v_cndmask_b16 v172.l, 0x7fff, v38.h, s33
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s34
	v_permlanex16_b32 v41, v141, s75, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s37, v42, v42
	v_add3_u32 v42, v42, v180, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s5
	v_cndmask_b32_e64 v11, 0, v11, s6
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v12, 0, v12, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v149, 1, v149
	v_perm_b32 v146, v41, v141, v135
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v9, v9, v11
.Ltmp63:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v147, v41, v141, v138
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v10, v10, v12
.Ltmp65:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v34, v34, v33
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v149, v181, v149, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v142.h, s36
	v_cndmask_b16 v37.l, 0x7fff, v42.h, s37
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp67:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v33, v144, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v42, v166, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v142, v163, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v144
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp69:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v168.h, 0x7fff, v149.h, s9
	v_cndmask_b16 v168.l, 0x7fff, v148.h, s10
	v_perm_b32 v148, v42, v166, v135
	v_perm_b32 v149, v42, v166, v138
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v150, v142, v163, v135
	v_perm_b32 v151, v142, v163, v138
	v_cndmask_b16 v164.h, 0x7fff, v164.h, s15
	v_cndmask_b16 v36.h, 0x7fff, v158.h, s38
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp73:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v157, 1, v157
	v_permlanex16_b32 v158, v168, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v172.h, 0x7fff, v39.h, s31
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s35
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp75:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v157, v190, v157, 0x7fff
	v_permlanex16_b32 v173, v164, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v175, v171, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v177, v172, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v167.l, 0x7fff, v157.h, s26
	v_perm_b32 v157, v158, v168, v135
	v_perm_b32 v158, v158, v168, v138
	v_permlanex16_b32 v40, v38, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp79:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v174, v167, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v37, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v194, v36, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v163, v173, v164, v135
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp81:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v164, v173, v164, v138
	v_perm_b32 v165, v174, v167, v135
	v_perm_b32 v166, v174, v167, v138
	v_perm_b32 v167, v175, v171, v135
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v168, v175, v171, v138
	v_perm_b32 v171, v177, v172, v135
	v_perm_b32 v172, v177, v172, v138
	v_perm_b32 v173, v40, v38, v135
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v9, v10
.Ltmp85:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v174, v40, v38, v138
	v_perm_b32 v175, v39, v37, v135
	v_perm_b32 v176, v39, v37, v138
	v_perm_b32 v177, v194, v36, v135
	v_mov_b32_e32 v141, v145
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v58, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v58, v[17:20] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v57
	ds_load_u16_d16 v10, v57 offset:256
	ds_load_u16_d16 v11, v57 offset:512
	ds_load_u16_d16 v12, v57 offset:768
	ds_load_u16_d16 v13, v57 offset:1024
	ds_load_u16_d16 v14, v57 offset:1280
	ds_load_u16_d16 v15, v57 offset:1536
	ds_load_u16_d16 v16, v57 offset:1792
	ds_load_u16_d16 v178, v57 offset:2048
	ds_load_u16_d16 v179, v57 offset:2304
	ds_load_u16_d16 v180, v57 offset:2560
	ds_load_u16_d16 v181, v57 offset:2816
	ds_load_u16_d16 v182, v57 offset:3072
	ds_load_u16_d16 v183, v57 offset:3328
	ds_load_u16_d16 v184, v57 offset:3584
	ds_load_u16_d16 v185, v57 offset:3840
	ds_load_u16_d16 v186, v57 offset:4096
	ds_load_u16_d16 v187, v57 offset:4352
	ds_load_u16_d16 v188, v57 offset:4608
	ds_load_u16_d16 v189, v57 offset:4864
	ds_load_u16_d16 v190, v57 offset:5120
	ds_load_u16_d16 v191, v57 offset:5376
	ds_load_u16_d16 v192, v57 offset:5632
	ds_load_u16_d16 v193, v57 offset:5888
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v57 offset:128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v57 offset:384
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v57 offset:640
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v57 offset:896
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v57 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v57 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v57 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v57 offset:1920
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v17, v33
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v18, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v19, 0, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v17, v41, v18
.Ltmp89:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v17, v143, v19
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[146:153], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v9, v57 offset:6144
	ds_load_u16_d16 v10, v57 offset:6400
	ds_load_u16_d16 v11, v57 offset:6656
	ds_load_u16_d16 v12, v57 offset:6912
	ds_load_u16_d16 v13, v57 offset:7168
	ds_load_u16_d16 v14, v57 offset:7424
	ds_load_u16_d16 v15, v57 offset:7680
	ds_load_u16_d16 v16, v57 offset:7936
	ds_load_u16_d16_hi v178, v57 offset:2176
	ds_load_u16_d16_hi v179, v57 offset:2432
	ds_load_u16_d16_hi v180, v57 offset:2688
	ds_load_u16_d16_hi v181, v57 offset:2944
	ds_load_u16_d16_hi v182, v57 offset:3200
	ds_load_u16_d16_hi v183, v57 offset:3456
	ds_load_u16_d16_hi v184, v57 offset:3712
	ds_load_u16_d16_hi v185, v57 offset:3968
	ds_load_u16_d16_hi v186, v57 offset:4224
	ds_load_u16_d16_hi v187, v57 offset:4480
	ds_load_u16_d16_hi v188, v57 offset:4736
	ds_load_u16_d16_hi v189, v57 offset:4992
	ds_load_u16_d16_hi v190, v57 offset:5248
	ds_load_u16_d16_hi v191, v57 offset:5504
	ds_load_u16_d16_hi v192, v57 offset:5760
	ds_load_u16_d16_hi v193, v57 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v57 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v57 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v57 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v57 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v57 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v57 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v57 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v57 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[155:162], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_perm_b32 v178, v194, v36, v138
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[186:193], v[163:170], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[171:178], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v49
	s_mov_b32 s1, 0x76543210
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp91:
	.loc	1 835 13                        ; attention.py:835:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v34 :: v_dual_cndmask_b32 v12, 0, v17
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s54, s54, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v21, v46
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 28, v51
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp96:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v10
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshl_add_u32 v10, v50, 2, 0
.Ltmp99:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s43, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s41, s54
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
.Ltmp102:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_mov_b32_e32 v6, v3
.Ltmp104:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v10
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 822 30 is_stmt 1              ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_dual_add_f32 v3, v3, v6 :: v_dual_max_f32 v4, v9, v9
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v2, v2, v5
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v11, v3
.Ltmp112:
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v9, v2 :: v_dual_max_f32 v6, v7, v7
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v12
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v5, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v8, v20
	v_add_f32_e32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v5, v10, v5 :: v_dual_add_f32 v10, v3, v11
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v1 :: v_dual_max_f32 v6, v6, v6
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v18, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v9
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v3, v5
.Ltmp130:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v7 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v4, v10, v18
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v11, v1 :: v_dual_mov_b32 v18, v14
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, v4 :: v_dual_add_f32 v7, v5, v3
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v10, v7 :: v_dual_add_f32 v1, v1, v11
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v2
.Ltmp135:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v18 :: v_dual_mov_b32 v19, v15
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v2, v17
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v13
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v17
	v_dual_add_f32 v17, v8, v20 :: v_dual_add_f32 v14, v14, v19
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v12, v8
	v_dual_add_f32 v17, v17, v22 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v13
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp154:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp156:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp158:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp159:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v3, v5
.Ltmp160:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v45
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v8, v12 :: v_dual_add_f32 v4, v1, v2
.Ltmp162:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v8, 0xe0, v44
	v_and_b32_e32 v1, 28, v44
	v_and_b32_e32 v2, 32, v47
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_f32 v17, v13, v16
.Ltmp164:
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v0, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 835 13                        ; attention.py:835:13
	v_cmp_eq_u32_e64 s0, 0, v43
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp165:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 218
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 218
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11160
; TotalNumSgprs: 80
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 218
; Occupancy: 6
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
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
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
