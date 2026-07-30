	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s15, s[0:1], 0x60
	s_load_b64 s[12:13], s[0:1], 0x58
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v53, 15, v0
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b64 s[20:21], s[0:1], 0x0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v50, 0x70, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v2, 2, v53
	.loc	1 572 22                        ; attention.py:572:22
	v_lshlrev_b32_e32 v51, 1, v0
	v_lshlrev_b32_e32 v52, 5, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s15
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s15
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s12, v2
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[3:4], null, s12, v1, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 609 32                        ; attention.py:609:32
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
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s8, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s8, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s8, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s14, s2, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s9, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s9, v3, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, 1, v4
	s_load_b32 s9, s[0:1], 0x84
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s15, 0x7f
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v4, v4, v50
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s10, s4, s15
	s_abs_i32 s4, s4
	.loc	1 599 26                        ; attention.py:599:26
	buffer_load_b64 v[2:3], v2, s[20:23], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s6, s5
	s_add_i32 s18, s6, 1
	s_sub_i32 s4, s4, s11
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v54, 0, v4
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s18, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 621 48                        ; attention.py:621:48
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s9, s8
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s10
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s4, s4, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s10
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s4, s4, 0x800
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s6, s14, s2
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s4, s4, 15
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s18, s6, 4
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s5, s4, 31
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl4_add_u32 s2, s2, s18
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s5, s5, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_b32 s4, s4, -16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s19, s2, s4
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cmp_ge_i32 s18, s19
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v54, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v25, 0x5410 :: v_dual_lshlrev_b32 v2, 4, v0
	s_load_b32 s2, s[0:1], 0x64
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s8, v53
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[24:25], s[0:1], 0x28
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v3, 0x70, v2
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v41, 0xe0, v0
	v_lshrrev_b32_e32 v5, 5, v0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v56, s9, v4
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 1, v4
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v3, v53, 7, v3
	.loc	1 734 32                        ; attention.py:734:32
	s_lshl_b32 s8, s3, 11
	.loc	1 707 13                        ; attention.py:707:13
	v_sub_nc_u32_e32 v58, 0x400, v5
	v_lshl_or_b32 v67, s3, 10, v5
	v_bfe_i32 v5, v0, 2, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v8, 64, v3
	v_xor_b32_e32 v4, 16, v3
	v_xor_b32_e32 v6, 32, v3
	v_xor_b32_e32 v10, 0x60, v3
	v_xor_b32_e32 v7, 48, v3
	v_add_nc_u32_e32 v62, 0, v8
	v_and_b32_e32 v8, 16, v0
	.loc	1 742 27                        ; attention.py:742:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s33, s2, 0x3fb8aa3b
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v60, 0, v10
	v_add_nc_u32_e32 v65, 0, v4
	v_xor_b32_e32 v9, 0x50, v3
	v_cmp_eq_u32_e64 s2, 0, v8
	v_xor_b32_e32 v11, 0x70, v3
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_and_b32 v55, 1, v1
	.loc	1 707 13                        ; attention.py:707:13
	v_sub_nc_u32_e32 v57, 0x800, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v8, 0x1054, v25, s2
	v_mov_b32_e32 v25, 0x7632
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v63, 0, v7
	v_and_b32_e32 v7, 0x160, v52
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v1, s18, s8, v1
	v_lshl_or_b32 v4, v8, 8, v8
	v_lshrrev_b32_e32 v8, 3, v41
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v64, 0, v6
	v_cndmask_b32_e64 v6, 0x3276, v25, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v66, 0, v3
	v_and_b32_e32 v3, 0x540054, v4
	v_and_b32_e32 v2, 0x600, v2
	v_and_b32_e32 v5, 0x90, v5
	v_lshl_or_b32 v4, v6, 8, v6
	v_bfe_i32 v6, v0, 1, 1
	v_lshl_or_b32 v3, v3, 4, v3
	.loc	1 707 13                        ; attention.py:707:13
	v_mul_lo_u32 v1, s12, v1
	v_or3_b32 v69, v7, v2, v5
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v4, 0x760076, v4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v59, 0, v11
	v_and_b32_e32 v68, 0x5040504, v3
	v_and_b32_e32 v6, 0x90, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, v4, 4, v4
	.loc	1 707 13                        ; attention.py:707:13
	v_lshlrev_b32_e32 v2, 3, v53
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v61, 0, v9
	v_xor_b32_e32 v5, 16, v69
	v_lshlrev_b32_e32 v4, 6, v0
	v_and_b32_e32 v70, 0x7060706, v3
	v_xor_b32_e32 v3, v6, v8
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v71, v1, 1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, v41
	v_mov_b32_e32 v8, v41
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[13:16], v59
	ds_load_b128 v[9:12], v60
	ds_load_b128 v[21:24], v61
	ds_load_b128 v[17:20], v62
	v_add_nc_u32_e32 v73, 0, v5
	v_mov_b32_e32 v5, v41
	ds_load_b128 v[29:32], v63
	ds_load_b128 v[25:28], v64
	v_mov_b32_e32 v7, v41
	ds_load_b128 v[37:40], v65
	ds_load_b128 v[33:36], v66
	v_and_b32_e32 v4, 0x740, v4
	v_dual_mov_b32 v2, v41 :: v_dual_and_b32 v49, 62, v51
	v_mov_b16_e32 v92.h, 0
	s_and_b32 s5, s5, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s34, s3, 7
	s_and_b32 s29, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s35, s12, 5
	v_add_nc_u32_e32 v72, v4, v3
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s1, s13, v49
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s28, s6
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, 0x76543210
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_lt_i32_e64 s2, s18, v57
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v48, v41 :: v_dual_mov_b32 v91, v42
	v_dual_mov_b32 v74, v43 :: v_dual_mov_b32 v43, v41
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 s2, vcc_lo, s2
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v45, v41
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e64 v44, 0x80000000, v71, s2
	.loc	1 771 36                        ; attention.py:771:36
	s_ashr_i32 s2, s18, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v42, v41 :: v_dual_add_nc_u32 v85, s2, v67
	v_mov_b32_e32 v46, v41
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b64 v[83:84], v44, s[20:23], 0 offen
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v47, v41
	.loc	1 798 53                        ; attention.py:798:53
	s_ashr_i32 s4, s18, 4
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v82, v48
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s4, s4, s34
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v80, v46 :: v_dual_mov_b32 v79, v45
	v_dual_mov_b32 v81, v47 :: v_dual_mov_b32 v78, v44
	v_dual_mov_b32 v77, v43 :: v_dual_mov_b32 v76, v42
	v_mov_b32_e32 v75, v41
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[42:43], null, v85, s13, v[49:50]
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_lt_i32_e64 s2, s2, v58
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s4, s4, s13
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt lgkmcnt(0)
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v45, s4, v49, 1
	.loc	1 736 32                        ; attention.py:736:32
	s_barrier
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s4, s1, s2
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v44.h, v92.h
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v43, 0x80000000, v45, s1
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v71, s35, v71
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v54, v[83:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_u16 v45, v42, s[28:31], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b32 v46, v43, s[24:27], 0 offen
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[83:86], v66
	ds_load_b128 v[87:90], v65
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v42, s18, v55
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s18, s18, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s4, 0x800, v42
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s5, v42, v56
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s12, s0, s4
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s5, s5, s12
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[75:82], v[83:90], v[33:40], v[75:82]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[83:86], v64
	ds_load_b128 v[87:90], v63
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[75:82], v[83:90], v[25:32], v[75:82]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[83:86], v62
	ds_load_b128 v[87:90], v61
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[75:82], v[83:90], v[17:24], v[75:82]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[83:86], v60
	ds_load_b128 v[87:90], v59
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_wmma_f32_16x16x16_bf16 v[75:82], v[83:90], v[9:16], v[75:82]
	.loc	1 738 65                        ; attention.py:738:65
	v_add_nc_u32_e32 v84, 2, v42
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v85, 14, v42
	.loc	1 746 30                        ; attention.py:746:30
	v_add_nc_u32_e32 v86, 12, v42
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v83.h, v92.h
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v43, s33, v75
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s6, v84, v56
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v84, 10, v42
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s7, v85, v56
	v_add_nc_u32_e32 v85, 8, v42
	v_cmp_le_i32_e64 s8, v86, v56
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v86, 6, v42
	.loc	1 746 30                        ; attention.py:746:30
	v_add_nc_u32_e32 v42, 4, v42
	v_cmp_le_i32_e64 s4, v84, v56
	v_cmp_le_i32_e64 s9, v85, v56
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v47, s33, v76
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s10, v86, v56
	v_cmp_le_i32_e64 s11, v42, v56
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v48, s33, v77 :: v_dual_mul_f32 v75, s33, v78
	v_dual_mul_f32 v76, s33, v79 :: v_dual_mul_f32 v77, s33, v80
	v_dual_mul_f32 v78, s33, v81 :: v_dual_mul_f32 v79, s33, v82
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s6, s6, s12
	s_and_b32 s7, s7, s12
	s_and_b32 s8, s8, s12
	s_and_b32 s4, s4, s12
	s_and_b32 s9, s9, s12
	s_and_b32 s10, s10, s12
	s_and_b32 s11, s11, s12
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v43, 0xff800000, v43, s5
	v_cndmask_b32_e64 v47, 0xff800000, v47, s6
	v_cndmask_b32_e64 v78, 0xff800000, v78, s8
	v_cndmask_b32_e64 v79, 0xff800000, v79, s7
	v_cndmask_b32_e64 v76, 0xff800000, v76, s9
	v_cndmask_b32_e64 v77, 0xff800000, v77, s4
	v_cndmask_b32_e64 v48, 0xff800000, v48, s11
	v_cndmask_b32_e64 v75, 0xff800000, v75, s10
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v42, v78, v79 :: v_dual_add_nc_u32 v81, 0, v69
.Ltmp2:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v84, v43, v47, v48
	v_max3_f32 v85, v75, v76, v77
.Ltmp4:
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v80.h, v92.h
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v82.h, v92.h
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s18, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v42, v84, v85, v42
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v84, v42, s36, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v42, v91, v42, v84
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v43, v43, v42
	v_sub_f32_e32 v47, v47, v42
	v_sub_f32_e32 v48, v48, v42
	v_sub_f32_e32 v75, v75, v42
	v_sub_f32_e32 v76, v76, v42
	v_sub_f32_e32 v77, v77, v42
	v_sub_f32_e32 v78, v78, v42
	v_sub_f32_e32 v79, v79, v42
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v78, v78
	.loc	1 767 74 is_stmt 1              ; attention.py:767:74
	v_sub_f32_e32 v84, v91, v42
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v47, 0, v47, s6
	v_cndmask_b32_e64 v43, 0, v43, s5
	v_cndmask_b32_e64 v75, 0, v75, s10
	v_cndmask_b32_e64 v48, 0, v48, s11
	v_cndmask_b32_e64 v77, 0, v77, s4
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v76, 0, v76, s9
	v_cndmask_b32_e64 v79, 0, v79, s7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v78, 0, v78, s8
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v85, v43, v47
	v_add_f32_e32 v86, v48, v75
	v_add_f32_e32 v87, v76, v77
.Ltmp9:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s4, v43, v43
	v_cmp_o_f32_e64 s5, v48, v48
	v_cmp_o_f32_e64 s6, v76, v76
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v85, v85, v86 :: v_dual_add_f32 v86, v78, v79
.Ltmp11:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s7, v78, v78
	v_cmp_o_f32_e64 s9, v47, v47
	v_cmp_o_f32_e64 s10, v75, v75
	v_cmp_o_f32_e64 s11, v77, v77
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v86, v87, v86
.Ltmp13:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v87.h, v92.h
	v_mov_b16_e32 v87.l, v43.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v91, v85, v86
.Ltmp15:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v85.h, v92.h
	v_and_b32_e32 v86, 1, v87
	v_mov_b16_e32 v85.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v86, v43, v86, 0x7fff
	v_mov_b16_e32 v43.h, v92.h
	v_mov_b16_e32 v43.l, v76.h
	v_and_b32_e32 v85, 1, v85
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v48, v48, v85, 0x7fff
	v_mov_b16_e32 v85.h, v92.h
	v_mov_b16_e32 v85.l, v78.h
	v_cndmask_b16 v48.l, 0x7fff, v86.h, s4
	v_add3_u32 v76, v76, v43, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v94, 0, v84, s12
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v85, 1, v85
	v_cndmask_b16 v84.l, 0x7fff, v48.h, s5
	v_cmp_o_f32_e64 s12, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v94
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v93, v78, v85, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v76.h, s6
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v3, v3, v94
	v_mul_f32_e32 v4, v4, v94
	v_mul_f32_e32 v5, v5, v94
	v_mul_f32_e32 v6, v6, v94
	v_mul_f32_e32 v7, v7, v94
	v_mul_f32_e32 v8, v8, v94
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v43.l, 8, v45.l
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v78, 15, v45
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.h, v45.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v80.l, 12, v45.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v92.l, v43.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v43.l, 4, v45.l
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v45, -16, v78
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s8, 7, v43.h
	.loc	1 783 32 is_stmt 1              ; attention.py:783:32
	v_cndmask_b32_e64 v76, 0, v80, s2
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v43.h, v92.h
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v44.l, v43.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v45, v78, v45, s8
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v44, 0, v44, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v78, -16, v44
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s2, 7, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v44, v44, v78, s2
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v78, -16, v76
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s2, 7, v76
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v76, v76, v78, s2
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v78, 0xffff0000, v46
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v92.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v46, v45
	v_mul_f32_e32 v44, v46, v44
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v46, -16, v92
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v76, v78, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v82.l, v45.h
	v_mov_b16_e32 v83.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b32_e64 v46, v92, v46, s2
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v92.l, v76.h
	v_cmp_o_f32_e64 s2, v45, v45
	v_cmp_o_f32_e64 s5, v44, v44
	v_and_b32_e32 v80, 1, v83
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s6, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v80, 0x7fff
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v46, v78, v46
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v78, 1, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v43.l, v46.h
	v_add3_u32 v45, v45, v78, 0x7fff
	v_and_b32_e32 v78, 1, v92
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v92.l, v47.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s4, v46, v46
	v_and_b32_e32 v43, 1, v43
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s2
	v_add3_u32 v76, v76, v78, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v44.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v46, v43, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v46, 1, v92
	v_mov_b16_e32 v92.l, v75.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v46, v47, v46, 0x7fff
	v_and_b32_e32 v47, 1, v92
	v_mov_b16_e32 v92.l, v77.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v43.h, 0x7fff, v76.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v48.h, 0x7fff, v46.h, s9
	v_add3_u32 v44, v75, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v46, 1, v92
	v_mov_b16_e32 v92.l, v79.h
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v72, v45, v43 offset1:8
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v2, v2, v94
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v84.h, 0x7fff, v44.h, s10
	v_add3_u32 v43, v77, v46, 0x7fff
	v_and_b32_e32 v45, 1, v92
	v_permlanex16_b32 v44, v48, s36, 0xfedcba98 op_sel:[1,0]
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v85.h, 0x7fff, v43.h, s11
	v_add3_u32 v43, v79, v45, 0x7fff
	v_permlanex16_b32 v45, v84, s36, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v75, v44, v48, v68
	v_perm_b32 v76, v44, v48, v70
	v_permlanex16_b32 v44, v85, s36, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v77, v45, v84, v68
	v_perm_b32 v78, v45, v84, v70
	v_perm_b32 v79, v44, v85, v68
	v_perm_b32 v80, v44, v85, v70
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[83:86], v81
	ds_load_b128 v[87:90], v73
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v44.l, 0x7fff, v93.h, s7
	v_cndmask_b16 v44.h, 0x7fff, v43.h, s12
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v43, v91, s36, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v45, v44, s36, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v43, v91, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v81, v45, v44, v68
	v_perm_b32 v82, v45, v44, v70
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v43, v74, v94
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[83:90], v[75:82], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
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
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v53
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s15, s15, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s13, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s14, s15
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v42 :: v_dual_cndmask_b32 v12, 0, v4
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v11, 0, v43, vcc_lo
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp21:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp27:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp36:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp37:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp39:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v10, v3 :: v_dual_mov_b32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v3, v3, v10
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp46:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v12, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v13, v17
.Ltmp51:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v7, v5
.Ltmp55:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v9, v2
.Ltmp56:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v7
.Ltmp60:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v14, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v2, v2, v9
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v8 :: v_dual_mov_b32 v8, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v4, v3, v10 :: v_dual_mov_b32 v5, v2
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v3, v1
.Ltmp66:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v13, v13, v18
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v19
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v12, v12, v17
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v16, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v12, v12, v17
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v15, v12 :: v_dual_mov_b32 v20, v18
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp82:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp84:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp86:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v18, v20 :: v_dual_add_f32 v9, v17, v19
	v_dual_add_f32 v14, v11, v14 :: v_dual_lshlrev_b32 v17, 2, v0
	v_dual_add_f32 v8, v13, v16 :: v_dual_add_f32 v7, v12, v15
	v_dual_add_f32 v13, v4, v6 :: v_dual_and_b32 v4, 0xc0, v17
	v_dual_add_f32 v12, v2, v5 :: v_dual_add_f32 v11, v1, v3
.Ltmp88:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v51
	v_and_b32_e32 v2, 32, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v4
	v_lshl_add_u32 v4, v50, 1, 0
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v5, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 0xc0, v0
	ds_load_b32 v1, v1
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s13, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s17, s17, 0xffff
	v_cmp_eq_u32_e64 s0, 0, v0
	s_mov_b32 s19, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_endpgm
.Ltmp89:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
		.amdhsa_next_free_vgpr 95
		.amdhsa_next_free_sgpr 37
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_vgpr, 95
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4152
; TotalNumSgprs: 39
; NumVgprs: 95
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 95
; Occupancy: 16
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
	.short	829                             ; DW_AT_call_line
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
	.short	828                             ; DW_AT_call_line
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
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
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     95
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
