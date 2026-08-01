	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b32 s15, s[0:1], 0x60
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v55, 15, v0
	v_lshrrev_b32_e32 v56, 4, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v51, 0x70, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v2, 2, v55
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v33, 0xe0, v0
	s_load_b32 s26, s[0:1], 0x80
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v59, 3, v33
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s13, s15
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s7, s2, s15
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s13
	s_sub_i32 s5, 0, s13
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s24, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s14, s4, s5
	s_load_b32 s5, s[0:1], 0x58
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s6, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s4, s13
	s_add_i32 s7, s4, 1
	s_sub_i32 s6, s6, s8
	s_sub_i32 s8, s6, s13
	s_cmp_ge_u32 s6, s13
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s6, s13
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s4, s7, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s25, s4, s24
	s_sub_i32 s16, s25, s24
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[3:4], null, s5, v56, v[2:3]
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s17, s16, 4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s12, s5, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s17, v56
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s17, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s16, s16, s15
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s6, s4, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s6, v3, 1
	s_load_b64 s[6:7], s[0:1], 0x78
	v_xor_b32_e32 v4, v4, v51
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s12, s4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v58, 0, v4
	buffer_load_b64 v[2:3], v2, s[8:11], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s9, s15, 0x7f
	s_mov_b32 s8, 0
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s10, s9, s15
	s_abs_i32 s9, s9
	s_ashr_i32 s10, s10, 31
	s_mul_hi_u32 s11, s9, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s14, s11, s13
	s_add_i32 s18, s11, 1
	s_sub_i32 s9, s9, s14
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s14, s2, s16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s9, s13
	s_cmp_ge_u32 s9, s13
	s_cselect_b32 s11, s18, s11
	s_cselect_b32 s2, s2, s9
	s_add_i32 s9, s11, 1
	s_cmp_ge_u32 s2, s13
	s_cselect_b32 s2, s9, s11
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s11, s7, s26
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s10
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s11, s11, s17
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s10
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s11, s11, 16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s26, s6
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s10, s11, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s17
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s10, s10, 15
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s11, s14, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s13, s10, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s13, s13, 28
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s11, s11, 4
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s10, s10, s13
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s9, s9, 0x7ffffff0
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s11
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s10, s10, -16
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s18, s11, s9
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s19, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s18, s19
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v2, 3, v33
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow63
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b32 s13, s[0:1], 0x5c
	v_lshlrev_b32_e32 v52, 1, v0
	v_and_b32_e32 v57, 7, v0
	v_lshlrev_b32_e32 v54, 2, v0
	v_lshlrev_b32_e32 v53, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b128 s[20:23], s[0:1], 0x28
	v_dual_mov_b32 v49, 0x5410 :: v_dual_lshlrev_b32 v2, 4, v57
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v92, 0xff800000 :: v_dual_add_nc_u32 v1, s26, v1
	s_lshr_b32 s0, s0, 29
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v25, v55, 7, v2
	v_and_b32_e32 v48, 16, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v61, s7, v1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s7, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 3
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v26, 16, v25
	v_bfe_i32 v41, v0, 3, 1
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v34, 62, v52
	v_and_b32_e32 v36, 1, v0
	v_lshrrev_b32_e32 v71, 1, v0
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s33, s28, 0x3fb8aa3b
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s28, s29, s0
	v_cmp_eq_u32_e64 s0, 0, v48
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v68, 0, v26
	v_and_b32_e32 v26, 14, v0
	v_and_b32_e32 v41, 0x84, v41
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v38, 5, v36
	v_cndmask_b32_e64 v48, 0x1054, v49, s0
	v_mov_b32_e32 v49, 0x7632
	v_and_b32_e32 v39, 64, v54
	v_mul_u32_u24_e32 v40, 0x42, v26
	v_and_or_b32 v41, v71, 3, v41
	v_lshl_or_b32 v48, v48, 8, v48
	v_cndmask_b32_e64 v49, 0x3276, v49, s0
	v_and_b32_e32 v37, 60, v52
	v_add3_u32 v70, v40, v38, v39
	v_or3_b32 v71, v41, v38, v39
	v_and_b32_e32 v39, 0x540054, v48
	v_lshl_or_b32 v41, v49, 8, v49
	v_lshrrev_b32_e32 v72, 5, v0
	v_lshlrev_b32_e32 v49, 6, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v35, 5, v33
	v_lshl_or_b32 v39, v39, 4, v39
	v_and_b32_e32 v41, 0x760076, v41
	v_lshl_or_b32 v33, v33, 2, v37
	v_and_or_b32 v37, v72, 3, v37
	v_and_b32_e32 v38, 0x60, v0
	v_and_b32_e32 v72, 0x5040504, v39
	v_lshl_or_b32 v39, v41, 4, v41
	v_bfe_i32 v41, v0, 2, 1
	v_and_b32_e32 v49, 0x740, v49
	v_and_b32_e32 v74, 0x160, v53
	v_lshlrev_b32_e32 v38, 4, v38
	v_bfe_i32 v50, v0, 7, 1
	v_and_b32_e32 v41, 0x90, v41
	v_add_nc_u32_e32 v87, 0, v49
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_or_b32 v49, s25, 4, v56
	s_lshl_b32 s0, s24, 4
	v_and_b32_e32 v50, 0x84, v50
	v_or3_b32 v74, v74, v38, v41
	v_and_b32_e32 v38, 31, v0
	v_subrev_nc_u32_e32 v41, s0, v49
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s2, s3, 7
	.loc	1 903 13                        ; attention.py:903:13
	s_lshr_b32 s24, s18, 4
	v_xor_b32_e32 v37, v37, v50
	v_lshlrev_b32_e32 v38, 2, v38
	v_mul_lo_u32 v41, s31, v41
	v_bfe_i32 v50, v0, 1, 1
	s_add_i32 s24, s24, s2
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s1, s3, 11
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s7, s3, s7
	.loc	1 903 13                        ; attention.py:903:13
	s_mul_i32 s0, s13, s24
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v60, s6, v1
	.loc	1 976 30                        ; attention.py:976:30
	s_lshl_b32 s6, s3, 10
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v49, s18, s1, v56
	s_lshr_b32 s1, s18, 1
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s7, s30, s7
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v75, s0, 1, v38
	s_add_i32 s0, s18, s28
	v_and_b32_e32 v50, 0x90, v50
	v_add3_u32 v35, s1, s6, v35
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v6, 0x70, v25
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v41, s7, s0, v41
	v_and_b32_e32 v73, 0x7060706, v39
	v_xor_b32_e32 v39, v50, v59
	v_mul_lo_u32 v38, s5, v49
	v_mad_u64_u32 v[49:50], null, s13, v35, v[34:35]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v62, 0, v6
	.loc	1 903 13                        ; attention.py:903:13
	v_add_lshl_u32 v50, v41, v55, 2
	v_mov_b32_e32 v41, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v5, 0x60, v25
	v_xor_b32_e32 v4, 0x50, v25
	v_xor_b32_e32 v3, 64, v25
	v_xor_b32_e32 v2, 48, v25
	v_xor_b32_e32 v1, 32, v25
	v_xor_b32_e32 v33, v33, v59
	v_xor_b32_e32 v40, 4, v70
	v_dual_mov_b32 v35, v41 :: v_dual_lshlrev_b32 v76, 3, v55
	v_lshl_add_u32 v36, v36, 6, 0
	v_add_nc_u32_e32 v63, 0, v5
	v_dual_mov_b32 v91, 0xff800000 :: v_dual_add_nc_u32 v64, 0, v4
	v_add_nc_u32_e32 v65, 0, v3
	v_add_nc_u32_e32 v66, 0, v2
	v_add_nc_u32_e32 v67, 0, v1
	v_dual_mov_b32 v90, 0xff800000 :: v_dual_add_nc_u32 v69, 0, v25
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v76, v38, 1, v76
	v_add_nc_u32_e32 v77, v36, v33
	v_add_nc_u32_e32 v78, 0, v40
	v_add_nc_u32_e32 v85, v36, v37
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v40, v41
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[5:8], v62
	ds_load_b128 v[1:4], v63
	ds_load_b128 v[13:16], v64
	ds_load_b128 v[9:12], v65
	ds_load_b128 v[21:24], v66
	ds_load_b128 v[17:20], v67
	v_mov_b32_e32 v37, v41
	ds_load_b128 v[29:32], v68
	ds_load_b128 v[25:28], v69
	v_xor_b32_e32 v42, 8, v70
	v_xor_b32_e32 v43, 12, v70
	v_xor_b32_e32 v44, 16, v70
	v_xor_b32_e32 v45, 20, v70
	v_xor_b32_e32 v46, 24, v70
	v_xor_b32_e32 v47, 28, v70
	v_xor_b32_e32 v48, 4, v71
	v_xor_b32_e32 v88, 16, v74
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e32 vcc_lo, s13, v34
	v_add_nc_u32_e32 v79, 0, v42
	v_add_nc_u32_e32 v80, 0, v43
	v_add_nc_u32_e32 v81, 0, v44
	v_add_nc_u32_e32 v82, 0, v45
	v_add_nc_u32_e32 v83, 0, v46
	v_add_nc_u32_e32 v84, 0, v47
	v_add_nc_u32_e32 v86, 0, v48
	v_add_nc_u32_e32 v87, v87, v39
	v_add_nc_u32_e32 v88, 0, v88
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v39, v41
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s34, s13, 1
	s_lshl_b32 s35, s13, 3
	s_lshl_b32 s40, s5, 5
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s22
	s_mov_b32 s29, s23
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s41, 0x76543210
	s_mov_b32 s36, s10
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v42, 0x80000000, v76, s12
	.loc	1 938 32                        ; attention.py:938:32
	v_add_nc_u32_e32 v44, s18, v55
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v48, v41
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v118, 0, v70
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b64 v[42:43], v42, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v46, v41
	v_dual_mov_b32 v47, v41 :: v_dual_cndmask_b32 v120, 0x80000000, v49
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v91
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v92, v92, v92
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v76, s40, v76
	s_add_i32 s18, s18, 16
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v119, 0, v71
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e32 v121, 0x80000000, v75, vcc_lo
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v75, s34, v75
	v_add_nc_u32_e32 v49, s35, v49
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[42:43]
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v43, v41
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s0, v44, v60
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s1, v44, v61
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[101:104], v69
	ds_load_b128 v[105:108], v68
	ds_load_b128 v[109:112], v67
	ds_load_b128 v[113:116], v66
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v42, v41
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s0, s4, s0
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v44, 0x80000000, v50, s0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v50, 64, v50
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_b32 v117, v44, s[28:31], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v44, v41
	v_dual_mov_b32 v100, v48 :: v_dual_mov_b32 v99, v47
	v_dual_mov_b32 v98, v46 :: v_dual_mov_b32 v97, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v96, v44 :: v_dual_mov_b32 v95, v43
	v_dual_mov_b32 v94, v42 :: v_dual_mov_b32 v93, v41
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[93:100], v[101:108], v[25:32], v[93:100]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[101:104], v65
	ds_load_b128 v[105:108], v64
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[93:100], v[109:116], v[17:24], v[93:100]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[109:112], v63
	ds_load_b128 v[113:116], v62
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[93:100], v[101:108], v[9:16], v[93:100]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[93:100], v[109:116], v[1:8], v[93:100]
	v_mov_b32_e32 v109, v89
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v42, 0xff800000, v117, s0
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v42
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b32 v77, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v46, v118
	ds_load_b32 v47, v78
	ds_load_b32 v48, v79
	ds_load_b32 v101, v80
	ds_load_b32 v102, v81
	ds_load_b32 v103, v82
	ds_load_b32 v104, v83
	ds_load_b32 v105, v84
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s0, s0, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v42, 0, 1, s0
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s18, s19
	.loc	1 966 25                        ; attention.py:966:25
	ds_store_b8 v85, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v42, v86
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v42, v119 offset:8
	ds_load_u8_d16 v43, v86 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v43, v119 offset:16
	ds_load_u8_d16 v44, v86 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v44, v86 offset:24
	ds_load_u8_d16 v45, v119 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v45, v119
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v46, 0x3fb8aa3b, v46 :: v_dual_mul_f32 v47, 0x3fb8aa3b, v47
	v_dual_mul_f32 v48, 0x3fb8aa3b, v48 :: v_dual_mul_f32 v101, 0x3fb8aa3b, v101
	v_dual_mul_f32 v102, 0x3fb8aa3b, v102 :: v_dual_mul_f32 v103, 0x3fb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v104, 0x3fb8aa3b, v104 :: v_dual_fmac_f32 v47, s33, v94
	v_mul_f32_e32 v105, 0x3fb8aa3b, v105
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v46, s33, v93 :: v_dual_fmac_f32 v103, s33, v98
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_and_b16 v42.l, 1, v42.l
	v_and_b16 v42.h, 1, v42.h
	v_and_b16 v43.l, 1, v43.l
	v_and_b16 v43.h, 1, v43.h
	v_and_b16 v44.l, 1, v44.l
	v_and_b16 v44.h, 1, v44.h
	v_and_b16 v45.l, 1, v45.l
	v_and_b16 v45.h, 1, v45.h
	v_cmp_eq_u16_e64 s5, 1, v42.l
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v48, s33, v95 :: v_dual_fmac_f32 v105, s33, v100
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s6, 1, v42.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s1, 1, v45.h
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v101, s33, v96
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s7, 1, v43.l
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v102, s33, v97 :: v_dual_add_nc_u32 v97, 0, v74
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s8, 1, v43.h
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v104, s33, v99
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v46, 0xff800000, v46, s1
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s9, 1, v44.l
	v_cmp_eq_u16_e64 s10, 1, v45.l
	v_cmp_eq_u16_e64 s11, 1, v44.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v47, 0xff800000, v47, s5
	v_cndmask_b32_e64 v48, 0xff800000, v48, s6
	v_cndmask_b32_e64 v93, 0xff800000, v101, s7
	v_cndmask_b32_e64 v43, 0xff800000, v102, s8
	s_barrier
	v_cndmask_b32_e64 v94, 0xff800000, v103, s9
	v_cndmask_b32_e64 v45, 0xff800000, v104, s10
	v_cndmask_b32_e64 v44, 0xff800000, v105, s11
	ds_store_b32 v118, v46
	ds_store_b32 v78, v47
	ds_store_b32 v79, v48
	ds_store_b32 v80, v93
	ds_store_b32 v81, v43
	ds_store_b32 v82, v94
	ds_store_b32 v83, v45
	ds_store_b32 v84, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_u16 v95, v120, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b32 v96, v121, s[20:23], 0 offen
	v_mov_b32_e32 v98, v90
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v103, v46, v47, v48
	v_max3_f32 v104, v93, v43, v94
	v_max_f32_e32 v105, v45, v44
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v106, v77
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v102, v98, v98
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v42.h, 0
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v103, v103, v104, v105
.Ltmp6:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v89.h, v42.h
	v_mov_b16_e32 v90.h, v42.h
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v104, v103, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.h, v42.h
	v_mov_b16_e32 v101.h, v42.h
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v95.h, v42.h
	v_mov_b16_e32 v99.h, v42.h
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v110, v91, v103, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v44, v44, v110
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v103, v91, v110
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v47, v47, v110 :: v_dual_mov_b32 v104, v106
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v103, v103
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v104, v104 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v46, v46, v110 :: v_dual_max_f32 v91, v104, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v46, v46
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v107, 0, v44, s11
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v44, 0, v103, s2
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v94, v94, v110
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v105, v106, v106
.Ltmp12:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v43, v43, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v93, v93, v110 :: v_dual_mul_f32 v34, v34, v44
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v33, v33, v44
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v94, v94
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v40, v40, v44
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v48, v48, v110 :: v_dual_max_f32 v91, v105, v91
	v_dual_sub_f32 v45, v45, v110 :: v_dual_mul_f32 v36, v36, v44
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v48, v48
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v46, 0, v46, s1
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v93, v93
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v104, 0, v94, s9
.Ltmp13:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v94, v91
.Ltmp14:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v45, v45
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v89.l, v46.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v35, v35, v44
	v_mul_f32_e32 v38, v38, v44
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v43, 0, v43, s8
	v_cndmask_b32_e64 v48, 0, v48, s6
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v94, v94 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v39, v39, v44
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v47, 0, v47, s5
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.l, v43.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v45, 0, v45, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v90.l, v48.h
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v94, v94, v94
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s1, v46, v46
	v_cmp_o_f32_e64 s5, v48, v48
	v_mov_b16_e32 v101.l, v45.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v37, v37, v44 :: v_dual_and_b32 v44, 1, v89
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v89, 1, v90
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v93, 0, v93, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v43, v43
	v_cmp_o_f32_e64 s9, v45, v45
	v_add3_u32 v44, v46, v44, 0x7fff
	v_add3_u32 v46, v48, v89, 0x7fff
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v48, v91, v94
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v90, 1, v100
	v_and_b32_e32 v100, 1, v101
	v_cndmask_b16 v46.l, 0x7fff, v44.h, s1
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v98
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v91.l, 0x7fff, v46.h, s5
	v_add3_u32 v43, v43, v90, 0x7fff
	v_add3_u32 v45, v45, v100, 0x7fff
	v_cmp_o_f32_e64 s2, v47, v47
	v_cmp_o_f32_e64 s6, v93, v93
	v_cmp_o_f32_e64 s8, v104, v104
	v_cndmask_b16 v108.l, 0x7fff, v43.h, s7
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v43, v48
.Ltmp22:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v111.l, 0x7fff, v45.h, s9
	v_cmp_o_f32_e64 s10, v107, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v48, v43
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 978 32                        ; attention.py:978:32
	v_ashrrev_i16 v42.l, 8, v95.l
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v94, 16, v96
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v44, v44, v44
.Ltmp28:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v96, 0xffff0000, v96
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v45, v95, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v44
.Ltmp30:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v92, v92, v43
	v_max_f32_e32 v90, v102, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v43, v106, v92
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v44, v98, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v43, v43
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v43, 0, v43, s0
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v48, 0, v44, s1
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s0, 0, v42.l
	v_mov_b16_e32 v42.l, v45.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v44, v43
.Ltmp32:
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v42.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v44, v44 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v43, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v44, v43
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v43, v43, v44
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v43, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v44, v43
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v89, v43, v44
.Ltmp41:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v44.l, 4, v95.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v43.h, v95.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b16 v44.h, 8, v95.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v43.l, 12, v95.l
	v_and_b16 v44.l, v44.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v43.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v44.h, v44.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v45.l, v43.l, -16
	v_or_b16 v42.l, v44.l, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v45.h, 0, -16, s1
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s7, 7, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v43.l, v43.l, v45.l, s0
	v_cndmask_b16 v44.l, v44.l, v42.l, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v45.l, v43.h, v45.h
	v_cndmask_b16 v42.l, 0, -16, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v43, v43, 0, 16
	v_bfe_i32 v98, v44, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v42.l, v44.h, v42.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v44, v45, 0, 16
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v98
	v_bfe_i32 v98, v42, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_mul_f32_e32 v43, v96, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v94, v45
	v_cvt_f32_i32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v94, v44
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s0, v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v45.h
	v_cmp_o_f32_e64 s5, v45, v45
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v94, v96, v98
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v95.l, v44.h
	v_cmp_o_f32_e64 s1, v44, v44
	v_and_b32_e32 v96, 1, v42
	v_mov_b16_e32 v42.l, v43.h
	v_mov_b16_e32 v99.l, v94.h
	v_and_b32_e32 v95, 1, v95
	v_cmp_o_f32_e64 s7, v94, v94
	v_add3_u32 v45, v45, v96, 0x7fff
	v_and_b32_e32 v98, 1, v42
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v42.l, v47.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v44, v44, v95, 0x7fff
	v_and_b32_e32 v99, 1, v99
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s5
	v_add3_u32 v43, v43, v98, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v95, 1, v42
	v_mov_b16_e32 v42.l, v93.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s1
	v_add3_u32 v94, v94, v99, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v44, v47, v95, 0x7fff
	v_and_b32_e32 v47, 1, v42
	v_mov_b16_e32 v42.l, v104.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v43.l, 0x7fff, v94.h, s7
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v89, v109, v48
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v46.h, 0x7fff, v44.h, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v44, 1, v42
	v_mov_b16_e32 v42.l, v107.h
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v87, v45, v43 offset1:8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v43, v93, v47, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v42, 1, v42
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[93:96], v97
	ds_load_b128 v[97:100], v88
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v44, v104, v44, 0x7fff
	v_cndmask_b16 v91.h, 0x7fff, v43.h, s6
	v_permlanex16_b32 v45, v46, s41, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v42, v107, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v108.h, 0x7fff, v44.h, s8
	v_permlanex16_b32 v43, v91, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v101, v45, v46, v72
	v_cndmask_b16 v111.h, 0x7fff, v42.h, s10
	v_perm_b32 v102, v45, v46, v73
	v_permlanex16_b32 v42, v108, s41, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v103, v43, v91, v72
	v_perm_b32 v104, v43, v91, v73
	v_permlanex16_b32 v44, v111, s41, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v91, v110
	v_perm_b32 v105, v42, v108, v72
	v_perm_b32 v106, v42, v108, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v107, v44, v111, v72
	v_perm_b32 v108, v44, v111, v73
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[93:100], v[101:108], v[33:40]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v2, v59
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v90, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v89, v40
.LBB0_8:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	s_mov_b32 s1, 0x76543210
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp43:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s15, s15, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v90 :: v_dual_cndmask_b32 v4, 0, v89
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s13, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v3, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_add_nc_u32 v2, 0, v2
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v6, v4, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp47:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_cndmask_b32 v14, 0, v39
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp49:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s14, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v4, v4, v6
.Ltmp51:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v6, 0, v34 :: v_dual_max_f32 v1, v1, v3
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v3, v57, 2, 0
.Ltmp53:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v5, 0, v33, vcc_lo
	v_dual_cndmask_b32 v12, 0, v37 :: v_dual_mov_b32 v19, v14
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v3
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v4
.Ltmp56:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v4, v6
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v3
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v5
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v35, vcc_lo
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v6, v4
.Ltmp62:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_mov_b32 v8, v3
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_f32_e32 v5, v5, v7
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v8, v4
.Ltmp69:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v7, v7, v7 :: v_dual_add_f32 v4, v4, v8
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v17, v12
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v16, v1, v7 :: v_dual_mov_b32 v9, v2
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
.Ltmp80:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v5, v6
	v_dual_add_f32 v15, v15, v20 :: v_dual_add_f32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v5, v2, v9 :: v_dual_mov_b32 v2, v16
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp85:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp86:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v5
.Ltmp87:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v2, v2
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v4, v7
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v9, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v7, v5, v8 :: v_dual_max_f32 v8, v16, v10
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v11
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v8
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v6
	v_add_f32_e32 v5, v3, v9
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp100:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v5 :: v_dual_add_f32 v11, v11, v16
.Ltmp102:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	v_add_f32_e32 v16, v15, v20
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp116:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp118:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp120:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_dual_add_f32 v13, v5, v6 :: v_dual_add_f32 v12, v2, v4
.Ltmp122:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xc0, v54
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v11, v14 :: v_dual_add_f32 v11, v1, v3
.Ltmp124:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v52
	v_and_b32_e32 v2, 32, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v5
	v_lshl_add_u32 v4, v51, 1, 0
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp126:
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s13, v5
	.loc	1 1038 13                       ; attention.py:1038:13
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
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp127:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
		.amdhsa_next_free_vgpr 122
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_vgpr, 122
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5256
; TotalNumSgprs: 44
; NumVgprs: 122
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 122
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
	.short	1027                            ; DW_AT_call_line
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.short	1031                            ; DW_AT_call_line
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
	.short	1032                            ; DW_AT_call_line
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     122
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
