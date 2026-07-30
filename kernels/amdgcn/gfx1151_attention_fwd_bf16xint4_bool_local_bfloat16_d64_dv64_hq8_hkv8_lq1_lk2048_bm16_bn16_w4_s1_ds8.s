	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x60
	s_load_b64 s[14:15], s[0:1], 0x58
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v59, 3, v0
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b64 s[20:21], s[0:1], 0x0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v53, 1, v0
	v_lshlrev_b32_e32 v7, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v56, 31, v0
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v60, 15, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v54, 0x70, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v8, 0x70, v53
	v_lshrrev_b32_e32 v58, 5, v0
	v_lshlrev_b32_e32 v55, 5, v0
	v_lshlrev_b32_e32 v57, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v7, v7, v8
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s34
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s34
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v61, 0, v7
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v3, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[51:52], null, s14, v59, v[3:4]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s4
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s14, v3
	.loc	1 609 32                        ; attention.py:609:32
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
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s12, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s34
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s12, v59
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s12, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s33, s2, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s4, s4, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, s4, v51, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s13, 1, v2
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s13
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s34, 0x7f
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s34
	s_abs_i32 s4, s4
	.loc	1 599 26                        ; attention.py:599:26
	buffer_load_b128 v[3:6], v3, s[20:23], 0 offen
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x78
	s_load_b32 s18, s[0:1], 0x80
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s21, s18
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s18, s20
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, s12
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 16
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s6, s33, s2
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s4, s4, 0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 15
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s6, s6, 4
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s4, s4, 0x7ffffff0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 28
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl4_add_u32 s2, s2, s6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s5, s7
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s35, s6, s4
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s5, s5, -16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 18 is_stmt 0              ; attention.py:619:18
	s_min_i32 s36, s2, s5
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cmp_ge_i32 s35, s36
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v3, 4, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_lshlrev_b32_e32 v62, 1, v1
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v1, s18, v2
	s_clause 0x2
	s_load_b128 s[24:27], s[0:1], 0x28
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v2, v60, 7, v3
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 572 22                        ; attention.py:572:22
	v_lshlrev_b32_e32 v52, 2, v60
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s1, s0, 29
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v64, s20, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v3, 16, v2
	v_xor_b32_e32 v4, 32, v2
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v7, 0x50, v2
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s2, s1, -8
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v72, 0, v3
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v71, 0, v4
	v_lshrrev_b32_e32 v3, 2, v0
	v_bfe_i32 v4, v0, 4, 1
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s2, s3, s2
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s1, 3
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v68, 0, v7
	v_or_b32_e32 v3, v3, v55
	v_and_b32_e32 v4, 0x84, v4
	.loc	1 754 27                        ; attention.py:754:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s10, s2
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s1, s9, s1
	v_mov_b32_e32 v7, 0x5410
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s40, s2, s1
	v_and_or_b32 v77, 0x63, v3, v4
	v_and_b32_e32 v4, 16, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v5, 48, v2
	v_xor_b32_e32 v6, 64, v2
	v_xor_b32_e32 v8, 0x60, v2
	v_xor_b32_e32 v9, 0x70, v2
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_nc_u32_e32 v73, 0, v2
	v_mul_lo_u32 v2, s11, v59
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v63, 1, v62
	.loc	1 749 47                        ; attention.py:749:47
	v_add_nc_u32_e32 v65, s21, v1
	v_cndmask_b32_e64 v4, 0x1054, v7, s1
	v_mov_b32_e32 v7, 0x7632
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v1, 4, v54
	v_and_b32_e32 v49, 0x160, v55
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v66, 0, v9
	v_dual_mov_b32 v99, 0xff800000 :: v_dual_add_nc_u32 v74, v2, v63
	v_dual_mov_b32 v97, 0xff800000 :: v_dual_add_nc_u32 v76, v2, v62
	v_and_b32_e32 v2, 0x60, v0
	v_lshl_or_b32 v4, v4, 8, v4
	v_cndmask_b32_e64 v7, 0x3276, v7, s1
	v_lshl_or_b32 v80, s3, 10, v1
	v_bfe_i32 v48, v0, 0, 1
	v_lshrrev_b32_e32 v41, 3, v2
	v_and_b32_e32 v4, 0x540054, v4
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshlrev_b32_e32 v2, 4, v2
	v_lshl_or_b32 v75, v56, 2, v58
	v_xor_b32_e32 v79, v57, v41
	v_lshl_or_b32 v1, v4, 4, v4
	v_and_b32_e32 v4, 0x760076, v7
	v_bfe_i32 v7, v0, 2, 1
	v_lshlrev_b32_e32 v41, 7, v0
	v_lshrrev_b32_e32 v50, 2, v54
	v_and_b32_e32 v48, 0x90, v48
	v_xor_b32_e32 v3, 0x84, v75
	v_and_b32_e32 v7, 0x90, v7
	v_and_b32_e32 v41, 0x700, v41
	v_and_b32_e32 v82, 0x5040504, v1
	v_xor_b32_e32 v1, v48, v50
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_add_nc_u32 v69, 0, v6
	v_or3_b32 v81, v49, v2, v7
	v_add_nc_u32_e32 v2, 0, v41
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v70, 0, v5
	v_and_b32_e32 v5, 28, v0
	v_add_nc_u32_e32 v67, 0, v8
	v_add_nc_u32_e32 v84, 0, v3
	v_add_nc_u32_e32 v94, v2, v1
	v_mov_b32_e32 v1, 0
	v_lshl_or_b32 v78, v56, 5, v5
	v_xor_b32_e32 v5, 4, v77
	v_mov_b32_e32 v3, v41
	v_lshl_or_b32 v4, v4, 4, v4
	v_xor_b32_e32 v47, 0x210, v79
	v_xor_b32_e32 v8, 8, v78
	v_add_nc_u32_e32 v85, 0, v5
	v_mov_b32_e32 v5, v41
	ds_load_b128 v[37:40], v72
	ds_load_b128 v[33:36], v73
	v_xor_b32_e32 v6, 4, v78
	v_add_nc_u32_e32 v87, 0, v8
	v_mov_b32_e32 v8, v41
	ds_load_b128 v[13:16], v66
	ds_load_b128 v[9:12], v67
	ds_load_b128 v[21:24], v68
	ds_load_b128 v[17:20], v69
	ds_load_b128 v[29:32], v70
	ds_load_b128 v[25:28], v71
	v_xor_b32_e32 v42, 12, v78
	v_xor_b32_e32 v43, 16, v78
	v_xor_b32_e32 v44, 20, v78
	v_xor_b32_e32 v45, 24, v78
	v_xor_b32_e32 v46, 28, v78
	v_and_b32_e32 v83, 0x7060706, v4
	v_xor_b32_e32 v4, 16, v81
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s15, v52
	v_add_nc_u32_e32 v86, 0, v6
	v_add_nc_u32_e32 v88, 0, v42
	v_add_nc_u32_e32 v89, 0, v43
	v_add_nc_u32_e32 v90, 0, v44
	v_add_nc_u32_e32 v91, 0, v45
	v_add_nc_u32_e32 v92, 0, v46
	v_add_nc_u32_e32 v93, 0, v47
	v_dual_mov_b32 v2, v41 :: v_dual_add_nc_u32 v95, 0, v4
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s38, s8, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s12, s12, s11
	s_and_b32 s5, s5, 0xffff
	.loc	1 734 32                        ; attention.py:734:32
	s_lshl_b32 s37, s3, 11
	s_mov_b64 s[18:19], s[26:27]
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s39, s3, 7
	s_add_i32 s40, s40, s12
	s_and_b32 s29, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s41, 0x76543210
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s28, s6
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_waitcnt vmcnt(0)
	v_and_b16 v50.h, 0xff, v50.h
	v_and_b16 v50.l, 0xff, v50.l
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v106, s38, v45 :: v_dual_add_nc_u32 v101, 0, v75
	v_dual_mul_f32 v103, s38, v42 :: v_dual_add_nc_u32 v102, 0, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s1, 0, v50.h
	v_cmp_ne_u16_e64 s2, 0, v50.l
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 742 17 is_stmt 1              ; attention.py:742:17
	v_dual_mul_f32 v104, s38, v43 :: v_dual_mul_f32 v105, s38, v44
	.loc	1 759 25                        ; attention.py:759:25
	s_and_b32 s1, s4, s1
	s_and_b32 s4, s5, s2
	v_cndmask_b32_e64 v50, 0, 1, s1
	v_cndmask_b32_e64 v100, 0, 1, s4
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s2, s35, 1
	.loc	1 759 25                        ; attention.py:759:25
	ds_store_b8 v101, v50
	ds_store_b8 v84, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v50, v102
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v50, v85
	ds_load_u8_d16 v100, v102 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v100, v85 offset:8
	ds_load_u8_d16 v101, v102 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v101, v85 offset:16
	ds_load_u8_d16 v102, v102 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v102, v85 offset:24
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v46, s38, v46 :: v_dual_mul_f32 v47, s38, v47
	v_dual_mul_f32 v48, s38, v48 :: v_dual_mul_f32 v49, s38, v49
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v99, v99, v99
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v42.l, 1, v50.l
	v_and_b16 v42.h, 1, v50.h
	v_and_b16 v43.l, 1, v100.l
	v_and_b16 v43.h, 1, v100.h
	v_and_b16 v44.l, 1, v101.l
	v_cmp_eq_u16_e64 s5, 1, v42.l
	v_cmp_eq_u16_e64 s7, 1, v42.h
	.loc	1 764 26                        ; attention.py:764:26
	v_add_nc_u32_e32 v42, 0, v78
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s6, 1, v43.l
	v_and_b16 v44.h, 1, v101.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v50, 0xff800000, v103, s5
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v45.l, 1, v102.l
	v_and_b16 v45.h, 1, v102.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v101, 0xff800000, v105, s6
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s9, 1, v43.h
	.loc	1 764 26                        ; attention.py:764:26
	ds_store_b32 v42, v50
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v105, v97, v97 :: v_dual_add_nc_u32 v42, s2, v80
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s2, s35, 4
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s8, 1, v44.l
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s2, s2, s39
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[42:43], null, v42, s15, v[52:53]
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s2, s2, s15
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s11, 1, v44.h
	v_cmp_eq_u16_e64 s10, 1, v45.l
	v_cmp_eq_u16_e64 s12, 1, v45.h
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v43, s2, v52, 1
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v100, 0xff800000, v104, s7
	v_cndmask_b32_e64 v46, 0xff800000, v46, s8
	v_cndmask_b32_e64 v47, 0xff800000, v47, s11
	v_cndmask_b32_e64 v48, 0xff800000, v48, s10
	v_cndmask_b32_e64 v45, 0xff800000, v49, s12
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v102, 0xff800000, v106, s9
	ds_store_b32 v86, v100
	ds_store_b32 v87, v101
	ds_store_b32 v88, v102
	ds_store_b32 v89, v46
	ds_store_b32 v90, v47
	ds_store_b32 v91, v48
	ds_store_b32 v92, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v49, v42, s[28:31], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[43:44], v43, s[24:27], 0 offen
	.loc	1 764 26                        ; attention.py:764:26
	v_add_nc_u32_e32 v42, 0, v79
	ds_load_b32 v103, v93
	ds_load_b32 v42, v42
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v106, 0, v81
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v116, v50, v100, v101
	v_max3_f32 v117, v102, v46, v47
.Ltmp2:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v98
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v104.l, 0
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s35, s35, 16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v120.h, v104.l
	v_mov_b16_e32 v122.h, v104.l
	v_mov_b16_e32 v125.h, v104.l
	v_mov_b16_e32 v124.h, v104.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v115.h, v104.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v126.h, v104.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v108.h, v104.l
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v107.l, v104.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v110.h, v104.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v112, v103, v103 :: v_dual_max_f32 v113, v42, v42
.Ltmp4:
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v109.h, v104.l
	v_mov_b16_e32 v111.h, v104.l
	v_mov_b16_e32 v118.h, v104.l
	v_mov_b16_e32 v119.h, v104.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v112, v113, v112 :: v_dual_max_f32 v113, v48, v45
.Ltmp6:
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v114.h, v104.l
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s35, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v113, v116, v117, v113
.Ltmp8:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v116.h, v104.l
	v_mov_b16_e32 v117.h, v104.l
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v123, v113, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v123, v98, v113, v123
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v121, v112
.Ltmp12:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v113.h, v104.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v50, v50, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v121, v121 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp14:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v101, v101, v123
	v_sub_f32_e32 v102, v102, v123
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v121, v121, v121
.Ltmp16:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v102, v102
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v112, v112, v121 :: v_dual_sub_f32 v121, v98, v123
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v50, 0, v50, s5
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v127, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp20:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v121, v121
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v102, 0, v102, s9
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v101, 0, v101, s6
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v116.l, v50.h
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v127, v127 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s5, v50, v50
	v_mov_b16_e32 v117.l, v102.h
	v_mov_b16_e32 v122.l, v101.h
	v_cmp_o_f32_e64 s6, v102, v102
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v127, v127, v127
.Ltmp24:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v98, 0, v121, s2
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v47, v47, v123
	v_sub_f32_e32 v48, v48, v123
	v_sub_f32_e32 v45, v45, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v112, v112, v127 :: v_dual_mul_f32 v3, v3, v98
.Ltmp26:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v46, v46, v123 :: v_dual_mul_f32 v1, v1, v98
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v2, v2, v98 :: v_dual_mov_b32 v121, v112
	v_mul_f32_e32 v4, v4, v98
	v_dual_mul_f32 v7, v7, v98 :: v_dual_and_b32 v116, 1, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v46, v46
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v100, v100, v123 :: v_dual_and_b32 v117, 1, v117
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v121, v121, v121
.Ltmp30:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v45, v45
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v50, v50, v116, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v46, 0, v46, s8
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v112, v112, v121
.Ltmp32:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v98
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v47, 0, v47, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v125.l, v46.h
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v99, v99, v112
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v100, 0, v100, s7
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v5, v5, v98
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v48, 0, v48, s10
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s7, v101, v101
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v42, v42, v99
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v120.l, v100.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v98
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v98, v103, v99
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v124.l, v47.h
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v42, v42
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v113.l, v48.h
	v_and_b32_e32 v103, 1, v120
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v98, v98
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v121, 1, v125
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v45, 0, v45, s12
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s9, v46, v46
	v_cmp_o_f32_e64 s8, v47, v47
	v_cmp_o_f32_e64 s2, v100, v100
	v_add3_u32 v46, v46, v121, 0x7fff
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v42, 0, v42, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v126.l, v45.h
	v_cmp_o_f32_e64 s1, v48, v48
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v98, 0, v98, s4
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s10, v45, v45
	v_add3_u32 v100, v100, v103, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v42, v42, v98 :: v_dual_and_b32 v113, 1, v113
.Ltmp34:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v48, v48, v113, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v50.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v113.h, 0x7fff, v100.h, s2
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v104.h, v43.l
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v98, 1, v122
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v107.h, v44.l
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v98, v101, v98, 0x7fff
	v_add3_u32 v101, v102, v117, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v46.h, s9
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v46, 8, v49
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v117.l, 0x7fff, v48.h, s1
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v48, 24, v49
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v116.h, 0x7fff, v101.h, s6
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v101, 0xffff0000, v43
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v120, 1, v124
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v124, v42
.Ltmp36:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v122, 1, v126
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v43.l, 4, v49.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.h, v49.l, 15
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v47, v47, v120, 0x7fff
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v124, v124 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v45, v45, v122, 0x7fff
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v47.l, v49.h
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v43.l, v43.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v43.h
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v102, v42, v124
.Ltmp40:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v117.h, 0x7fff, v45.h, s10
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v45, v49, 0, 8
	v_bfe_i32 v103, v47, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v45.h, v46.l, 15
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v50, v102
.Ltmp42:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v47.l, v48.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v45.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v45.l, v43.l, -16
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cndmask_b16 v116.l, 0x7fff, v98.h, s7
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v98.h, 0x7fff, v47.h, s8
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v47.h, 0, -16, s1
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v45.h
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v45.l, v43.l, v45.l, s4
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v120, v102, v50
.Ltmp46:
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v102, 0xffff0000, v44
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v50, 20, v49
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v44.l, v49.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v49, v46, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v44.h, 4, v46.l
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v42, v105, v112
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v105, v48, 0, 8
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v44.l
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v46.h, 4, v48.l
	v_and_b16 v44.h, v44.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v48.l, v49.l
	v_mov_b16_e32 v49.l, v103.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v49.h, 0, -16, s2
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v46.l, v50.l, 15
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v43.l, v44.h, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v48.l
	v_mov_b16_e32 v50.l, v105.l
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v47.l
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_or_b16 v103.l, v43.h, v47.h
	v_cndmask_b16 v43.h, 0, -16, s1
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_cmp_gt_i16_e64 s1, 0, v49.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v48.l, v44.l, v49.h
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v49, v45, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v43.l, v44.h, v43.l, s4
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v48.h, v46.l, -16
	v_or_b16 v50.h, v46.h, -16
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v50.l
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v44.l, 0, -16, s2
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v103, v103, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v45.l, v45.h, v43.h
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v49, v49
	v_bfe_i32 v43, v43, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v46.l, v46.l, v48.h, s1
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v48, v48, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v44.l, v47.l, v44.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v47.l, v46.h, v50.h, s5
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v50, v103
	v_bfe_i32 v45, v45, 0, 16
	v_mul_f32_e32 v49, v104, v49
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v48, v48
	v_bfe_i32 v47, v47, 0, 16
	v_mul_f32_e32 v50, v104, v50
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v108.l, v49.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v43, v101, v43
	v_bfe_i32 v44, v44, 0, 16
	v_cvt_f32_i32_e32 v47, v47
	v_mul_f32_e32 v45, v101, v45
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v101, 1, v108
	v_mov_b16_e32 v110.l, v43.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v48, v107, v48
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v109.l, v50.h
	v_cmp_o_f32_e64 s1, v49, v49
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v47, v102, v47
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v49, v49, v101, 0x7fff
	v_and_b32_e32 v101, 1, v110
	v_mov_b16_e32 v115.l, v48.h
	v_mov_b16_e32 v111.l, v45.h
	v_mov_b16_e32 v118.l, v47.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v44, v102, v44
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v102, 1, v109
	v_and_b32_e32 v103, 1, v115
	v_cmp_o_f32_e64 s2, v50, v50
	v_cmp_o_f32_e64 s4, v48, v48
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v46, v46, 0, 16
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v50, v50, v102, 0x7fff
	v_and_b32_e32 v102, 1, v111
	v_add3_u32 v48, v48, v103, 0x7fff
	v_and_b32_e32 v103, 1, v118
	v_cmp_o_f32_e64 s6, v45, v45
	v_mov_b16_e32 v119.l, v44.h
	.loc	1 767 74 is_stmt 1              ; attention.py:767:74
	v_sub_f32_e32 v100, v97, v42
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s8, v47, v47
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s1
	v_add3_u32 v47, v47, v103, 0x7fff
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v97
	v_mov_b32_e32 v97, v42
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v45, v45, v102, 0x7fff
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v105, 1, v119
	v_cmp_o_f32_e64 s5, v43, v43
	v_add3_u32 v43, v43, v101, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v45.h, s6
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s8
.Ltmp47:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v47, v120
.Ltmp48:
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s9, v44, v44
	v_add3_u32 v44, v44, v105, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s2
	v_cndmask_b16 v43.l, 0x7fff, v48.h, s4
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v46, v107, v46
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_cndmask_b16 v48.h, 0x7fff, v43.h, s5
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s9
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_permlanex16_b32 v112, v113, s41, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v116, s41, 0xfedcba98 op_sel:[1,0]
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v114.l, v46.h
	v_cmp_o_f32_e64 s7, v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v108, v112, v113, v82
	v_perm_b32 v109, v112, v113, v83
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v104, 1, v114
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v110, v44, v116, v82
	v_perm_b32 v111, v44, v116, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v46, v46, v104, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v46.h, s7
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v46, v100
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v94, v49, v48 offset1:8
	ds_store_2addr_b32 v94, v43, v45 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[100:103], v106
	ds_load_b128 v[104:107], v95
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v45, v98, s41, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v117, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v43, v120, v47
.Ltmp52:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v46, 0, v46, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v112, v45, v98, v82
	v_perm_b32 v113, v45, v98, v83
	v_perm_b32 v114, v48, v117, v82
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v43, v96, v46
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v115, v48, v117, v83
	v_mov_b32_e32 v98, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v96, v43
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[100:107], v[108:115], v[1:8]
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s1, s35, s37
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v48, v41
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s1, s1, s14
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v47, v41
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v42, s1, v51, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v50, s35, v62
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s6, s40, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v50, v64
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s2, v50, v65
	v_mov_b16_e32 v50.l, 0
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b128 v[43:46], v42, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v42, v41
	v_mov_b16_e32 v50.h, v50.l
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s4, s13, s1
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[43:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[100:103], v73
	ds_load_b128 v[104:107], v72
	ds_load_b128 v[108:111], v71
	ds_load_b128 v[112:115], v70
	ds_load_b128 v[116:119], v69
	ds_load_b128 v[120:123], v68
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v49, v48
	v_mov_b32_e32 v48, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[124:127], v67
	ds_load_b128 v[128:131], v66
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[100:107], v[33:40], v[42:49]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[108:115], v[25:32], v[42:49]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[116:123], v[17:24], v[42:49]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[124:131], v[9:16], v[42:49]
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s2, s4
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v100, s6, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s1, s18, v100
	v_add_co_ci_u32_e64 v101, null, s19, v101, s1
	.loc	1 759 34                        ; attention.py:759:34
	global_load_d16_hi_u8 v50, v[100:101], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v100, s35, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s1, v100, v64
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s2, v100, v65
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s1, s1, s2
	s_and_b32 s5, s13, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s2, s5
	s_cbranch_execz .LBB0_2
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v100, s6, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s1, s18, v100
	v_add_co_ci_u32_e64 v101, null, s19, v101, s1
	global_load_d16_u8 v50, v[100:101], off
	s_branch .LBB0_2
.LBB0_7:
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v43, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v59
	s_mov_b32 s1, 0x76543210
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp54:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s34, s34, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v9, 0xff800000, v42, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_dual_cndmask_b32 v11, 0, v43 :: v_dual_and_b32 v12, 12, v57
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v60
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s15, 2
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v13, v11, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp58:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s33, s34
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp60:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_add_nc_u32 v12, 0, v12
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v11, v11, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v10 :: v_dual_and_b32 v10, 12, v59
.Ltmp63:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_mov_b32 v13, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v15, v11 :: v_dual_mov_b32 v14, v9
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v10, 0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v2
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v8, 0, v8 :: v_dual_add_f32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_mov_b32 v17, v3
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v16 :: v_dual_add_f32 v1, v1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v20, v8 :: v_dual_max_f32 v9, v9, v14
.Ltmp75:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v14, 0, v6, vcc_lo
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v12
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v12
.Ltmp79:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v4, v2 :: v_dual_add_f32 v3, v3, v17
.Ltmp81:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v11, v1 :: v_dual_add_f32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v4
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v12, v12, v16
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v18 :: v_dual_add_f32 v1, v1, v11
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_e32 v11, v2
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v4, v1
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v5 :: v_dual_add_f32 v2, v2, v11
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v10
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v6
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v3
	v_mov_b32_e32 v19, v15
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v18, v14
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v7, v10, v5 :: v_dual_mov_b32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v19
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v10, v7 :: v_dual_add_f32 v1, v1, v4
.Ltmp107:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v3, v17
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v17, v13 :: v_dual_add_f32 v14, v14, v18
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v17
	v_add_f32_e32 v15, v15, v19
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v13
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v13, v13, v17
	v_add_f32_e32 v17, v8, v20
	v_add_f32_e32 v8, v12, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_dual_mov_b32 v21, v17 :: v_dual_mov_b32 v12, v8
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v18, v14
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v17, v21
	v_add_f32_e32 v15, v15, v20
.Ltmp119:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v58, v56
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v20, v17 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp123:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp125:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v8, v12 :: v_dual_add_f32 v6, v5, v6
	v_dual_add_f32 v5, v2, v4 :: v_dual_and_b32 v8, 0xc0, v57
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v1, 28, v53
.Ltmp127:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v2, 32, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v8
	v_lshl_add_u32 v8, v54, 1, 0
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_f32 v19, v15, v19
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_f32 v17, v13, v16
.Ltmp129:
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v9, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v9
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s15, v9
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp130:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 132
		.amdhsa_next_free_sgpr 42
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 132
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5556
; TotalNumSgprs: 44
; NumVgprs: 132
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 132
; Occupancy: 10
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
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     132
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
