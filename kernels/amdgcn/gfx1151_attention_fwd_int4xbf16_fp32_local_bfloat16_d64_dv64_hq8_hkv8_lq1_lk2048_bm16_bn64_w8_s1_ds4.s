	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
	v_and_b32_e32 v74, 15, v0
	v_lshrrev_b32_e32 v9, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v2, 1, v74
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v70, 0xc0, v0
	v_lshlrev_b32_e32 v71, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v72, 31, v0
	v_and_b32_e32 v75, 0xf0, v0
	.loc	1 693 86                        ; attention.py:693:86
	v_and_b32_e32 v76, 7, v0
	v_lshrrev_b32_e32 v77, 3, v0
	v_lshlrev_b32_e32 v73, 5, v0
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
	v_lshrrev_b32_e32 v4, 3, v70
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v71, v4, 0
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
	v_or_b32_e32 v3, s18, v74
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s12, v74, 1
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_and_b32 v5, 24, v71
	v_lshlrev_b32_e32 v8, 3, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e64 s2, 1, v3
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v23, v74, 5, v5
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_dual_mov_b32 v19, 0x5410 :: v_dual_add_nc_u32 v4, s19, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v18, 16, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v80, s16, v4
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v81, s17, v4
	v_lshlrev_b32_e32 v13, 1, v70
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_lshlrev_b32_e32 v21, 4, v0
	buffer_load_u16 v10, v3, s[56:59], 0 offen
	.loc	1 693 86                        ; attention.py:693:86
	v_lshlrev_b32_e32 v3, 3, v76
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v22, 0x60, v0
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v57, 2, v74
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[59:60], null, s43, v77, v[3:4]
	v_mov_b32_e32 v4, v1
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s43, v3
	v_mov_b32_e32 v3, v1
	v_cmp_eq_u32_e64 s2, 0, v18
	v_lshrrev_b32_e32 v6, 1, v0
	v_lshlrev_b32_e32 v7, 3, v74
	v_dual_mov_b32 v53, 0xff800000 :: v_dual_and_b32 v14, 14, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0x1054, v19, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v19, 8, v23
	v_lshl_or_b32 v82, v74, 8, v8
	v_add_nc_u32_e32 v84, 0, v21
	v_mov_b32_e32 v8, v1
	v_lshl_or_b32 v13, v72, 2, v13
	v_xor_b32_e32 v21, 16, v23
	v_add3_u32 v83, 0, v2, v22
	v_xor_b32_e32 v22, 24, v23
	v_add_nc_u32_e32 v106, 0, v23
	v_add_nc_u32_e32 v109, 0, v19
	v_lshrrev_b32_e32 v12, 1, v75
	v_lshlrev_b32_e32 v17, 6, v0
	v_dual_mov_b32 v25, v1 :: v_dual_and_b32 v24, 24, v6
	v_mov_b32_e32 v6, v1
	v_lshl_or_b32 v26, v75, 4, v7
	v_xor_b32_e32 v107, v13, v14
	v_cndmask_b32_e64 v13, 0x3276, v20, s2
	v_add_nc_u32_e32 v110, 0, v21
	v_add_nc_u32_e32 v111, 0, v22
	v_dual_mov_b32 v2, v1 :: v_dual_lshlrev_b32 v11, 3, v0
	ds_load_b64 v[60:61], v106
	ds_load_b64 v[62:63], v109
	ds_load_b64 v[64:65], v110
	ds_load_b64 v[66:67], v111
	v_and_b32_e32 v15, 0x380, v73
	v_dual_mov_b32 v143, 0xff800000 :: v_dual_and_b32 v16, 30, v0
	v_and_b32_e32 v17, 64, v17
	v_xor_b32_e32 v12, v26, v12
	v_lshl_or_b32 v14, v18, 8, v18
	v_lshl_or_b32 v13, v13, 8, v13
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v58, 24, v11
	v_xor_b32_e32 v11, v11, v24
	v_or3_b32 v108, v15, v16, v17
	v_and_b32_e32 v14, 0x540054, v14
	v_add_nc_u32_e32 v113, 0, v12
	v_and_b32_e32 v12, 0x760076, v13
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[68:69], null, s15, v9, v[57:58]
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s73, s3, 11
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s8, s1, 3
	v_and_or_b32 v78, v9, 1, s73
	v_or3_b32 v79, s73, v9, 62
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s1, -8
	v_xor_b32_e32 v23, 8, v82
	v_xor_b32_e32 v24, 16, v82
	v_xor_b32_e32 v26, 24, v82
	v_xor_b32_e32 v27, 32, v82
	v_xor_b32_e32 v28, 40, v82
	v_xor_b32_e32 v29, 48, v82
	v_xor_b32_e32 v30, 56, v82
	v_xor_b32_e32 v31, 64, v82
	v_xor_b32_e32 v32, 0x48, v82
	v_xor_b32_e32 v33, 0x50, v82
	v_xor_b32_e32 v34, 0x58, v82
	v_xor_b32_e32 v35, 0x60, v82
	v_xor_b32_e32 v36, 0x68, v82
	v_xor_b32_e32 v37, 0x70, v82
	v_xor_b32_e32 v38, 0x78, v82
	v_xor_b32_e32 v15, 0x210, v107
	v_xor_b32_e32 v16, 4, v108
	v_xor_b32_e32 v17, 8, v108
	v_xor_b32_e32 v18, 12, v108
	v_xor_b32_e32 v19, 16, v108
	v_xor_b32_e32 v20, 20, v108
	v_xor_b32_e32 v21, 24, v108
	v_xor_b32_e32 v22, 28, v108
	v_add_nc_u32_e32 v112, 0, v11
	v_lshl_or_b32 v11, v14, 4, v14
	v_lshl_or_b32 v9, v12, 4, v12
	s_sub_i32 s9, s3, s1
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s13, s8
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s2, s14, s9
	v_or_b32_e32 v85, 20, v78
	v_or_b32_e32 v86, 22, v78
	v_or_b32_e32 v87, 24, v78
	v_or_b32_e32 v88, 26, v78
	v_or_b32_e32 v89, 28, v78
	v_or_b32_e32 v90, 30, v78
	v_or_b32_e32 v91, 32, v78
	v_or_b32_e32 v92, 34, v78
	v_or_b32_e32 v93, 36, v78
	v_or_b32_e32 v94, 38, v78
	v_or_b32_e32 v95, 40, v78
	v_or_b32_e32 v96, 42, v78
	v_or_b32_e32 v97, 44, v78
	v_or_b32_e32 v98, 46, v78
	v_or_b32_e32 v99, 48, v78
	v_or_b32_e32 v100, 50, v78
	v_or_b32_e32 v101, 52, v78
	v_or_b32_e32 v102, 54, v78
	v_or_b32_e32 v103, 56, v78
	v_or_b32_e32 v104, 58, v78
	v_or_b32_e32 v105, 60, v78
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e64 s1, s42, v58
	v_add_nc_u32_e32 v114, 0, v23
	v_add_nc_u32_e32 v115, 0, v24
	v_add_nc_u32_e32 v116, 0, v26
	v_add_nc_u32_e32 v117, 0, v27
	v_add_nc_u32_e32 v118, 0, v28
	v_add_nc_u32_e32 v119, 0, v29
	v_add_nc_u32_e32 v120, 0, v30
	v_add_nc_u32_e32 v121, 0, v31
	v_add_nc_u32_e32 v122, 0, v32
	v_add_nc_u32_e32 v123, 0, v33
	v_add_nc_u32_e32 v124, 0, v34
	v_add_nc_u32_e32 v125, 0, v35
	v_add_nc_u32_e32 v126, 0, v36
	v_add_nc_u32_e32 v127, 0, v37
	v_add_nc_u32_e32 v128, 0, v38
	v_add_nc_u32_e32 v129, 0, v15
	v_add_nc_u32_e32 v130, 0, v16
	v_add_nc_u32_e32 v131, 0, v17
	v_add_nc_u32_e32 v132, 0, v18
	v_add_nc_u32_e32 v133, 0, v19
	v_add_nc_u32_e32 v134, 0, v20
	v_add_nc_u32_e32 v135, 0, v21
	v_add_nc_u32_e32 v136, 0, v22
	v_and_b32_e32 v69, 0x5040504, v11
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v137, 1, v68
	v_add_nc_u32_e32 v138, 2, v68
	v_and_b32_e32 v139, 0x7060706, v9
	v_add_nc_u32_e32 v141, 3, v68
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
	v_lshlrev_b32_e32 v140, 16, v10
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v46, 2, v0
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s9, s55, s73
	v_or_b32_e32 v13, 2, v78
	v_or_b32_e32 v14, 4, v78
	v_or_b32_e32 v15, 6, v78
	v_or_b32_e32 v46, s9, v46
	v_or_b32_e32 v16, 8, v78
	v_or_b32_e32 v17, 10, v78
	v_or_b32_e32 v20, 12, v78
	v_or_b32_e32 v23, 14, v78
	v_mad_u64_u32 v[46:47], null, v46, s42, v[58:59]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v11, s55, v78, 1
	v_add_lshl_u32 v13, v13, s55, 1
	v_add_lshl_u32 v14, v14, s55, 1
	v_add_lshl_u32 v15, v15, s55, 1
	v_add_lshl_u32 v16, v16, s55, 1
	v_add_lshl_u32 v17, v17, s55, 1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v46, 0x80000000, v46, s1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v20, v20, s55, 1
	v_add_lshl_u32 v23, v23, s55, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v38, s44 :: v_dual_mov_b32 v43, s49
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b64 v[46:47], v46, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v54, v144 :: v_dual_mov_b32 v39, s45
	v_dual_mov_b32 v142, v25 :: v_dual_mov_b32 v41, s47
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v40, s46 :: v_dual_mov_b32 v45, s51
	v_mov_b32_e32 v42, s48
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v10, 1, v57
	v_or_b32_e32 v12, 2, v57
	v_or_b32_e32 v9, 3, v57
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v163, s55, v57
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s4, s77, s55
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v10, s55, v10
	v_or_b32_e32 v12, s55, v12
	v_or_b32_e32 v9, s55, v9
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v163, v80
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v163, v81
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v163, s4, v141, 2
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v12, v80
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v10, v81
	v_cmp_le_i32_e64 s8, v12, v81
	v_cmp_le_i32_e64 s10, v9, v81
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s2, s2, s6
	v_or_b32_e32 v18, 16, v78
	s_and_b32 s6, vcc_lo, s2
	v_or_b32_e32 v19, 18, v78
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_add_lshl_u32 v21, v85, s55, 1
	v_add_lshl_u32 v22, v86, s55, 1
	v_add_lshl_u32 v18, v18, s55, 1
	v_add_lshl_u32 v24, v87, s55, 1
	v_add_lshl_u32 v19, v19, s55, 1
	v_add_lshl_u32 v25, v88, s55, 1
	v_add_lshl_u32 v26, v89, s55, 1
	v_add_lshl_u32 v27, v90, s55, 1
	v_add_lshl_u32 v28, v91, s55, 1
	v_add_lshl_u32 v29, v92, s55, 1
	v_add_lshl_u32 v30, v93, s55, 1
	v_add_lshl_u32 v31, v94, s55, 1
	v_add_lshl_u32 v32, v95, s55, 1
	v_add_lshl_u32 v33, v96, s55, 1
	v_add_lshl_u32 v34, v97, s55, 1
	v_add_lshl_u32 v35, v98, s55, 1
	v_add_lshl_u32 v36, v99, s55, 1
	v_add_lshl_u32 v37, v100, s55, 1
	v_add_lshl_u32 v160, v102, s55, 1
	v_add_lshl_u32 v161, v103, s55, 1
	v_add_lshl_u32 v162, v104, s55, 1
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v53
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v112, v[46:47]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x7
	buffer_load_u16 v11, v11, s[64:67], 0 offen
	buffer_load_u16 v13, v13, s[64:67], 0 offen
	buffer_load_u16 v14, v14, s[64:67], 0 offen
	buffer_load_u16 v15, v15, s[64:67], 0 offen
	buffer_load_u16 v16, v16, s[64:67], 0 offen
	buffer_load_u16 v17, v17, s[64:67], 0 offen
	buffer_load_u16 v20, v20, s[64:67], 0 offen
	buffer_load_u16 v23, v23, s[64:67], 0 offen
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[46:49], v106 offset1:1
	ds_load_2addr_stride64_b64 v[152:155], v106 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[156:159], v109 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v44, s50 :: v_dual_lshlrev_b32 v11, 16, v11
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[46:47], v[60:61], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[48:49], v[60:61], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[152:153], v[60:61], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[154:155], v[60:61], v[38:45] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[38:41], v109 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[42:45], v110 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[156:157], v[62:63], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[158:159], v[62:63], v[164:171] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[46:49], v111 offset0:2 offset1:3
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[38:39], v[62:63], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[40:41], v[62:63], v[180:187] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[38:41], v110 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[42:43], v[64:65], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[44:45], v[64:65], v[164:171] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[42:45], v111 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[38:39], v[64:65], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[40:41], v[64:65], v[180:187] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v38, v101, s55, 1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[44:45], v[66:67], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[42:43], v[66:67], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[46:47], v[66:67], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[48:49], v[66:67], v[180:187] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v47, v165
	v_cvt_f32_i32_e32 v48, v166
	v_cvt_f32_i32_e32 v49, v167
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v166, s4, v68, 2
	v_add_lshl_u32 v165, s4, v137, 2
	v_add_lshl_u32 v167, s4, v138, 2
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v10, v80
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v50, v168
	v_cvt_f32_i32_e32 v51, v169
	v_mad_u64_u32 v[168:169], null, s9, s43, v[59:60]
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v9, v80
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s4, s7
	s_and_b32 s4, s5, s8
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v9, 0x80000000, v166, s6
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, vcc_lo, s4
	s_and_b32 s5, s9, s10
	s_and_b32 s2, vcc_lo, s2
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v166, 0x80000000, v167, s7
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, vcc_lo, s5
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s5
	s_clause 0x3
	buffer_load_b32 v9, v9, s[60:63], 0 offen
	buffer_load_b32 v166, v166, s[60:63], 0 offen
	buffer_load_b32 v165, v165, s[60:63], 0 offen
	buffer_load_b32 v163, v163, s[60:63], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v159, v144
	v_cvt_f32_i32_e32 v42, v148
	v_cvt_f32_i32_e32 v46, v164
	v_cvt_f32_i32_e32 v148, v177
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v164, v105, s55, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v159, v140, v159 :: v_dual_lshlrev_b32 v10, 1, v168
	v_cvt_f32_i32_e32 v39, v145
	v_cvt_f32_i32_e32 v40, v146
	v_cvt_f32_i32_e32 v41, v147
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v177, v159, v11
	v_cvt_f32_i32_e32 v43, v149
	v_cvt_f32_i32_e32 v44, v150
	v_cvt_f32_i32_e32 v45, v151
	v_cvt_f32_i32_e32 v52, v170
	v_cvt_f32_i32_e32 v55, v171
	v_cvt_f32_i32_e32 v56, v172
	v_cvt_f32_i32_e32 v144, v173
	v_cvt_f32_i32_e32 v146, v175
	v_cvt_f32_i32_e32 v147, v176
	v_cvt_f32_i32_e32 v149, v178
	v_cvt_f32_i32_e32 v150, v179
	v_cvt_f32_i32_e32 v151, v180
	v_cvt_f32_i32_e32 v152, v181
	v_cvt_f32_i32_e32 v153, v182
	v_cvt_f32_i32_e32 v154, v183
	v_cvt_f32_i32_e32 v145, v174
	v_cvt_f32_i32_e32 v155, v184
	v_cvt_f32_i32_e32 v156, v185
	v_cvt_f32_i32_e32 v157, v186
	v_cvt_f32_i32_e32 v158, v187
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v12, v168, s74, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v40, v140, v40 :: v_dual_add_nc_u32 v11, 0, v82
	v_mul_f32_e32 v39, v140, v39
	v_mul_f32_e32 v41, v140, v41
	v_mul_f32_e32 v42, v140, v42
	v_mul_f32_e32 v43, v140, v43
	v_mul_f32_e32 v44, v140, v44
	v_mul_f32_e32 v46, v140, v46
	v_dual_mul_f32 v48, v140, v48 :: v_dual_mul_f32 v185, v39, v13
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v167, 0xff800000, v9, s6
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v9, s55, v79, 1
	s_clause 0x17
	buffer_load_u16 v18, v18, s[64:67], 0 offen
	buffer_load_u16 v19, v19, s[64:67], 0 offen
	buffer_load_u16 v21, v21, s[64:67], 0 offen
	buffer_load_u16 v22, v22, s[64:67], 0 offen
	buffer_load_u16 v24, v24, s[64:67], 0 offen
	buffer_load_u16 v25, v25, s[64:67], 0 offen
	buffer_load_u16 v26, v26, s[64:67], 0 offen
	buffer_load_u16 v27, v27, s[64:67], 0 offen
	buffer_load_u16 v28, v28, s[64:67], 0 offen
	buffer_load_u16 v29, v29, s[64:67], 0 offen
	buffer_load_u16 v30, v30, s[64:67], 0 offen
	buffer_load_u16 v31, v31, s[64:67], 0 offen
	buffer_load_u16 v32, v32, s[64:67], 0 offen
	buffer_load_u16 v33, v33, s[64:67], 0 offen
	buffer_load_u16 v34, v34, s[64:67], 0 offen
	buffer_load_u16 v35, v35, s[64:67], 0 offen
	buffer_load_u16 v36, v36, s[64:67], 0 offen
	buffer_load_u16 v37, v37, s[64:67], 0 offen
	buffer_load_u16 v38, v38, s[64:67], 0 offen
	buffer_load_u16 v159, v160, s[64:67], 0 offen
	buffer_load_u16 v160, v161, s[64:67], 0 offen
	buffer_load_u16 v161, v162, s[64:67], 0 offen
	buffer_load_u16 v162, v164, s[64:67], 0 offen
	buffer_load_u16 v9, v9, s[64:67], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(26)
	v_cndmask_b32_e64 v168, 0xff800000, v166, s7
	s_waitcnt vmcnt(25)
	v_cndmask_b32_e64 v169, 0xff800000, v165, s2
	s_waitcnt vmcnt(24)
	v_cndmask_b32_e64 v170, 0xff800000, v163, s5
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v45, v140, v45
	v_mul_f32_e32 v47, v140, v47
	v_mul_f32_e32 v49, v140, v49
	v_mul_f32_e32 v50, v140, v50
	v_mul_f32_e32 v51, v140, v51
	v_mul_f32_e32 v52, v140, v52
	v_mul_f32_e32 v55, v140, v55
	v_mul_f32_e32 v56, v140, v56
	v_mul_f32_e32 v144, v140, v144
	v_mul_f32_e32 v146, v140, v146
	v_mul_f32_e32 v171, v140, v147
	v_mul_f32_e32 v148, v140, v148
	v_mul_f32_e32 v149, v140, v149
	v_mul_f32_e32 v172, v140, v150
	v_mul_f32_e32 v173, v140, v151
	v_mul_f32_e32 v174, v140, v152
	v_mul_f32_e32 v175, v140, v153
	v_mul_f32_e32 v176, v140, v154
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v145, v140, v145
	v_mul_f32_e32 v178, v140, v155
	v_mul_f32_e32 v156, v140, v156
	v_mul_f32_e32 v179, v140, v157
	v_mul_f32_e32 v180, v140, v158
	v_mul_f32_e32 v157, v40, v14
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v113, v[167:168], v[169:170] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v167
	v_cmp_neq_f32_e64 s4, 0xff800000, v169
	v_cmp_neq_f32_e64 s9, 0xff800000, v170
	v_cmp_neq_f32_e64 s10, 0xff800000, v168
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v167, 0x80000000, v10, s0
	v_cndmask_b32_e64 v168, 0x80000000, v12, s0
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s4, s2, s4
	s_and_b32 s2, s5, s9
	s_and_b32 s5, s6, s8
	s_and_b32 s6, s7, s10
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s55, s55, 64
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s55, s72
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v181, 16, v159
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v182, 16, v160
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v183, 16, v161
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v184, 16, v162
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v160, v41, v15 :: v_dual_mul_f32 v161, v42, v16
	v_dual_mul_f32 v166, v45, v23 :: v_dual_mul_f32 v163, v43, v17
	v_dual_mul_f32 v164, v46, v18 :: v_dual_mul_f32 v165, v44, v20
	v_dual_mul_f32 v162, v47, v19 :: v_dual_mul_f32 v159, v48, v21
	v_dual_mul_f32 v158, v49, v22 :: v_dual_mul_f32 v155, v50, v24
	v_dual_mul_f32 v154, v51, v25 :: v_dual_mul_f32 v153, v52, v26
	v_dual_mul_f32 v152, v55, v27 :: v_dual_mul_f32 v151, v56, v28
	v_mul_f32_e32 v56, v175, v38
	v_dual_mul_f32 v150, v144, v29 :: v_dual_mul_f32 v147, v145, v30
	v_dual_mul_f32 v29, v146, v31 :: v_dual_mul_f32 v52, v173, v36
	v_dual_mul_f32 v31, v171, v32 :: v_dual_mul_f32 v144, v176, v181
	v_mul_f32_e32 v47, v148, v33
	v_dual_mul_f32 v49, v149, v34 :: v_dual_mul_f32 v146, v156, v183
	v_mul_f32_e32 v51, v172, v35
	v_mul_f32_e32 v55, v174, v37
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[13:14], v11
	ds_load_b64 v[16:17], v114
	ds_load_b64 v[18:19], v115
	ds_load_b64 v[20:21], v116
	ds_load_b64 v[32:33], v117
	ds_load_b64 v[34:35], v118
	ds_load_b64 v[36:37], v119
	ds_load_b64 v[38:39], v120
	ds_load_b64 v[40:41], v121
	ds_load_b64 v[42:43], v122
	ds_load_b64 v[44:45], v123
	ds_load_b64 v[148:149], v124
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v156, 0, 1, s5
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v145, v178, v182
	v_mul_f32_e32 v25, v179, v184
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[169:170], v125
	ds_load_b64 v[171:172], v126
	ds_load_b64 v[173:174], v127
	ds_load_b64 v[175:176], v128
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v27, v180, v9
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v9, 0, 1, s6
	s_waitcnt lgkmcnt(0)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v15, 0x3fb8aa3b, v13
	v_dual_mul_f32 v13, 0x3fb8aa3b, v14 :: v_dual_mul_f32 v14, 0x3fb8aa3b, v17
	v_dual_mul_f32 v17, 0x3fb8aa3b, v18 :: v_dual_mul_f32 v18, 0x3fb8aa3b, v19
	v_mul_f32_e32 v23, 0x3fb8aa3b, v20
	v_dual_mul_f32 v19, 0x3fb8aa3b, v21 :: v_dual_mul_f32 v24, 0x3fb8aa3b, v32
	v_dual_mul_f32 v20, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v21, 0x3fb8aa3b, v35
	v_dual_mul_f32 v32, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v33, 0x3fb8aa3b, v40
	v_dual_mul_f32 v35, 0x3fb8aa3b, v42 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v149
	v_dual_mul_f32 v39, 0x3fb8aa3b, v148 :: v_dual_mul_f32 v48, 0x3fb8aa3b, v173
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v149, 0, 1, s2
	v_mov_b16_e64 v148.l, v156.l
	v_lshlrev_b16 v9.l, 8, v9.l
	v_cndmask_b32_e64 v156, 0, 1, s4
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v16, 0x3fb8aa3b, v16
	v_dual_mul_f32 v28, 0x3fb8aa3b, v36 :: v_dual_fmac_f32 v15, s76, v177
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v9.l, v148.l, v9.l
	v_mov_b16_e64 v148.l, v149.l
	v_mov_b16_e64 v149.l, v156.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v16, s76, v157
	.loc	1 685 25                        ; attention.py:685:25
	s_barrier
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v26, 0x3fb8aa3b, v34
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v9.h, 8, v148.l
	v_add_nc_u32_e32 v148, 0, v108
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v37
	v_mul_f32_e32 v30, 0x3fb8aa3b, v38
	v_mul_f32_e32 v34, 0x3fb8aa3b, v41
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v9.h, v149.l, v9.h
	v_add_nc_u32_e32 v149, 0, v107
	ds_store_b16 v149, v9
	ds_store_b16_d16_hi v129, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v148 offset:32
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v36, 0x3fb8aa3b, v43 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v44
	v_mul_f32_e32 v46, 0x3fb8aa3b, v171
	v_dual_mul_f32 v38, 0x3fb8aa3b, v45 :: v_dual_mul_f32 v41, 0x3fb8aa3b, v170
	v_dual_mul_f32 v50, 0x3fb8aa3b, v175 :: v_dual_mul_f32 v43, 0x3fb8aa3b, v174
	v_dual_mul_f32 v44, 0x3fb8aa3b, v176 :: v_dual_mul_f32 v45, 0x3fb8aa3b, v169
	v_mul_f32_e32 v42, 0x3fb8aa3b, v172
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v34, s76, v150 :: v_dual_fmac_f32 v37, s76, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v36, s76, v29 :: v_dual_fmac_f32 v45, s76, v52
	v_dual_fmac_f32 v38, s76, v47 :: v_dual_fmac_f32 v39, s76, v49
	v_fmac_f32_e32 v50, s76, v25
	v_fmac_f32_e32 v44, s76, v27
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v148
	ds_load_u16_d16 v10, v130
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v130 offset:32
	ds_load_u16_d16 v12, v131
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v131 offset:32
	ds_load_u16_d16 v25, v132
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v25, v132 offset:32
	ds_load_u16_d16 v27, v133
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v27, v133 offset:32
	ds_load_u16_d16 v29, v134
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v29, v134 offset:32
	ds_load_u16_d16 v31, v135
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v31, v135 offset:32
	ds_load_u16_d16 v47, v136
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v47, v136 offset:32
	v_and_b16 v49.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v13, s76, v185 :: v_dual_fmac_f32 v14, s76, v160
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v157, v54, v54 :: v_dual_fmac_f32 v18, s76, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s7, 1, v49.l
	v_and_b16 v49.l, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v10.l
	v_and_b16 v52.l, 1, v9.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v17, s76, v161 :: v_dual_fmac_f32 v20, s76, v162
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s15, 1, v49.l
	v_and_b16 v49.l, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	v_and_b16 v10.l, 1, v10.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v23, s76, v165 :: v_dual_fmac_f32 v26, s76, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s8, 1, v49.l
	v_and_b16 v49.l, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	v_and_b16 v52.h, 1, v10.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v19, s76, v166 :: v_dual_fmac_f32 v28, s76, v155
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s16, 1, v49.l
	v_and_b16 v49.l, 1, v12.h
	v_and_b16 v10.h, 1, v12.l
	v_lshrrev_b16 v12.h, 8, v12.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v21, s76, v158 :: v_dual_fmac_f32 v30, s76, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s9, 1, v49.l
	v_and_b16 v49.l, 1, v25.l
	v_lshrrev_b16 v25.l, 8, v25.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v22, s76, v154 :: v_dual_fmac_f32 v33, s76, v151
	v_dual_fmac_f32 v32, s76, v152 :: v_dual_fmac_f32 v35, s76, v147
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s17, 1, v49.l
	v_and_b16 v49.l, 1, v25.h
	v_lshrrev_b16 v25.h, 8, v25.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v41, s76, v55 :: v_dual_fmac_f32 v46, s76, v56
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s24, 1, v10.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s10, 1, v49.l
	v_and_b16 v49.l, 1, v27.l
	v_lshrrev_b16 v27.l, 8, v27.l
	v_cmp_eq_u16_e64 s25, 1, v10.h
	v_cmp_eq_u16_e64 s31, 1, v52.l
	v_and_b16 v12.l, 1, v12.h
	v_cmp_eq_u16_e64 s18, 1, v49.l
	v_and_b16 v49.l, 1, v27.h
	v_lshrrev_b16 v27.h, 8, v27.h
	v_and_b16 v27.l, 1, v27.l
	v_and_b16 v12.h, 1, v25.l
	v_and_b16 v55.l, 1, v25.h
	v_cmp_eq_u16_e64 s11, 1, v49.l
	v_and_b16 v49.l, 1, v29.l
	v_lshrrev_b16 v29.l, 8, v29.l
	v_and_b16 v55.h, 1, v27.h
	v_cmp_eq_u16_e64 s27, 1, v27.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v40, s76, v51 :: v_dual_fmac_f32 v43, s76, v146
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s19, 1, v49.l
	v_and_b16 v49.l, 1, v29.h
	v_lshrrev_b16 v29.h, 8, v29.h
	v_and_b16 v29.l, 1, v29.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v48, s76, v145
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v17, 0xff800000, v17, s16
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s12, 1, v49.l
	v_and_b16 v49.l, 1, v31.l
	v_lshrrev_b16 v31.l, 8, v31.l
	v_and_b16 v56.l, 1, v29.h
	v_cmp_eq_u16_e64 s28, 1, v29.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v27, 0xff800000, v26, s19
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s20, 1, v49.l
	v_and_b16 v49.l, 1, v31.h
	v_lshrrev_b16 v31.h, 8, v31.h
	v_and_b16 v31.l, 1, v31.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s7
	v_cndmask_b32_e64 v29, 0xff800000, v28, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s13, 1, v49.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v49.l, 1, v47.l
	v_lshrrev_b16 v47.l, 8, v47.l
	v_and_b16 v56.h, 1, v31.h
	v_cmp_eq_u16_e64 s29, 1, v31.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v18, 0xff800000, v18, s25
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s21, 1, v49.l
	v_and_b16 v49.l, 1, v47.h
	v_lshrrev_b16 v47.h, 8, v47.h
	v_and_b16 v47.l, 1, v47.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v26, 0xff800000, v20, s27
	v_cndmask_b32_e64 v31, 0xff800000, v30, s21
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s14, 1, v49.l
	v_lshrrev_b16 v49.l, 8, v9.h
	v_and_b16 v9.h, 1, v9.h
	v_cmp_eq_u16_e64 s30, 1, v47.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v28, 0xff800000, v21, s28
	v_cndmask_b32_e64 v30, 0xff800000, v22, s29
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v49.l, 1, v49.l
	v_cmp_eq_u16_e64 s22, 1, v9.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v32, 0xff800000, v32, s30
	v_cndmask_b32_e64 v34, 0xff800000, v34, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s36, 1, v55.h
	v_cmp_eq_u16_e64 s23, 1, v49.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v9, 0xff800000, v15, s22
	v_cndmask_b32_e64 v15, 0xff800000, v16, s15
	v_cndmask_b32_e64 v16, 0xff800000, v14, s24
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s37, 1, v56.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v10, 0xff800000, v13, s23
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v42, s76, v144
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v144.l, 1, v47.h
	v_cmp_eq_u16_e64 s38, 1, v56.h
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v143, v143, v143 :: v_dual_fmac_f32 v24, s76, v164
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s26, 1, v12.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s39, 1, v144.l
	v_cmp_eq_u16_e64 s33, 1, v52.h
	v_cmp_eq_u16_e64 s34, 1, v12.l
	v_cmp_eq_u16_e64 s35, 1, v55.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v47, 0xff800000, v46, s12
	v_cndmask_b32_e64 v49, 0xff800000, v48, s13
	v_cndmask_b32_e64 v51, 0xff800000, v50, s14
	v_cndmask_b32_e64 v46, 0xff800000, v41, s36
	v_cndmask_b32_e64 v50, 0xff800000, v43, s38
	v_cndmask_b32_e64 v52, 0xff800000, v44, s39
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v41, v9, v10
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v48, 0xff800000, v42, s37
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v42, v16, v17, v18
	v_max3_f32 v43, v26, v27, v28
	v_max3_f32 v44, v29, v30, v31
	v_max3_f32 v169, v32, v33, v34
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v23, 0xff800000, v23, s17
	v_cndmask_b32_e64 v25, 0xff800000, v24, s18
	v_cndmask_b32_e64 v24, 0xff800000, v19, s26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v35, 0xff800000, v35, s8
	v_cndmask_b32_e64 v37, 0xff800000, v37, s9
	v_cndmask_b32_e64 v39, 0xff800000, v39, s10
	v_cndmask_b32_e64 v45, 0xff800000, v45, s11
	v_cndmask_b32_e64 v36, 0xff800000, v36, s33
	v_cndmask_b32_e64 v38, 0xff800000, v38, s34
	v_cndmask_b32_e64 v40, 0xff800000, v40, s35
	ds_store_b64 v11, v[9:10]
	ds_store_b64 v114, v[15:16]
	ds_store_b64 v115, v[17:18]
	ds_store_b64 v116, v[23:24]
	ds_store_b64 v117, v[25:26]
	ds_store_b64 v118, v[27:28]
	ds_store_b64 v119, v[29:30]
	ds_store_b64 v120, v[31:32]
	ds_store_b64 v121, v[33:34]
	ds_store_b64 v122, v[35:36]
	ds_store_b64 v123, v[37:38]
	ds_store_b64 v124, v[39:40]
	ds_store_b64 v125, v[45:46]
	ds_store_b64 v126, v[47:48]
	ds_store_b64 v127, v[49:50]
	ds_store_b64 v128, v[51:52]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[11:14], v167, s[68:71], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v149, v41, v15, v42
	v_max3_f32 v167, v43, v44, v169
.Ltmp6:
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[41:44], v168, s[68:71], 0 offen
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v55, v23, v24, v25
	v_max3_f32 v56, v35, v36, v37
	v_max3_f32 v144, v38, v39, v40
	v_max3_f32 v145, v45, v46, v47
	v_max_f32_e32 v146, v48, v49
	v_max_f32_e32 v148, v51, v52
	v_max3_f32 v55, v149, v55, v167
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_2addr_b64 v[19:22], v113 offset1:16
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v56, v56, v144, v145
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.h, 0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v144, v146, v50, v148
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v84, v[11:14]
	s_waitcnt vmcnt(0)
	ds_store_b128 v84, v[41:44] offset:4096
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v55, v55, v56, v144
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v152.h, v156.h
	v_mov_b16_e64 v166.h, v156.h
	v_mov_b16_e64 v154.h, v156.h
	v_mov_b16_e64 v163.h, v156.h
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v145, v55, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v150.h, v156.h
	v_mov_b16_e64 v158.h, v156.h
	v_mov_b16_e64 v161.h, v156.h
	v_mov_b16_e64 v162.h, v156.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v145, v53, v55, v145
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v144, v19, v19
.Ltmp18:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v160.h, v156.h
	v_mov_b16_e64 v164.h, v156.h
	v_mov_b16_e64 v159.h, v156.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v10, v145
	v_sub_f32_e32 v25, v25, v145
	v_sub_f32_e32 v40, v40, v145
	v_sub_f32_e32 v51, v51, v145
	v_sub_f32_e32 v17, v17, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v51, v51
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v15, v145
	v_sub_f32_e32 v36, v36, v145
	v_sub_f32_e32 v49, v49, v145
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v145
	v_sub_f32_e32 v50, v50, v145
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s23
	v_cndmask_b32_e64 v25, 0, v25, s18
	v_cndmask_b32_e64 v167, 0, v40, s35
	v_cndmask_b32_e64 v40, 0, v51, s14
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v156.l, v10.h
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v56, v21, v21
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v166.l, v25.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v39, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v51, 1, v156
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v56, v144, v56
.Ltmp22:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v148, 1, v166
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s16
	v_cndmask_b32_e64 v146, 0, v36, s33
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v55, v56, v20, v22
.Ltmp24:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v29, v29, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v163.l, v17.h
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v56, v53, v145
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v144, v55
.Ltmp26:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v29, v29
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v39, s10
	v_cndmask_b32_e64 v39, 0, v49, s13
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
.Ltmp27:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v144, v144 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v50, v50
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s15
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v150.l, v39.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v9, v145
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v53, v144, v144
.Ltmp30:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v161.l, v15.h
	v_and_b32_e32 v150, 1, v150
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v149, 0, v38, s34
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v49, v55, v53
.Ltmp32:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v55, 1, v163
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v56, v56
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v35, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v162.l, v29.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v18, v18, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v48, v145
	v_sub_f32_e32 v52, v52, v145
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v155.h, v156.h
	v_mov_b16_e64 v153.h, v156.h
	v_mov_b16_e64 v151.h, v156.h
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v56, 0, v56, s40
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v33, v145
	v_sub_f32_e32 v16, v16, v145
	v_sub_f32_e32 v27, v27, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v31, v31, v145 :: v_dual_mul_f32 v6, v6, v56
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v8, v8, v56
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v56
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v16, v16
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v4, v4, v56
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v31, v31
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s22
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v23, v23, v145 :: v_dual_mul_f32 v2, v2, v56
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v48, v48
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v160.l, v9.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v16, 0, v16, s24
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v145
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v27, s19
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v158.l, v33.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v47, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.l, v16.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v32, v32, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v10, v10
	v_and_b32_e32 v158, 1, v158
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v164.l, v27.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v45, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v10, v10, v51, 0x7fff
	v_and_b32_e32 v51, 1, v156
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v31, 0, v31, s21
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v23, v23
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v47, s12
	v_cndmask_b32_e64 v47, 0, v50, s38
.Ltmp33:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v50, v49
.Ltmp34:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v159.l, v31.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v24, v24, v145
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v32, v32
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v53, 1, v161
	v_and_b32_e32 v161, 1, v162
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v159, 1, v159
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v24, v24
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v23, 0, v23, s17
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s16, v25, v25
	v_mov_b16_e64 v153.l, v36.h
	v_mov_b16_e64 v151.l, v38.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v28, v28, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v25, v25, v148, 0x7fff
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp38:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v18, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s18, v27, v27
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v24, 0, v24, s26
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v165.h, v156.h
	v_mov_b16_e64 v147.h, v156.h
	v_mov_b16_e64 v156.l, v18.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v34, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v15, v15
	v_mov_b16_e64 v165.l, v23.h
	v_cmp_o_f32_e64 s24, v33, v33
	v_mov_b16_e64 v147.l, v40.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v153, 1, v153
	v_and_b32_e32 v151, 1, v151
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v28, v28
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v15, v15, v53, 0x7fff
	v_add3_u32 v33, v33, v158, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v30, v30, v145 :: v_dual_and_b32 v147, 1, v147
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v32, 0, v32, s30
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v56
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v34, s31
	v_cndmask_b32_e64 v34, 0, v35, s8
	v_cndmask_b32_e64 v35, 0, v37, s9
	v_cndmask_b32_e64 v37, 0, v45, s11
	v_cndmask_b32_e64 v45, 0, v48, s37
	v_cndmask_b32_e64 v48, 0, v52, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v155.l, v34.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v26, v26, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v152.l, v37.h
	v_and_b32_e32 v52, 1, v160
	v_and_b32_e32 v160, 1, v164
	v_cmp_o_f32_e64 s8, v9, v9
	v_and_b32_e32 v155, 1, v155
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v26, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v152, 1, v152
	v_add3_u32 v9, v9, v52, 0x7fff
	v_add3_u32 v27, v27, v160, 0x7fff
	v_cmp_o_f32_e64 s9, v16, v16
	v_mov_b16_e64 v154.l, v35.h
	v_cmp_o_f32_e64 s33, v37, v37
	v_add3_u32 v37, v37, v152, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s8
	v_add3_u32 v9, v16, v51, 0x7fff
	v_and_b32_e32 v51, 1, v156
	v_mov_b16_e64 v156.l, v24.h
	v_cndmask_b16 v27.l, 0x7fff, v25.h, s16
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v25, v49, v50
.Ltmp40:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v26, 0, v26, s27
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v56
	v_mul_f32_e32 v5, v5, v56
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v18, v18
	v_cmp_o_f32_e64 s12, v17, v17
	v_cmp_o_f32_e64 s30, v36, v36
	v_cmp_o_f32_e64 s37, v39, v39
	v_and_b32_e32 v56, 1, v165
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v17, v17, v55, 0x7fff
	v_add3_u32 v36, v36, v153, 0x7fff
	v_add3_u32 v39, v39, v150, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v15.h, s10
	v_cndmask_b16 v53.l, 0x7fff, v33.h, s24
	v_cndmask_b16 v150.l, 0x7fff, v37.h, s33
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s9
	v_add3_u32 v18, v18, v51, 0x7fff
	v_and_b32_e32 v33, 1, v156
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v37, v25
.Ltmp42:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v28, 0, v28, s28
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v24, v24
	v_cmp_o_f32_e64 s14, v23, v23
	v_cmp_o_f32_e64 s26, v34, v34
	v_cmp_o_f32_e64 s28, v35, v35
	v_cmp_o_f32_e64 s39, v40, v40
	v_add3_u32 v23, v23, v56, 0x7fff
	v_add3_u32 v34, v34, v155, 0x7fff
	v_add3_u32 v35, v35, v154, 0x7fff
	v_add3_u32 v40, v40, v147, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s7
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s12
	v_cndmask_b16 v147.l, 0x7fff, v36.h, s30
	v_mov_b16_e64 v156.l, v26.h
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s11
	v_add3_u32 v18, v24, v33, 0x7fff
	v_permlanex16_b32 v36, v9, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v30, v30
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s14
	v_cndmask_b16 v55.l, 0x7fff, v34.h, s26
	v_cndmask_b16 v56.l, 0x7fff, v35.h, s28
	v_permlanex16_b32 v34, v10, s75, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 1, v156
	v_mov_b16_e64 v156.l, v28.h
	v_cndmask_b16 v23.h, 0x7fff, v18.h, s13
	v_perm_b32 v35, v36, v9, v69
	v_perm_b32 v36, v36, v9, v139
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v37, v37
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v26, v26
	v_perm_b32 v33, v34, v10, v69
	v_perm_b32 v34, v34, v10, v139
	v_add3_u32 v10, v26, v24, 0x7fff
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v9, v25, v9 :: v_dual_and_b32 v18, 1, v156
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v26, v23, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v30, 0, v30, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v15.l, 0x7fff, v39.h, s37
	v_cndmask_b16 v16.l, 0x7fff, v40.h, s39
	v_cmp_o_f32_e64 s20, v29, v29
	v_perm_b32 v39, v26, v23, v69
	v_perm_b32 v40, v26, v23, v139
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v23, v9
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.l, v30.h
	v_add3_u32 v29, v29, v161, 0x7fff
	v_cmp_o_f32_e64 s17, v28, v28
	v_cmp_o_f32_e64 s35, v38, v38
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v38, v38, v151, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v27.h, s18
	v_permlanex16_b32 v24, v17, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v27.h, 0x7fff, v10.h, s15
	v_add3_u32 v10, v28, v18, 0x7fff
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v23, v23, v23 :: v_dual_and_b32 v18, 1, v156
.Ltmp54:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.l, v32.h
	v_cmp_o_f32_e64 s22, v31, v31
	v_add3_u32 v31, v31, v159, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v46, v46, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v30, v30
	v_cndmask_b16 v31.l, 0x7fff, v29.h, s20
	v_cndmask_b16 v148.l, 0x7fff, v38.h, s35
	v_perm_b32 v37, v24, v17, v69
	v_perm_b32 v38, v24, v17, v139
	v_cndmask_b16 v29.h, 0x7fff, v10.h, s17
	v_and_b32_e32 v17, 1, v156
	v_mov_b16_e64 v156.l, v144.h
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v9, v23
.Ltmp56:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v10, v30, v18, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v32, v32
	v_cndmask_b16 v52.l, 0x7fff, v31.h, s22
	v_cmp_o_f32_e64 s23, v144, v144
	v_cndmask_b16 v31.h, 0x7fff, v10.h, s19
	v_add3_u32 v10, v32, v17, 0x7fff
	v_and_b32_e32 v17, 1, v156
	v_mov_b16_e64 v156.l, v146.h
	v_cmp_o_f32_e64 s25, v146, v146
	v_cmp_o_f32_e64 s27, v149, v149
	v_cndmask_b16 v52.h, 0x7fff, v10.h, s21
	v_add3_u32 v10, v144, v17, 0x7fff
	v_and_b32_e32 v17, 1, v156
	v_mov_b16_e64 v156.l, v149.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s36
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v18, v27, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v53.h, 0x7fff, v10.h, s23
	v_add3_u32 v10, v146, v17, 0x7fff
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v144, v157, v9 :: v_dual_and_b32 v17, 1, v156
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.l, v167.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v143, v143, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v55.h, 0x7fff, v10.h, s25
	v_add3_u32 v10, v149, v17, 0x7fff
	v_cmp_o_f32_e64 s29, v167, v167
	v_and_b32_e32 v17, 1, v156
	v_mov_b16_e64 v156.l, v46.h
	v_permlanex16_b32 v24, v29, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v25, v18, v27, v69
	v_perm_b32 v26, v18, v27, v139
	v_permlanex16_b32 v18, v31, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v56.h, 0x7fff, v10.h, s27
	v_and_b32_e32 v10, 1, v156
	v_mov_b16_e64 v156.l, v45.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v20, v143
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v9, v167, v17, 0x7fff
	v_cmp_o_f32_e64 s31, v46, v46
	v_perm_b32 v27, v24, v29, v69
	v_perm_b32 v28, v24, v29, v139
	v_permlanex16_b32 v24, v52, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v29, v18, v31, v69
	v_perm_b32 v30, v18, v31, v139
	v_permlanex16_b32 v18, v53, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v19, v143
	v_sub_f32_e32 v22, v22, v143
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v147.h, 0x7fff, v9.h, s29
	v_add3_u32 v9, v46, v10, 0x7fff
	v_and_b32_e32 v10, 1, v156
	v_mov_b16_e64 v156.l, v47.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v21, v143
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v31, v24, v52, v69
	v_perm_b32 v32, v24, v52, v139
	v_perm_b32 v17, v18, v53, v69
	v_perm_b32 v18, v18, v53, v139
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v53, v22
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v150.h, 0x7fff, v9.h, s31
	v_add3_u32 v9, v45, v10, 0x7fff
	v_and_b32_e32 v10, 1, v156
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v52, v21
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s34, v45, v45
	v_permlanex16_b32 v46, v56, s75, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v156.l, v48.h
	v_cmp_o_f32_e64 s36, v47, v47
	v_permlanex16_b32 v45, v150, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v148.h, 0x7fff, v9.h, s34
	v_perm_b32 v21, v46, v56, v69
	v_perm_b32 v22, v46, v56, v139
	v_add3_u32 v9, v47, v10, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v49, s5
	v_cndmask_b32_e64 v47, 0, v52, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v10, 1, v156
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v50, s6
	v_cndmask_b32_e64 v50, 0, v53, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s38, v48, v48
	v_cndmask_b16 v15.h, 0x7fff, v9.h, s36
	v_add3_u32 v48, v48, v10, 0x7fff
	v_perm_b32 v9, v45, v150, v69
	v_perm_b32 v10, v45, v150, v139
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v45, v46, v47 :: v_dual_add_f32 v46, v49, v50
.Ltmp58:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v24, v54, v144
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cmp_neq_f32_e64 s7, 0xff800000, v54
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v23, v55, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v45, v45, v46
.Ltmp60:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v51, v24
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v24, v147, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v23, v55, v69
	v_perm_b32 v20, v23, v55, v139
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v46, v45
.Ltmp62:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v23, v24, v147, v69
	v_perm_b32 v24, v24, v147, v139
	v_cndmask_b16 v16.h, 0x7fff, v48.h, s38
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v46, v46 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v146, 0, v51, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v149, v148, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v15, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v45, v45, v46
.Ltmp66:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v11, v149, v148, v69
	v_perm_b32 v12, v149, v148, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v13, v14, v15, v69
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v46, v45
.Ltmp68:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v14, v14, v15, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v46, v46 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v45, v45, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v46, v45
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v147, v45, v46
.Ltmp73:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v150, v83
	ds_load_u16_d16 v151, v83 offset:256
	ds_load_u16_d16 v152, v83 offset:512
	ds_load_u16_d16 v153, v83 offset:768
	ds_load_u16_d16 v154, v83 offset:1024
	ds_load_u16_d16 v155, v83 offset:1280
	ds_load_u16_d16 v156, v83 offset:1536
	ds_load_u16_d16 v157, v83 offset:1792
	ds_load_u16_d16 v158, v83 offset:2048
	ds_load_u16_d16 v159, v83 offset:2304
	ds_load_u16_d16 v160, v83 offset:2560
	ds_load_u16_d16 v161, v83 offset:2816
	ds_load_u16_d16 v162, v83 offset:3072
	ds_load_u16_d16 v163, v83 offset:3328
	ds_load_u16_d16 v164, v83 offset:3584
	ds_load_u16_d16 v165, v83 offset:3840
	ds_load_u16_d16 v49, v83 offset:4096
	ds_load_u16_d16 v50, v83 offset:4352
	ds_load_u16_d16 v51, v83 offset:4608
	ds_load_u16_d16 v52, v83 offset:4864
	ds_load_u16_d16 v53, v83 offset:5120
	ds_load_u16_d16 v54, v83 offset:5376
	ds_load_u16_d16 v55, v83 offset:5632
	ds_load_u16_d16 v56, v83 offset:5888
	ds_load_u16_d16 v41, v83 offset:6144
	ds_load_u16_d16 v42, v83 offset:6400
	ds_load_u16_d16 v43, v83 offset:6656
	ds_load_u16_d16 v44, v83 offset:6912
	ds_load_u16_d16 v45, v83 offset:7168
	ds_load_u16_d16 v46, v83 offset:7424
	ds_load_u16_d16 v47, v83 offset:7680
	ds_load_u16_d16 v48, v83 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v150, v83 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v151, v83 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v152, v83 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v153, v83 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v154, v83 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v155, v83 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v156, v83 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v157, v83 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v158, v83 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v159, v83 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v83 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v161, v83 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v162, v83 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v163, v83 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v164, v83 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v165, v83 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v49, v83 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v50, v83 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v51, v83 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v52, v83 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v53, v83 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v54, v83 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v55, v83 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v56, v83 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v41, v83 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v42, v83 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v43, v83 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v44, v83 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v45, v83 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v46, v83 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v47, v83 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v48, v83 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[150:157], v[33:40], v[1:8]
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v33, v147
.Ltmp75:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v34, v16, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[158:165], v[25:32], v[1:8]
.Ltmp76:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v15, v34, v16, v69
	v_perm_b32 v16, v34, v16, v139
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v25, v147, v33
.Ltmp79:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[17:24], v[1:8]
	v_mov_b32_e32 v53, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v25, v142, v146
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[9:16], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v25, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v75
	s_mov_b32 s1, 0x76543210
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp81:
	.loc	1 835 13                        ; attention.py:835:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v9, 0xff800000, v144, vcc_lo
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s54, s54, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s43, 2
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	v_or_b32_e32 v21, v21, v72
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp84:
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v12, 0, v25, vcc_lo
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v74
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v11, 28, v77
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp87:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v10
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshl_add_u32 v10, v76, 2, 0
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp92:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s41, s54
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v12, v12, v13
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
.Ltmp96:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_dual_mov_b32 v6, v3 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_barrier
	ds_load_b32 v10, v10
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_add_f32_e32 v3, v3, v6
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v9
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v2, v2, v5
.Ltmp107:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v14
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v2 :: v_dual_add_f32 v12, v12, v16
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v7, v7
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v7, v1 :: v_dual_add_f32 v14, v14, v18
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v5, v10
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v9
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
.Ltmp119:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v8, v20
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v3
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v10, v5
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v15, v19 :: v_dual_max_f32 v6, v6, v6
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v11
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v2
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v12, v12, v16
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v17, v3
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v18, v8, v20
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v7, v5 :: v_dual_add_f32 v2, v2, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp134:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_add_f32 v4, v3, v17
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp136:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v13
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v7
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v2
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v10 :: v_dual_mov_b32 v10, v7
	v_add_f32_e32 v13, v13, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
.Ltmp143:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_add_f32 v8, v12, v16
	v_mov_b32_e32 v22, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v12, v8
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp145:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v17
	v_add_f32_e32 v17, v15, v19
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v15, v13
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v15
	v_add_f32_e32 v16, v17, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v18, v22
	v_add_f32_e32 v15, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v16 :: v_dual_mov_b32 v20, v17
	v_mov_b32_e32 v18, v15
	v_mov_b32_e32 v14, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp153:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp155:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp156:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v13, v14 :: v_dual_lshlrev_b32 v9, 2, v0
	v_add_f32_e32 v15, v15, v18
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v2, v5
	v_dual_add_f32 v7, v8, v12 :: v_dual_and_b32 v2, 0xc0, v9
.Ltmp157:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v8, 0xe0, v71
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v3, 32, v73
.Ltmp159:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v2
	v_add_nc_u32_e32 v8, 0, v8
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v17, v17, v20 :: v_dual_add_f32 v16, v16, v19
.Ltmp161:
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v0, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v2, v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[14:17] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 835 13                        ; attention.py:835:13
	v_cmp_eq_u32_e64 s0, 0, v70
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
.Ltmp162:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 188
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 188
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10564
; TotalNumSgprs: 80
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 188
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
