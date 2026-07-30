	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s63, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[64:65], s[0:1], 0x0
	s_load_b64 s[60:61], s[0:1], 0x40
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v61, 0x60, v0
	v_lshlrev_b32_e32 v56, 2, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v59, 31, v0
	v_and_b32_e32 v55, 0x70, v0
	v_and_b32_e32 v60, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v57, 1, v0
	.loc	1 633 49                        ; attention.py:633:49
	v_and_b32_e32 v58, 1, v0
	s_mov_b32 s44, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s6, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s6
	s_sub_i32 s5, 0, s6
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v3, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v3
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s5, s5, s4
	s_mul_hi_u32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s12, s4, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s5, s2, s63
	s_mul_hi_u32 s4, s7, s12
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s8, s4, s6
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s9, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s8, s4
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s65, s65, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s5
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b32 s11, s[0:1], 0x84
	s_sub_i32 s7, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s10, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s63
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s5, s10, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, s10, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v4, s5, v2
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s62, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[4:5], null, v4, s42, v[3:4]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s63, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s13, s4, s63
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s4, s4
	s_ashr_i32 s13, s13, 31
	s_mul_hi_u32 s12, s4, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v4, 2, v61
	buffer_load_b32 v3, v3, s[64:67], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s14, s12, s6
	s_add_i32 s15, s12, 1
	s_sub_i32 s4, s4, s14
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v56, v4, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s4, s6
	s_cmp_ge_u32 s4, s6
	s_cselect_b32 s7, s15, s12
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s7, 1
	s_cmp_ge_u32 s2, s6
	s_cselect_b32 s2, s4, s7
	.loc	1 616 17                        ; attention.py:616:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s9, s11
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s13
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s6, s10
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s11, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s6, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s13
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s6, s6, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s10
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s6, s6, 63
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s7, s62, s2
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s12, s6, 31
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s4, s4, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s12, s12, 26
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s7, s7, 6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s6, s6, s12
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s7, s2
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s76, s7, s4
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s77, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s76, s77
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[52:59], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s10, v60
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s5, v60, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v10, 4, v55
	v_and_b32_e32 v6, 24, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x68
	s_load_b64 s[68:69], s[0:1], 0x30
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_lshl_or_b32 v15, v0, 5, v0
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_lshlrev_b32 v16, 6, v58
	.loc	1 590 31                        ; attention.py:590:31
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_and_b32 v4, 24, v57
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v21, s10, v10
	v_dual_mov_b32 v19, 0x5410 :: v_dual_lshlrev_b32 v62, 2, v60
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v22, v60, 5, v4
	v_bfe_i32 v14, v0, 6, 1
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s57, 0xffff
	s_mov_b32 s64, s56
	v_mov_b32_e32 v148, 0xff800000
	buffer_load_u16 v9, v3, s[64:67], 0 offen
	.loc	1 693 86                        ; attention.py:693:86
	v_lshlrev_b32_e32 v3, 3, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v18, 16, v0
	v_lshlrev_b32_e32 v63, 4, v0
	v_lshlrev_b32_e32 v7, 3, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s43, v3
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[46:47], null, s43, v2, v[3:4]
	v_mov_b32_e32 v3, v1
	v_cmp_eq_u32_e64 s2, 0, v18
	v_and_or_b32 v71, 0x39e, v15, v16
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, 8, v21
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v45, 4, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v15, 0x1054, v19, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v19, 8, v22
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v5, 0, v61
	v_dual_mov_b32 v17, 0xff800000 :: v_dual_lshlrev_b32 v8, 3, v59
	v_lshlrev_b32_e32 v13, 2, v59
	v_and_b32_e32 v14, 0x84, v14
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v67, v63, v6
	v_mov_b32_e32 v6, v1
	v_lshl_or_b32 v23, v55, 4, v7
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v18, s11, v21
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s12, s1, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s13, s1, 3
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, 1, v21
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v21, 16, v22
	v_add_nc_u32_e32 v73, 0, v22
	v_xor_b32_e32 v22, 24, v22
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v47, s11, v16
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v102, 0, v19
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v11, 4, v0
	v_lshrrev_b32_e32 v12, 1, v55
	v_lshl_or_b32 v70, v60, 8, v8
	v_lshl_add_u32 v72, v60, 1, v5
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v8, v1
	v_xor_b32_e32 v13, v14, v13
	v_cndmask_b32_e64 v20, 0x3276, v20, s2
	v_lshl_or_b32 v15, v15, 8, v15
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v103, 0, v21
	v_add_nc_u32_e32 v104, 0, v22
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s56, s3, 11
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v131, s8, v47
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v132, s9, v47
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[47:48], v73
	ds_load_b64 v[49:50], v102
	ds_load_b64 v[51:52], v103
	ds_load_b64 v[53:54], v104
	v_and_or_b32 v68, v11, 1, s56
	v_or3_b32 v69, s56, v11, 62
	v_xor_b32_e32 v83, v23, v12
	v_xor_b32_e32 v12, 8, v70
	v_and_or_b32 v107, v11, 2, v13
	v_and_b32_e32 v11, 0x540054, v15
	v_lshl_or_b32 v13, v20, 8, v20
	v_mul_lo_u32 v10, s7, v10
	v_xor_b32_e32 v14, 4, v71
	v_add_nc_u32_e32 v109, 0, v12
	v_xor_b32_e32 v12, 0x210, v107
	v_lshl_or_b32 v11, v11, 4, v11
	v_and_b32_e32 v13, 0x760076, v13
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v64, 1, v62
	v_or_b32_e32 v65, 2, v62
	v_or_b32_e32 v66, 3, v62
	v_xor_b32_e32 v24, 8, v67
	v_xor_b32_e32 v23, 16, v70
	v_xor_b32_e32 v26, 24, v70
	v_xor_b32_e32 v27, 32, v70
	v_xor_b32_e32 v28, 40, v70
	v_xor_b32_e32 v29, 48, v70
	v_xor_b32_e32 v30, 56, v70
	v_xor_b32_e32 v31, 64, v70
	v_xor_b32_e32 v32, 0x48, v70
	v_xor_b32_e32 v33, 0x50, v70
	v_xor_b32_e32 v34, 0x58, v70
	v_xor_b32_e32 v35, 0x60, v70
	v_xor_b32_e32 v36, 0x68, v70
	v_xor_b32_e32 v37, 0x70, v70
	v_xor_b32_e32 v38, 0x78, v70
	v_xor_b32_e32 v39, 8, v71
	v_xor_b32_e32 v40, 12, v71
	v_xor_b32_e32 v41, 16, v71
	v_xor_b32_e32 v42, 20, v71
	v_xor_b32_e32 v43, 24, v71
	v_xor_b32_e32 v44, 28, v71
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 1, v16
	v_xor_b32_e32 v16, 0x840, v83
	v_add_nc_u32_e32 v124, 0, v14
	v_xor_b32_e32 v14, 0x108, v107
	v_xor_b32_e32 v15, 0x318, v107
	v_and_b32_e32 v134, 0x5040504, v11
	v_lshl_or_b32 v11, v13, 4, v13
	v_add_nc_u32_e32 v135, 0, v12
	v_lshl_add_u32 v12, s7, 3, v10
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v138, v10, v62
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s12, s3, s12
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s81, s4, 0x3fb8aa3b
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s4, s6, s12
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s5, s5, s13
	v_or_b32_e32 v74, 8, v68
	v_or_b32_e32 v75, 10, v68
	v_or_b32_e32 v76, 12, v68
	v_or_b32_e32 v77, 14, v68
	v_or_b32_e32 v78, 16, v68
	v_or_b32_e32 v79, 18, v68
	v_or_b32_e32 v80, 20, v68
	v_or_b32_e32 v81, 22, v68
	v_or_b32_e32 v82, 24, v68
	v_or_b32_e32 v84, 26, v68
	v_or_b32_e32 v85, 28, v68
	v_or_b32_e32 v86, 30, v68
	v_or_b32_e32 v87, 32, v68
	v_or_b32_e32 v88, 34, v68
	v_or_b32_e32 v89, 36, v68
	v_or_b32_e32 v90, 38, v68
	v_or_b32_e32 v91, 40, v68
	v_or_b32_e32 v92, 42, v68
	v_or_b32_e32 v93, 44, v68
	v_or_b32_e32 v94, 46, v68
	v_or_b32_e32 v95, 48, v68
	v_or_b32_e32 v96, 50, v68
	v_or_b32_e32 v97, 52, v68
	v_or_b32_e32 v98, 54, v68
	v_or_b32_e32 v99, 56, v68
	v_or_b32_e32 v100, 58, v68
	v_or_b32_e32 v101, 60, v68
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v105, s8, v18
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v106, s9, v18
	v_add_nc_u32_e32 v108, 0, v24
	v_add_nc_u32_e32 v110, 0, v23
	v_add_nc_u32_e32 v111, 0, v26
	v_add_nc_u32_e32 v112, 0, v27
	v_add_nc_u32_e32 v113, 0, v28
	v_add_nc_u32_e32 v114, 0, v29
	v_add_nc_u32_e32 v115, 0, v30
	v_add_nc_u32_e32 v116, 0, v31
	v_add_nc_u32_e32 v117, 0, v32
	v_add_nc_u32_e32 v118, 0, v33
	v_add_nc_u32_e32 v119, 0, v34
	v_add_nc_u32_e32 v120, 0, v35
	v_add_nc_u32_e32 v121, 0, v36
	v_add_nc_u32_e32 v122, 0, v37
	v_add_nc_u32_e32 v123, 0, v38
	v_add_nc_u32_e32 v125, 0, v39
	v_add_nc_u32_e32 v126, 0, v40
	v_add_nc_u32_e32 v127, 0, v41
	v_add_nc_u32_e32 v128, 0, v42
	v_add_nc_u32_e32 v129, 0, v43
	v_add_nc_u32_e32 v130, 0, v44
	v_add_nc_u32_e32 v133, 0, v16
	v_add_nc_u32_e32 v136, 0, v14
	v_add_nc_u32_e32 v137, 0, v15
	v_and_b32_e32 v139, 0x7060706, v11
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v140, v12, v62
	v_add_nc_u32_e32 v141, v12, v64
	v_add_nc_u32_e32 v142, v12, v65
	v_add_nc_u32_e32 v143, v12, v66
	v_add_nc_u32_e32 v144, 1, v138
	v_add_nc_u32_e32 v145, 2, v138
	v_add_nc_u32_e32 v147, 3, v138
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s10, s10, s7
	s_and_b32 s59, s59, 0xffff
	s_mov_b32 s72, s58
	s_add_i32 s58, s4, s5
	s_lshl_b32 s57, s43, 4
	s_lshl_b32 s78, s43, 5
	s_mul_i32 s79, s43, 48
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s80, 0x76543210
	s_mov_b32 s74, s66
	s_mov_b32 s75, s67
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s65, s55, 0xffff
	s_mov_b32 s64, s54
	s_mov_b32 s54, s66
	s_mov_b32 s55, s67
	s_mov_b32 s73, s59
	s_add_i32 s58, s58, s10
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e32 vcc_lo, s42, v45
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v146, 16, v9
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v151, 1, v0
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s8, s76, s56
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v9, s44 :: v_dual_add_nc_u32 v150, 0, v67
	v_dual_mov_b32 v10, s45 :: v_dual_mov_b32 v11, s46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v151, s8, v151
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v12, s47 :: v_dual_mov_b32 v13, s48
	v_dual_mov_b32 v14, s49 :: v_dual_mov_b32 v15, s50
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[151:152], null, v151, s42, v[45:46]
	.loc	1 639 33                        ; attention.py:639:33
	v_mov_b32_e32 v16, s51
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v27, s76, v62
	v_or_b32_e32 v18, s76, v64
	v_or_b32_e32 v19, s76, v65
	v_or_b32_e32 v23, s76, v66
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s4, s58, s76
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v151, 0x80000000, v151, vcc_lo
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v205, s4, v138, 2
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v27, v106
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v19, v105
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s14, v18, v106
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[151:154], v151, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s15, v19, v106
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v27, v131
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v27, v132
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s10, v23, v105
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s16, v23, v106
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v18, v131
	v_cmp_ge_i32_e64 s12, v19, v131
	v_cmp_ge_i32_e64 s13, v23, v131
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s17, v18, v132
	v_cmp_le_i32_e64 s18, v19, v132
	v_cmp_le_i32_e64 s19, v23, v132
	v_or_b32_e32 v38, 2, v68
	v_or_b32_e32 v39, 4, v68
	v_or_b32_e32 v42, 6, v68
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s12, s12, s18
	s_and_b32 s13, s13, s19
	s_and_b32 s12, s2, s12
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_add_lshl_u32 v37, s76, v68, 1
	v_add_lshl_u32 v40, v74, s76, 1
	v_add_lshl_u32 v41, v75, s76, 1
	v_add_lshl_u32 v43, v76, s76, 1
	v_add_lshl_u32 v44, v77, s76, 1
	v_add_lshl_u32 v20, v78, s76, 1
	v_add_lshl_u32 v21, v79, s76, 1
	v_add_lshl_u32 v22, v80, s76, 1
	v_add_lshl_u32 v24, v81, s76, 1
	v_add_lshl_u32 v26, v82, s76, 1
	v_add_lshl_u32 v28, v84, s76, 1
	v_add_lshl_u32 v29, v85, s76, 1
	v_add_lshl_u32 v30, v86, s76, 1
	v_add_lshl_u32 v31, v87, s76, 1
	v_add_lshl_u32 v32, v88, s76, 1
	v_add_lshl_u32 v33, v89, s76, 1
	v_add_lshl_u32 v34, v90, s76, 1
	v_add_lshl_u32 v35, v91, s76, 1
	v_add_lshl_u32 v36, v92, s76, 1
	v_add_lshl_u32 v155, v93, s76, 1
	v_add_lshl_u32 v156, v94, s76, 1
	v_add_lshl_u32 v161, v95, s76, 1
	v_add_lshl_u32 v162, v96, s76, 1
	v_add_lshl_u32 v163, v97, s76, 1
	v_add_lshl_u32 v164, v98, s76, 1
	v_add_lshl_u32 v165, v99, s76, 1
	v_add_lshl_u32 v166, v100, s76, 1
	v_add_lshl_u32 v167, v101, s76, 1
	v_add_lshl_u32 v168, s76, v69, 1
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s41, 0xff800000, v17
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v150, v[151:152]
	ds_store_b64 v108, v[153:154]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[150:153], v73 offset1:1
	ds_load_2addr_stride64_b64 v[157:160], v73 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[201:204], v102 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[150:151], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[152:153], v[47:48], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[185:192], v[157:158], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[159:160], v[47:48], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v102 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v103 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[201:202], v[49:50], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[203:204], v[49:50], v[177:184] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v157, s4, v143, 2
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[185:192], v[9:10], v[49:50], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[11:12], v[49:50], v[193:200] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v103 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[13:14], v[51:52], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[15:16], v[51:52], v[177:184] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[13:16], v104 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[185:192], v[9:10], v[51:52], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[11:12], v[51:52], v[193:200] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v104 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[13:14], v[53:54], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[15:16], v[53:54], v[177:184] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v13, s4, v144, 2
	v_add_lshl_u32 v14, s4, v140, 2
	v_add_lshl_u32 v15, s4, v141, 2
	v_add_lshl_u32 v16, s4, v142, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v150, v169
	v_cvt_f32_i32_e32 v158, v170
	v_cvt_f32_i32_e32 v201, v171
	v_cvt_f32_i32_e32 v169, v172
	v_cvt_f32_i32_e32 v170, v173
	v_cvt_f32_i32_e32 v173, v176
	v_cvt_f32_i32_e32 v176, v179
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v159, 0, v107
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v171, v174
	v_cvt_f32_i32_e32 v174, v177
	v_cvt_f32_i32_e32 v177, v180
	v_cvt_f32_i32_e32 v172, v175
	v_cvt_f32_i32_e32 v175, v178
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[193:200], v[11:12], v[53:54], v[193:200] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v11, s4, v145, 2
	v_add_lshl_u32 v12, s4, v147, 2
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v27, v105
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[185:192], v[9:10], v[53:54], v[185:192] neg_lo:[1,1,0]
	v_mad_u64_u32 v[9:10], null, s8, s43, v[46:47]
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v18, v105
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s4, s6
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v178, v181
	v_cvt_f32_i32_e32 v179, v182
	v_cvt_f32_i32_e32 v181, v183
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s8, s14
	s_and_b32 s8, s9, s15
	s_and_b32 s9, s10, s16
	s_and_b32 s10, s5, s7
	s_and_b32 s5, s1, s4
	s_and_b32 s4, s1, s8
	s_and_b32 s14, s11, s17
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v151, 1, v9
	v_add_lshl_u32 v152, v9, s57, 1
	v_add_lshl_u32 v153, v9, s78, 1
	v_add_lshl_u32 v154, v9, s79, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v9, 0x80000000, v205, s5
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s11, s1, s9
	s_and_b32 s7, s1, s6
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s2, s10
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s2, s14
	s_and_b32 s9, s2, s13
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v10, 0x80000000, v13, s7
	v_cndmask_b32_e64 v13, 0x80000000, v14, s10
	v_cndmask_b32_e64 v14, 0x80000000, v15, s8
	v_cndmask_b32_e64 v15, 0x80000000, v16, s12
	v_cndmask_b32_e64 v16, 0x80000000, v157, s9
	s_clause 0x7
	buffer_load_b32 v9, v9, s[68:71], 0 offen
	buffer_load_b32 v11, v11, s[68:71], 0 offen
	buffer_load_b32 v12, v12, s[68:71], 0 offen
	buffer_load_b32 v18, v13, s[68:71], 0 offen
	buffer_load_b32 v19, v16, s[68:71], 0 offen
	buffer_load_b32 v23, v14, s[68:71], 0 offen
	buffer_load_b32 v10, v10, s[68:71], 0 offen
	buffer_load_b32 v27, v15, s[68:71], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v182, v184
	v_cvt_f32_i32_e32 v183, v185
	v_cvt_f32_i32_e32 v184, v186
	v_cvt_f32_i32_e32 v185, v187
	v_cvt_f32_i32_e32 v186, v188
	v_cvt_f32_i32_e32 v187, v189
	v_cvt_f32_i32_e32 v188, v190
	v_cvt_f32_i32_e32 v189, v191
	v_cvt_f32_i32_e32 v190, v192
	v_cvt_f32_i32_e32 v191, v193
	v_cvt_f32_i32_e32 v192, v194
	v_cvt_f32_i32_e32 v193, v195
	v_cvt_f32_i32_e32 v194, v196
	v_cvt_f32_i32_e32 v195, v197
	v_cvt_f32_i32_e32 v196, v198
	v_cvt_f32_i32_e32 v197, v199
	v_cvt_f32_i32_e32 v198, v200
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v13, 0xff800000, v9, s5
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v14, 0xff800000, v11, s4
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v16, 0xff800000, v12, s11
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v9, 0xff800000, v18, s10
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v18, v38, s76, 1
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v11, 0xff800000, v23, s8
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v23, v39, s76, 1
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v15, 0xff800000, v10, s7
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v10, 0xff800000, v27, s12
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v27, v42, s76, 1
	s_clause 0x7
	buffer_load_u16 v37, v37, s[72:75], 0 offen
	buffer_load_u16 v18, v18, s[72:75], 0 offen
	buffer_load_u16 v38, v23, s[72:75], 0 offen
	buffer_load_u16 v39, v27, s[72:75], 0 offen
	buffer_load_u16 v40, v40, s[72:75], 0 offen
	buffer_load_u16 v41, v41, s[72:75], 0 offen
	buffer_load_u16 v42, v43, s[72:75], 0 offen
	buffer_load_u16 v43, v44, s[72:75], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v23, v146, v150 :: v_dual_mov_b32 v150, v25
	v_mul_f32_e32 v25, v146, v158
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v12, 0xff800000, v19, s9
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v158, 0, v71
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v9
	v_cmp_neq_f32_e64 s17, 0xff800000, v10
	v_cmp_neq_f32_e64 s18, 0xff800000, v11
	v_cmp_neq_f32_e64 s19, 0xff800000, v12
	v_cmp_neq_f32_e64 s6, 0xff800000, v13
	v_cmp_neq_f32_e64 s13, 0xff800000, v14
	v_cmp_neq_f32_e64 s14, 0xff800000, v15
	v_cmp_neq_f32_e64 s15, 0xff800000, v16
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s10, s10, s16
	s_and_b32 s6, s5, s6
	s_and_b32 s4, s4, s13
	s_and_b32 s7, s7, s14
	s_and_b32 s5, s11, s15
	s_and_b32 s11, s12, s17
	s_and_b32 s9, s9, s19
	s_and_b32 s8, s8, s18
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_add_i32 s76, s76, 64
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s76, s77
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v27, 16, v37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v160, v25, v18 :: v_dual_add_nc_u32 v19, 0, v83
	v_dual_mul_f32 v18, v146, v201 :: v_dual_lshlrev_b32 v25, 16, v38
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v41, 16, v41
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v180, v18, v25 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v18, v148, v148 :: v_dual_mul_f32 v157, v23, v27
	v_mov_b32_e32 v23, v149
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x17
	buffer_load_u16 v20, v20, s[72:75], 0 offen
	buffer_load_u16 v21, v21, s[72:75], 0 offen
	buffer_load_u16 v22, v22, s[72:75], 0 offen
	buffer_load_u16 v24, v24, s[72:75], 0 offen
	buffer_load_u16 v25, v26, s[72:75], 0 offen
	buffer_load_u16 v26, v28, s[72:75], 0 offen
	buffer_load_u16 v28, v29, s[72:75], 0 offen
	buffer_load_u16 v29, v30, s[72:75], 0 offen
	buffer_load_u16 v30, v31, s[72:75], 0 offen
	buffer_load_u16 v31, v32, s[72:75], 0 offen
	buffer_load_u16 v32, v33, s[72:75], 0 offen
	buffer_load_u16 v33, v34, s[72:75], 0 offen
	buffer_load_u16 v34, v35, s[72:75], 0 offen
	buffer_load_u16 v35, v36, s[72:75], 0 offen
	buffer_load_u16 v36, v155, s[72:75], 0 offen
	buffer_load_u16 v37, v156, s[72:75], 0 offen
	buffer_load_u16 v38, v161, s[72:75], 0 offen
	buffer_load_u16 v44, v162, s[72:75], 0 offen
	buffer_load_u16 v148, v163, s[72:75], 0 offen
	buffer_load_u16 v149, v164, s[72:75], 0 offen
	buffer_load_u16 v155, v165, s[72:75], 0 offen
	buffer_load_u16 v156, v166, s[72:75], 0 offen
	buffer_load_u16 v161, v167, s[72:75], 0 offen
	buffer_load_u16 v162, v168, s[72:75], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v166, v146, v172 :: v_dual_add_nc_u32 v27, 0, v70
	v_mul_f32_e32 v163, v146, v169
	v_mul_f32_e32 v164, v146, v170
	v_mul_f32_e32 v165, v146, v171
	v_mul_f32_e32 v167, v146, v173
	v_mul_f32_e32 v168, v146, v174
	v_mul_f32_e32 v169, v146, v175
	v_mul_f32_e32 v170, v146, v176
	v_mul_f32_e32 v171, v146, v177
	v_mul_f32_e32 v172, v146, v178
	v_mul_f32_e32 v173, v146, v179
	v_mul_f32_e32 v174, v146, v181
	v_mul_f32_e32 v175, v146, v182
	v_mul_f32_e32 v176, v146, v183
	v_mul_f32_e32 v199, v146, v184
	v_mul_f32_e32 v200, v146, v185
	v_mul_f32_e32 v201, v146, v186
	v_mul_f32_e32 v202, v146, v187
	v_mul_f32_e32 v203, v146, v188
	v_mul_f32_e32 v204, v146, v189
	v_mul_f32_e32 v205, v146, v190
	v_mul_f32_e32 v191, v146, v191
	v_mul_f32_e32 v192, v146, v192
	v_mul_f32_e32 v193, v146, v193
	v_mul_f32_e32 v194, v146, v194
	v_mul_f32_e32 v196, v146, v196
	v_mul_f32_e32 v197, v146, v197
	v_mul_f32_e32 v198, v146, v198
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v195, v146, v195 :: v_dual_mul_f32 v184, v165, v41
	v_mul_f32_e32 v187, v166, v42
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v19, v[13:14], v[15:16] offset1:16
	ds_store_2addr_b64 v133, v[9:10], v[11:12] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v182, v164, v40 :: v_dual_mul_f32 v181, v163, v39
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v188, v170, v22 :: v_dual_lshlrev_b32 v161, 16, v161
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v185, v167, v43 :: v_dual_lshlrev_b32 v206, 16, v162
	v_dual_mul_f32 v186, v169, v21 :: v_dual_mul_f32 v183, v168, v20
	v_mul_f32_e32 v166, v202, v34
	v_dual_mul_f32 v190, v171, v24 :: v_dual_mul_f32 v189, v172, v25
	v_dual_mul_f32 v179, v173, v26 :: v_dual_mul_f32 v178, v174, v28
	v_dual_mul_f32 v177, v175, v29 :: v_dual_mul_f32 v176, v176, v30
	v_dual_mul_f32 v175, v199, v31 :: v_dual_mul_f32 v164, v200, v32
	v_dual_mul_f32 v165, v201, v33 :: v_dual_mul_f32 v168, v204, v36
	v_dual_mul_f32 v167, v203, v35 :: v_dual_mul_f32 v172, v193, v148
	v_dual_mul_f32 v169, v205, v37 :: v_dual_mul_f32 v170, v191, v38
	v_dual_mul_f32 v171, v192, v44 :: v_dual_mul_f32 v174, v195, v155
	v_dual_mul_f32 v163, v196, v156 :: v_dual_mul_f32 v162, v197, v161
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[20:21], v27
	ds_load_b64 v[24:25], v109
	ds_load_b64 v[28:29], v110
	ds_load_b64 v[33:34], v111
	ds_load_b64 v[35:36], v112
	ds_load_b64 v[37:38], v113
	ds_load_b64 v[39:40], v114
	ds_load_b64 v[191:192], v115
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v161, v198, v206
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[9:10], v120
	ds_load_b64 v[11:12], v121
	ds_load_b64 v[197:198], v122
	ds_load_b64 v[199:200], v123
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v173, v194, v149
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[13:14], v116
	ds_load_b64 v[15:16], v117
	ds_load_b64 v[193:194], v118
	ds_load_b64 v[195:196], v119
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v201, 0, 1, s4
	v_cndmask_b32_e64 v202, 0, 1, s6
	v_cndmask_b32_e64 v203, 0, 1, s5
	v_cndmask_b32_e64 v204, 0, 1, s7
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v156, 0x3fb8aa3b, v20
	v_dual_mul_f32 v155, 0x3fb8aa3b, v24 :: v_dual_mul_f32 v30, 0x3fb8aa3b, v29
	v_dual_mul_f32 v149, 0x3fb8aa3b, v28 :: v_dual_mul_f32 v148, 0x3fb8aa3b, v33
	v_dual_mul_f32 v29, 0x3fb8aa3b, v34 :: v_dual_mul_f32 v28, 0x3fb8aa3b, v36
	v_mul_f32_e32 v36, 0x3fb8aa3b, v9
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e64 v9.l, v201.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v14
	v_mul_f32_e32 v14, 0x3fb8aa3b, v10
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e64 v10.l, v202.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v41, 0x3fb8aa3b, v191 :: v_dual_mul_f32 v24, 0x3fb8aa3b, v192
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v9.l, 8, v9.l
	v_cndmask_b32_e64 v191, 0, 1, s11
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v31, 0x3fb8aa3b, v25 :: v_dual_mul_f32 v44, 0x3fb8aa3b, v35
	v_dual_mul_f32 v42, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v25, 0x3fb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v9.l, v10.l, v9.l
	v_mov_b16_e64 v10.l, v203.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v40, 0x3fb8aa3b, v13 :: v_dual_mul_f32 v39, 0x3fb8aa3b, v15
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v192, 0, 1, s10
	v_mov_b16_e64 v15.l, v204.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_mov_b16_e64 v10.l, v191.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v43, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v26, 0x3fb8aa3b, v38
	v_dual_mul_f32 v38, 0x3fb8aa3b, v193 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v195
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v9.h, v15.l, v9.h
	v_cndmask_b32_e64 v193, 0, 1, s9
	v_mov_b16_e64 v15.l, v192.l
	v_lshlrev_b16 v10.l, 8, v10.l
	v_cndmask_b32_e64 v191, 0, 1, s8
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v192, 0x80000000, v151, s0
	v_cndmask_b32_e64 v151, 0x80000000, v154, s0
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v32, 0x3fb8aa3b, v21
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v10.l, v15.l, v10.l
	v_mov_b16_e64 v15.l, v193.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v21, 0x3fb8aa3b, v16 :: v_dual_mul_f32 v20, 0x3fb8aa3b, v194
	v_dual_mul_f32 v35, 0x3fb8aa3b, v11 :: v_dual_mul_f32 v16, 0x3fb8aa3b, v196
	v_mul_f32_e32 v33, 0x3fb8aa3b, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v10.h, 8, v15.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v11, 0x3fb8aa3b, v200 :: v_dual_fmac_f32 v22, s81, v175
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v38, s81, v166
	v_fmac_f32_e32 v33, s81, v162
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_or_b16 v10.h, v191.l, v10.h
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v191, 0x80000000, v152, s0
	v_cndmask_b32_e64 v152, 0x80000000, v153, s0
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b16 v159, v9
	ds_store_b16_d16_hi v135, v9
	ds_store_b16 v136, v10
	ds_store_b16_d16_hi v137, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v158
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v158 offset:32
	ds_load_u16_d16 v10, v124
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v124 offset:32
	ds_load_u16_d16 v15, v125
	ds_load_u16_d16 v153, v125 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v153, v126
	ds_load_u16_d16 v154, v126 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v154, v127
	ds_load_u16_d16 v158, v127 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v11, s81, v161
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v158, v128
	ds_load_u16_d16 v159, v128 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v159, v129
	ds_load_u16_d16 v161, v129 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v161, v130
	ds_load_u16_d16 v162, v130 offset:32
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v13, 0x3fb8aa3b, v12 :: v_dual_mul_f32 v12, 0x3fb8aa3b, v198
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v155, s81, v180 :: v_dual_fmac_f32 v28, s81, v186
	v_dual_fmac_f32 v39, s81, v164 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v197
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v12, s81, v163
	v_dual_fmac_f32 v30, s81, v184 :: v_dual_fmac_f32 v25, s81, v179
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v162.h, 1, v9.h
	v_and_b16 v163.h, 1, v9.l
	v_and_b16 v163.l, 1, v10.h
	v_lshrrev_b16 v9.l, 8, v9.l
	v_and_b16 v164.l, 1, v153.l
	v_cmp_eq_u16_e64 s8, 1, v162.h
	v_and_b16 v162.h, 1, v154.l
	v_cmp_eq_u16_e64 s9, 1, v163.l
	v_and_b16 v163.l, 1, v154.h
	v_cmp_eq_u16_e64 s10, 1, v164.l
	v_and_b16 v164.l, 1, v158.l
	v_cmp_eq_u16_e64 s11, 1, v162.h
	v_and_b16 v162.h, 1, v158.h
	v_cmp_eq_u16_e64 s19, 1, v163.l
	v_and_b16 v163.l, 1, v159.l
	v_cmp_eq_u16_e64 s12, 1, v164.l
	v_and_b16 v164.l, 1, v159.h
	v_cmp_eq_u16_e64 s16, 1, v162.h
	v_and_b16 v162.h, 1, v161.l
	v_cmp_eq_u16_e64 s13, 1, v163.l
	v_and_b16 v163.l, 1, v161.h
	v_cmp_eq_u16_e64 s17, 1, v164.l
	v_and_b16 v164.l, 1, v162.l
	v_lshrrev_b16 v154.h, 8, v154.h
	v_lshrrev_b16 v159.l, 8, v159.l
	v_cmp_eq_u16_e64 s18, 1, v163.l
	v_and_b16 v163.l, 1, v15.l
	v_lshrrev_b16 v15.l, 8, v15.l
	v_cmp_eq_u16_e64 s14, 1, v162.h
	v_and_b16 v162.h, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v10.l
	v_cmp_eq_u16_e64 s15, 1, v164.l
	v_and_b16 v15.l, 1, v15.l
	v_and_b16 v164.l, 1, v153.h
	v_lshrrev_b16 v153.h, 8, v153.h
	v_lshrrev_b16 v9.h, 8, v9.h
	v_lshrrev_b16 v10.h, 8, v10.h
	v_lshrrev_b16 v153.l, 8, v153.l
	v_lshrrev_b16 v154.l, 8, v154.l
	v_lshrrev_b16 v158.l, 8, v158.l
	v_lshrrev_b16 v158.h, 8, v158.h
	v_lshrrev_b16 v159.h, 8, v159.h
	v_lshrrev_b16 v161.l, 8, v161.l
	v_lshrrev_b16 v161.h, 8, v161.h
	v_lshrrev_b16 v162.l, 8, v162.l
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v154.h, 1, v154.h
	v_and_b16 v159.l, 1, v159.l
	v_cmp_eq_u16_e64 s23, 1, v15.l
	v_and_b16 v10.l, 1, v10.l
	v_and_b16 v153.h, 1, v153.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v156, s81, v157 :: v_dual_fmac_f32 v149, s81, v182
	v_dual_fmac_f32 v32, s81, v160 :: v_dual_add_nc_u32 v157, 0, v63
	v_fmac_f32_e32 v31, s81, v181
	v_dual_fmac_f32 v24, s81, v177 :: v_dual_fmac_f32 v35, s81, v172
	v_dual_fmac_f32 v40, s81, v176 :: v_dual_fmac_f32 v13, s81, v173
	v_fmac_f32_e32 v36, s81, v170
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.h, 1, v9.h
	v_and_b16 v10.h, 1, v10.h
	v_and_b16 v153.l, 1, v153.l
	v_and_b16 v154.l, 1, v154.l
	v_and_b16 v158.l, 1, v158.l
	v_and_b16 v158.h, 1, v158.h
	v_and_b16 v159.h, 1, v159.h
	v_and_b16 v161.l, 1, v161.l
	v_and_b16 v161.h, 1, v161.h
	v_and_b16 v162.l, 1, v162.l
	v_cmp_eq_u16_e64 s20, 1, v163.h
	v_cmp_eq_u16_e64 s29, 1, v9.l
	v_cmp_eq_u16_e64 s27, 1, v154.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v172, 0xff800000, v30, s23
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v34, s81, v174
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s38, 1, v159.l
	v_cmp_eq_u16_e64 s22, 1, v162.h
	v_cmp_eq_u16_e64 s21, 1, v10.l
	v_cmp_eq_u16_e64 s24, 1, v163.l
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v160, v23, v23 :: v_dual_fmac_f32 v29, s81, v185
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v148, s81, v187 :: v_dual_fmac_f32 v43, s81, v188
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s26, 1, v164.l
	v_cmp_eq_u16_e64 s25, 1, v153.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v44, s81, v183 :: v_dual_fmac_f32 v41, s81, v178
	v_dual_fmac_f32 v26, s81, v190 :: v_dual_fmac_f32 v21, s81, v165
	v_dual_fmac_f32 v42, s81, v189 :: v_dual_fmac_f32 v37, s81, v168
	v_fmac_f32_e32 v14, s81, v171
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s28, 1, v158.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v170, 0xff800000, v32, s29
	v_cndmask_b32_e64 v30, 0xff800000, v36, s12
	v_cndmask_b32_e64 v174, 0xff800000, v28, s27
	v_cndmask_b32_e64 v28, 0xff800000, v34, s14
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s30, 1, v159.h
	v_cmp_eq_u16_e64 s31, 1, v161.h
	v_cmp_eq_u16_e64 s33, 1, v9.h
	v_cmp_eq_u16_e64 s34, 1, v10.h
	v_cmp_eq_u16_e64 s35, 1, v153.l
	v_cmp_eq_u16_e64 s36, 1, v154.l
	v_cmp_eq_u16_e64 s37, 1, v158.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v13, s38
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v16, s81, v169
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v169, 0xff800000, v156, s20
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v20, s81, v167
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s39, 1, v161.l
	v_cmp_eq_u16_e64 s40, 1, v162.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v155, 0xff800000, v155, s22
	v_cndmask_b32_e64 v156, 0xff800000, v31, s21
	v_cndmask_b32_e64 v171, 0xff800000, v149, s24
	v_cndmask_b32_e64 v148, 0xff800000, v148, s26
	v_cndmask_b32_e64 v149, 0xff800000, v29, s25
	v_cndmask_b32_e64 v173, 0xff800000, v44, s19
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v193, 0xff800000, v43, s16
	v_cndmask_b32_e64 v195, 0xff800000, v42, s17
	v_cndmask_b32_e64 v197, 0xff800000, v41, s18
	v_cndmask_b32_e64 v199, 0xff800000, v40, s8
	v_cndmask_b32_e64 v39, 0xff800000, v39, s9
	v_cndmask_b32_e64 v32, 0xff800000, v38, s10
	v_cndmask_b32_e64 v37, 0xff800000, v37, s11
	v_cndmask_b32_e64 v35, 0xff800000, v35, s13
	v_cndmask_b32_e64 v194, 0xff800000, v26, s28
	v_cndmask_b32_e64 v201, 0xff800000, v33, s15
	v_cndmask_b32_e64 v196, 0xff800000, v25, s30
	v_cndmask_b32_e64 v198, 0xff800000, v24, s31
	v_cndmask_b32_e64 v200, 0xff800000, v22, s33
	v_cndmask_b32_e64 v40, 0xff800000, v21, s34
	v_cndmask_b32_e64 v31, 0xff800000, v14, s37
	v_cndmask_b32_e64 v29, 0xff800000, v12, s39
	v_cndmask_b32_e64 v202, 0xff800000, v11, s40
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v169, v170
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v20, s35
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v153, v36, v28
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v16, s36
	ds_store_b64 v27, v[169:170]
	ds_store_b64 v109, v[155:156]
	ds_store_b64 v110, v[171:172]
	ds_store_b64 v111, v[148:149]
	ds_store_b64 v112, v[173:174]
	ds_store_b64 v113, v[193:194]
	ds_store_b64 v114, v[195:196]
	ds_store_b64 v115, v[197:198]
	ds_store_b64 v116, v[199:200]
	ds_store_b64 v117, v[39:40]
	ds_store_b64 v118, v[32:33]
	ds_store_b64 v119, v[37:38]
	ds_store_b64 v120, v[30:31]
	ds_store_b64 v121, v[35:36]
	ds_store_b64 v122, v[28:29]
	ds_store_b64 v123, v[201:202]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[11:14], v192, s[64:67], 0 offen
	buffer_load_b128 v[41:44], v191, s[64:67], 0 offen
	buffer_load_b128 v[161:164], v152, s[64:67], 0 offen
	buffer_load_b128 v[165:168], v151, s[64:67], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v10, v174, v193, v194
	v_max3_f32 v16, v195, v196, v197
	v_max3_f32 v24, v198, v199, v200
	v_max3_f32 v25, v156, v171, v172
	v_max3_f32 v26, v39, v40, v32
	v_max3_f32 v27, v33, v37, v38
	v_max3_f32 v34, v30, v31, v35
	v_max_f32_e32 v154, v201, v202
	v_max3_f32 v158, v148, v149, v173
	v_max3_f32 v10, v10, v16, v24
	v_max3_f32 v9, v9, v155, v25
	v_max3_f32 v16, v26, v27, v34
	v_max3_f32 v24, v153, v29, v154
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_2addr_b64 v[19:22], v19 offset1:16
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v15.h, 0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v9, v9, v158, v10
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v157, v[11:14]
	s_waitcnt vmcnt(2)
	ds_store_b128 v157, v[41:44] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v157, v[161:164] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v157, v[165:168] offset:6144
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v9, v9, v16, v24
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v178.h, v15.h
	v_mov_b16_e64 v176.h, v15.h
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v16, v19, v19
.Ltmp12:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v181.h, v15.h
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v24, v9, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v190.h, v15.h
	v_mov_b16_e64 v177.h, v15.h
	v_mov_b16_e64 v186.h, v15.h
	v_mov_b16_e64 v180.h, v15.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v151, v17, v9, v24
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v10, v21, v21
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v185.h, v15.h
	v_mov_b16_e64 v183.h, v15.h
	v_mov_b16_e64 v184.h, v15.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v30, v30, v151
	v_sub_f32_e32 v28, v28, v151
	v_sub_f32_e32 v39, v39, v151
	v_sub_f32_e32 v158, v197, v151
	v_sub_f32_e32 v153, v193, v151
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v30, v30
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v158, v158
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v159, v198, v151 :: v_dual_max_f32 v10, v16, v10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v153, v153
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v27, v172, v151
	v_sub_f32_e32 v29, v29, v151
	v_sub_f32_e32 v172, v201, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v30, 0, v30, s12
	v_cndmask_b32_e64 v28, 0, v28, s14
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v39, 0, v39, s9
	v_cndmask_b32_e64 v158, 0, v158, s18
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v29, v29
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v178.l, v30.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v31, v31, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v176.l, v28.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v35, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v190.l, v39.h
	v_and_b32_e32 v178, 1, v178
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v31, v31
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v176, 1, v176
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v34, v148, v151
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v186.l, v158.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v26, v171, v151
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v171, v17, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v153, 0, v153, s16
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v172, v172
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v193, 0, v31, s37
	.loc	1 689 61 is_stmt 1              ; attention.py:689:61
	v_exp_f32_e32 v171, v171
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v31, 0, v35, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v185.l, v153.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v24, v155, v151
	v_sub_f32_e32 v155, v195, v151
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v195, 0, v29, s39
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v177.l, v31.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v148, v149, v151
	v_sub_f32_e32 v149, v173, v151
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v9, v10, v20, v22
.Ltmp18:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v169, v151
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v155, v155
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v172, s15
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v171, 0, v171, s41
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v17, v9
.Ltmp20:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v38, v38
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v32, v32, v151
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v171
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v171
	v_mul_f32_e32 v3, v3, v171
	v_mul_f32_e32 v4, v4, v171
	v_mul_f32_e32 v5, v5, v171
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v17, v17, v17
.Ltmp24:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s20
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v6, v6, v171
	v_mul_f32_e32 v7, v7, v171
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v8, v8, v171 :: v_dual_max_f32 v9, v9, v17
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v154, v194, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v180.l, v10.h
	v_and_b32_e32 v171, 1, v185
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v24, v24
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v172, v9
.Ltmp26:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v154, v154
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v36, v36, v151 :: v_dual_and_b32 v17, 1, v180
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp27:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v172, v172 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v152, v174, v151
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v192, 0, v38, s36
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v24, 0, v24, s22
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v188.h, v15.h
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v174, 0, v154, s28
	v_cndmask_b32_e64 v154, 0, v155, s17
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v189.h, v15.h
	v_mov_b16_e64 v181.l, v24.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v32, 0, v32, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v182.h, v15.h
	v_mov_b16_e64 v183.l, v154.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v194, 0, v36, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v36, 1, v181
	v_and_b32_e32 v181, 1, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v26, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v180, 1, v183
	v_and_b32_e32 v183, 1, v190
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v189.l, v32.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v151
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v149, v149
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v25, v156, v151
	v_sub_f32_e32 v40, v40, v151
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v159, v159
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v26, 0, v26, s24
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v187.h, v15.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v25, v25
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v182.l, v26.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v16, v170, v151
	v_sub_f32_e32 v170, v200, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v184.l, v34.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v169, v199, v151
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v149, 0, v149, s19
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v170, v170
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v38, 1, v184
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v169, v169
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v184, 1, v189
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v187.l, v149.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v25, s21
	v_cndmask_b32_e64 v155, 0, v159, s31
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v177, 1, v177
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v148, v148
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v159, 0, v170, s33
	v_cndmask_b32_e64 v170, 0, v40, s34
	v_cndmask_b32_e64 v169, 0, v169, s8
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v40, 1, v187
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v27, s23
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v10, v10
	v_cmp_o_f32_e64 s12, v26, v26
	v_mov_b16_e64 v188.l, v169.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v33, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v34, v34
	v_cmp_o_f32_e64 s14, v149, v149
	v_add3_u32 v10, v10, v17, 0x7fff
	v_add3_u32 v17, v24, v36, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v173, v202, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v148, 0, v148, s25
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s37, v31, v31
	v_add3_u32 v31, v31, v177, 0x7fff
	v_cmp_o_f32_e64 s24, v158, v158
	v_mov_b16_e64 v175.h, v15.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v173, v173
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v25, v25
	v_cmp_o_f32_e64 s22, v154, v154
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v191, 0, v33, s35
	v_cndmask_b32_e64 v33, 0, v37, s11
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v37, 1, v182
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v16, v16
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v24, v24
	v_mov_b16_e64 v175.l, v29.h
	v_add3_u32 v36, v154, v180, 0x7fff
	v_add3_u32 v24, v26, v37, 0x7fff
	v_add3_u32 v26, v34, v38, 0x7fff
	v_add3_u32 v34, v149, v40, 0x7fff
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v149, v172, v172
.Ltmp30:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v152, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v38, v158, v181, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v16, 0, v16, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v158.l, 0x7fff, v10.h, s10
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v9, v9, v149 :: v_dual_sub_f32 v156, v196, v151
.Ltmp32:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v154.l, 0x7fff, v31.h, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e64 v179.h, v15.h
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v31, v9
.Ltmp34:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v156, v156
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v152, 0, v152, s27
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v35, 1, v15
	v_mov_b16_e32 v15.l, v25.h
	v_cmp_o_f32_e64 s9, v16, v16
	v_cmp_o_f32_e64 s16, v27, v27
	v_mov_b16_e64 v179.l, v33.h
	v_and_b32_e32 v175, 1, v175
	v_and_b32_e32 v37, 1, v15
	v_mov_b16_e32 v15.l, v27.h
	v_add3_u32 v16, v16, v35, 0x7fff
	v_cmp_o_f32_e64 s35, v30, v30
	v_add3_u32 v30, v30, v178, 0x7fff
	v_add3_u32 v10, v25, v37, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s11
	v_and_b32_e32 v17, 1, v15
	v_mov_b16_e64 v15.l, v148.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v156, 0, v156, s30
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s15
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v173, 0, v173, s40
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v17, v27, v17, 0x7fff
	v_and_b32_e32 v27, 1, v15
	v_mov_b16_e64 v15.l, v152.h
	v_cmp_o_f32_e64 s17, v148, v148
	v_cmp_o_f32_e64 s20, v153, v153
	v_cmp_o_f32_e64 s40, v29, v29
	v_and_b32_e32 v179, 1, v179
	v_add3_u32 v35, v153, v171, 0x7fff
	v_add3_u32 v29, v29, v175, 0x7fff
	v_cndmask_b16 v158.h, 0x7fff, v16.h, s9
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s12
	v_cndmask_b16 v30.l, 0x7fff, v36.h, s22
	v_cndmask_b16 v24.h, 0x7fff, v17.h, s16
	v_add3_u32 v17, v148, v27, 0x7fff
	v_and_b32_e32 v27, 1, v15
	v_mov_b16_e64 v15.l, v174.h
	v_permlanex16_b32 v36, v10, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v31, v31 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s39, v28, v28
	v_add3_u32 v28, v28, v176, 0x7fff
	v_cmp_o_f32_e64 s18, v152, v152
	v_cmp_o_f32_e64 s33, v33, v33
	v_add3_u32 v33, v33, v179, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v35.h, s20
	v_cndmask_b16 v16.l, 0x7fff, v29.h, s40
	v_permlanex16_b32 v29, v158, s80, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v25.h, 0x7fff, v17.h, s17
	v_add3_u32 v17, v152, v27, 0x7fff
	v_and_b32_e32 v27, 1, v15
	v_mov_b16_e64 v15.l, v156.h
	v_perm_b32 v35, v36, v10, v134
	v_perm_b32 v36, v36, v10, v139
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v10, v31, v31
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v174, v174
	v_and_b32_e32 v182, 1, v188
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s13
	v_cndmask_b16 v26.l, 0x7fff, v34.h, s14
	v_cndmask_b16 v175.l, 0x7fff, v33.h, s33
	v_perm_b32 v33, v29, v158, v134
	v_perm_b32 v34, v29, v158, v139
	v_permlanex16_b32 v29, v24, s80, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v26.h, 0x7fff, v17.h, s18
	v_add3_u32 v17, v174, v27, 0x7fff
	v_and_b32_e32 v27, 1, v15
	v_mov_b16_e64 v15.l, v155.h
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v9, v10
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s30, v32, v32
	v_add3_u32 v32, v32, v184, 0x7fff
	v_cmp_o_f32_e64 s21, v156, v156
	v_cmp_o_f32_e64 s26, v169, v169
	v_cmp_o_f32_e64 s28, v39, v39
	v_add3_u32 v40, v169, v182, 0x7fff
	v_add3_u32 v39, v39, v183, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v38.h, s24
	v_cndmask_b16 v153.l, 0x7fff, v28.h, s39
	v_permlanex16_b32 v31, v25, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v29, v24, v134
	v_perm_b32 v38, v29, v24, v139
	v_cndmask_b16 v28.h, 0x7fff, v17.h, s19
	v_add3_u32 v10, v156, v27, 0x7fff
	v_and_b32_e32 v17, 1, v15
	v_mov_b16_e64 v15.l, v159.h
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v29, v9
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s23, v155, v155
	v_cndmask_b16 v169.l, 0x7fff, v40.h, s26
	v_cndmask_b16 v171.l, 0x7fff, v39.h, s28
	v_cndmask_b16 v176.l, 0x7fff, v30.h, s35
	v_perm_b32 v39, v31, v25, v134
	v_perm_b32 v40, v31, v25, v139
	v_cndmask_b16 v30.h, 0x7fff, v10.h, s21
	v_add3_u32 v10, v155, v17, 0x7fff
	v_and_b32_e32 v17, 1, v15
	v_mov_b16_e64 v15.l, v170.h
	v_permlanex16_b32 v31, v28, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s25, v159, v159
	v_cndmask_b16 v172.l, 0x7fff, v32.h, s30
	v_cndmask_b16 v32.h, 0x7fff, v10.h, s23
	v_add3_u32 v10, v159, v17, 0x7fff
	v_and_b32_e32 v17, 1, v15
	v_mov_b16_e64 v15.l, v191.h
	v_perm_b32 v27, v31, v28, v134
	v_perm_b32 v28, v31, v28, v139
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v31, v29, v29
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s27, v170, v170
	v_cndmask_b16 v169.h, 0x7fff, v10.h, s25
	v_add3_u32 v10, v170, v17, 0x7fff
	v_and_b32_e32 v17, 1, v15
	v_mov_b16_e64 v15.l, v192.h
	v_permlanex16_b32 v148, v32, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v9, v31
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s29, v191, v191
	v_cndmask_b16 v171.h, 0x7fff, v10.h, s27
	v_add3_u32 v10, v191, v17, 0x7fff
	v_and_b32_e32 v17, 1, v15
	v_mov_b16_e64 v15.l, v193.h
	v_perm_b32 v31, v148, v32, v134
	v_perm_b32 v32, v148, v32, v139
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v148, v18, v9
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s31, v192, v192
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v149, v160, v9
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v172.h, 0x7fff, v10.h, s29
	v_add3_u32 v9, v192, v17, 0x7fff
	v_and_b32_e32 v10, 1, v15
	v_mov_b16_e64 v15.l, v194.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v155, v19, v148
	v_sub_f32_e32 v21, v21, v148
	v_sub_f32_e32 v156, v20, v148
	v_sub_f32_e32 v22, v22, v148
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s34, v193, v193
	v_cndmask_b16 v175.h, 0x7fff, v9.h, s31
	v_add3_u32 v9, v193, v10, 0x7fff
	v_and_b32_e32 v10, 1, v15
	v_mov_b16_e64 v15.l, v195.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v155, v155
	v_exp_f32_e32 v159, v21
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v160, v22
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s36, v194, v194
	v_permlanex16_b32 v158, v172, s80, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v176.h, 0x7fff, v9.h, s34
	v_add3_u32 v9, v194, v10, 0x7fff
	v_and_b32_e32 v10, 1, v15
	v_mov_b16_e64 v15.l, v173.h
	v_cmp_o_f32_e64 s38, v195, v195
	v_perm_b32 v21, v158, v172, v134
	v_perm_b32 v22, v158, v172, v139
	v_cndmask_b16 v154.h, 0x7fff, v9.h, s36
	v_add3_u32 v9, v195, v10, 0x7fff
	v_and_b32_e32 v10, 1, v15
	v_permlanex16_b32 v15, v176, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v155, 0, v155, s6
	v_cndmask_b32_e64 v158, 0, v159, s7
	v_cndmask_b32_e64 v156, 0, v156, s4
	v_cndmask_b32_e64 v159, 0, v160, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v153.h, 0x7fff, v9.h, s38
	v_add3_u32 v188, v173, v10, 0x7fff
	v_perm_b32 v9, v15, v176, v134
	v_perm_b32 v10, v15, v176, v139
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v15, v155, v158
	v_add_f32_e32 v155, v156, v159
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v24, v26, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v152, v171, s80, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s8, v173, v173
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s9, 0xff800000, v23
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v15, v15, v155
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v25, v24, v26, v134
	v_perm_b32 v26, v24, v26, v139
	v_permlanex16_b32 v24, v30, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v152, v171, v134
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v155, v15
.Ltmp54:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v20, v152, v171, v139
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v29, v24, v30, v134
	v_perm_b32 v30, v24, v30, v139
	v_permlanex16_b32 v24, v169, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v155, v155 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v188.h, s8
	v_permlanex16_b32 v189, v154, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v24, v169, v134
	v_perm_b32 v18, v24, v169, v139
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v24, v23, v149
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v15, v15, v155
.Ltmp58:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v14, v153, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v189, v154, v134
	v_perm_b32 v12, v189, v154, v139
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v152, v24
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v24, v175, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v155, v15
.Ltmp60:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v13, v14, v153, v134
	v_perm_b32 v14, v14, v153, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v23, v24, v175, v134
	v_perm_b32 v24, v24, v175, v139
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v155, v155 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v156, v72
	ds_load_u16_d16 v157, v72 offset:256
	ds_load_u16_d16 v158, v72 offset:512
	ds_load_u16_d16 v159, v72 offset:768
	ds_load_u16_d16 v160, v72 offset:1024
	ds_load_u16_d16 v161, v72 offset:1280
	ds_load_u16_d16 v162, v72 offset:1536
	ds_load_u16_d16 v163, v72 offset:1792
	ds_load_u16_d16 v164, v72 offset:2048
	ds_load_u16_d16 v165, v72 offset:2304
	ds_load_u16_d16 v166, v72 offset:2560
	ds_load_u16_d16 v167, v72 offset:2816
	ds_load_u16_d16 v168, v72 offset:3072
	ds_load_u16_d16 v169, v72 offset:3328
	ds_load_u16_d16 v170, v72 offset:3584
	ds_load_u16_d16 v171, v72 offset:3840
	ds_load_u16_d16 v172, v72 offset:4096
	ds_load_u16_d16 v173, v72 offset:4352
	ds_load_u16_d16 v174, v72 offset:4608
	ds_load_u16_d16 v175, v72 offset:4864
	ds_load_u16_d16 v176, v72 offset:5120
	ds_load_u16_d16 v177, v72 offset:5376
	ds_load_u16_d16 v178, v72 offset:5632
	ds_load_u16_d16 v179, v72 offset:5888
	ds_load_u16_d16 v180, v72 offset:6144
	ds_load_u16_d16 v181, v72 offset:6400
	ds_load_u16_d16 v182, v72 offset:6656
	ds_load_u16_d16 v183, v72 offset:6912
	ds_load_u16_d16 v184, v72 offset:7168
	ds_load_u16_d16 v185, v72 offset:7424
	ds_load_u16_d16 v186, v72 offset:7680
	ds_load_u16_d16 v187, v72 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v156, v72 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v157, v72 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v158, v72 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v159, v72 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v72 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v161, v72 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v162, v72 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v163, v72 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v164, v72 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v165, v72 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v166, v72 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v167, v72 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v168, v72 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v169, v72 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v170, v72 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v171, v72 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v172, v72 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v173, v72 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v174, v72 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v175, v72 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v176, v72 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v177, v72 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v178, v72 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v179, v72 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v180, v72 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v181, v72 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v182, v72 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v183, v72 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v184, v72 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v185, v72 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v186, v72 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v187, v72 offset:8064
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v15, v15, v155
.Ltmp64:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v152, 0, v152, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v155, v15
	v_mov_b32_dpp v155, v155 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v155, v15, v155
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v41, v155
.Ltmp68:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[156:163], v[33:40], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_permlanex16_b32 v33, v16, s80, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[164:171], v[25:32], v[1:8]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_perm_b32 v15, v33, v16, v134
	v_perm_b32 v16, v33, v16, v139
.Ltmp71:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v25, v155, v41
.Ltmp72:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[172:179], v[17:24], v[1:8]
	v_mov_b32_e32 v17, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v25, v150, v152
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[180:187], v[9:16], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v149, v149
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v10, 0xff800000, v9
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v9, 0, v25
	s_branch .LBB0_5
.Ltmp75:
.LBB0_4:
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v10, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v9, v8
.LBB0_5:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
	s_mov_b32 s0, 0x76543210
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v12, 3, v61
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp77:
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v10, 0xff800000, v10 :: v_dual_cndmask_b32 v9, 0, v9
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v60
	.loc	1 835 13                        ; attention.py:835:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s63, s63, s3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v11, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v14, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v12, 0, v12
.Ltmp82:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v21, v59
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v13, 12, v56
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v9, v9, v14
.Ltmp86:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s43, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s62, s63
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v11 :: v_dual_add_nc_u32 v11, 0, v13
.Ltmp88:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v1, 0, v1
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v12, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v9
.Ltmp91:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v2
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp93:
	.loc	1 833 13 is_stmt 1              ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_cndmask_b32 v16, 0, v4
	v_dual_cndmask_b32 v8, 0, v8 :: v_dual_cndmask_b32 v17, 0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v12 :: v_dual_mov_b32 v11, v1
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v11, v10
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_mov_b32 v13, v3
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v8, v20
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_mov_b32 v20, v8
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v13
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v13, v9
.Ltmp109:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v11
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
.Ltmp112:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v14 :: v_dual_add_f32 v1, v1, v12
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v12, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v9, v9, v13 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v13, v1 :: v_dual_mov_b32 v14, v16
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v11, v9
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp123:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v13 :: v_dual_add_f32 v14, v16, v14
.Ltmp124:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v13, 0, v6, vcc_lo
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v15, v3 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v3, v15
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v17
	v_dual_mov_b32 v3, v1 :: v_dual_add_f32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp129:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v7
	v_dual_mov_b32 v16, v14 :: v_dual_add_f32 v15, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v17
	v_add_f32_e32 v17, v13, v18
	v_add_f32_e32 v7, v7, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v15
	v_mov_b32_e32 v19, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v15, v13
	v_dual_add_f32 v18, v7, v19 :: v_dual_add_f32 v19, v8, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v7, v14, v16 :: v_dual_mov_b32 v16, v13
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v23, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v18, v22 :: v_dual_add_f32 v14, v17, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v17, v19, v23
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_7
; %bb.6:
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v21, v10, v10
.Ltmp139:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v10, v9, v11 :: v_dual_mov_b32 v11, 0
.Ltmp141:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v21, v12
.Ltmp143:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s60, s4
	s_addc_u32 s5, s61, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v11, v[9:10], s[4:5]
.LBB0_7:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp144:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v7, v8 :: v_dual_add_f32 v6, v5, v6
.Ltmp145:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v8, 0xc0, v56
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v5, v2, v4 :: v_dual_add_f32 v4, v1, v3
.Ltmp147:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v57
	v_lshlrev_b32_e32 v2, 5, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v8
	v_lshl_add_u32 v8, v55, 1, 0
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v17, v20 :: v_dual_add_f32 v11, v15, v19
	v_dual_add_f32 v10, v14, v18 :: v_dual_add_f32 v9, v13, v16
.Ltmp149:
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v13, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v13
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v13
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[60:63], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp150:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 207
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 207
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11136
; TotalNumSgprs: 84
; NumVgprs: 207
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 207
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
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
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     207
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
