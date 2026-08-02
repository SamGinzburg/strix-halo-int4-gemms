	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s33, s[0:1], 0x64
	s_load_b32 s29, s[0:1], 0x84
	s_load_b32 s34, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v41, 3, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v37, 2, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s12, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s5, 0, s12
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s4
	s_mul_hi_u32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s13, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s33
	s_mul_hi_u32 s4, s6, s13
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s7, s4, s12
	s_sub_i32 s6, s6, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s6, s12
	s_cmp_ge_u32 s6, s12
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s6, s12
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s4, s7, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[25:26], null, s34, v41, v[1:2]
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s5
	s_load_b64 s[6:7], s[0:1], 0x7c
	s_sub_i32 s14, s4, s5
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s5, s34, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s28, s14, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s14, s14, s33
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s28, v41
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s20, s28, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s19, s2, s14
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, s20, s34, v[25:26]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v3
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	buffer_load_b32 v4, v1, s[8:11], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s9, s33, 0x7f
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v1, 0x60, v0
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s10, s9, s33
	s_abs_i32 s9, s9
	s_ashr_i32 s10, s10, 31
	s_mul_hi_u32 s11, s9, s13
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v5, 2, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s13, s11, s12
	s_add_i32 s15, s11, 1
	s_sub_i32 s9, s9, s13
	v_lshrrev_b32_e32 v44, 3, v1
	s_sub_i32 s2, s9, s12
	s_cmp_ge_u32 s9, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, v37, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s11, s15, s11
	s_cselect_b32 s2, s2, s9
	s_add_i32 s9, s11, 1
	s_cmp_ge_u32 s2, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v43, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s9, s11
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s11, s7, s29
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s10
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s11, s11, s28
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s10
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s11, s11, 16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s29, s6
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s10, s11, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s28
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s10, s10, 15
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s11, s19, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s12, s10, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s12, s12, 28
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s11, s11, 4
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s10, s10, s12
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s9, s9, 0x7ffffff0
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s11
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s10, s10, -16
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s35, s11, s9
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s48, s2, s10
	s_mov_b32 s8, 0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s35, s48
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v9, 3, v1
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow51
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b32 s18, s[0:1], 0x60
	v_and_b32_e32 v40, 31, v0
	v_and_b32_e32 v42, 15, v0
	v_and_b32_e32 v38, 0x70, v0
	v_lshlrev_b32_e32 v39, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s28, v42
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v5, s20, v42, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x28
	s_load_b128 s[44:47], s[0:1], 0x68
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v4
	v_dual_mov_b32 v13, 0x5410 :: v_dual_lshlrev_b32 v26, 1, v2
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v2, s29, v3
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v4, 0x80000000, v5 :: v_dual_lshlrev_b32 v27, 2, v42
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_and_b32 v5, 16, v0
	v_dual_mov_b32 v18, 0x7632 :: v_dual_and_b32 v3, 12, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v10, 28, v0
	s_lshr_b32 s0, s0, 29
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v6, v0, 4, 1
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v17, v4, s[20:23], 0 offen
	v_lshrrev_b32_e32 v12, 2, v0
	v_bfe_i32 v16, v0, 2, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	v_cmp_eq_u32_e64 s0, 0, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v22, 1, v3
	v_lshl_or_b32 v24, v40, 5, v10
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v7, 4, v0
	v_lshrrev_b32_e32 v11, 5, v1
	v_dual_mov_b32 v79, 0xff800000 :: v_dual_lshlrev_b32 v14, 7, v0
	v_bfe_i32 v15, v0, 0, 1
	v_and_b32_e32 v20, 0x160, v39
	v_dual_mov_b32 v10, v9 :: v_dual_lshlrev_b32 v21, 4, v1
	v_mov_b32_e32 v1, 0
	v_or_b32_e32 v29, v12, v39
	v_and_b32_e32 v30, 0x84, v6
	v_cndmask_b32_e64 v31, 0x1054, v13, s0
	v_dual_mov_b32 v13, v9 :: v_dual_and_b32 v34, 0x90, v16
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v22, v42, 5, v22
	.loc	1 906 32                        ; attention.py:906:32
	s_lshl_b32 s13, s3, 11
	v_xor_b32_e32 v63, 28, v24
	v_xor_b32_e32 v8, v37, v44
	v_cndmask_b32_e64 v18, 0x3276, v18, s0
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s0, s44, 0x3fb8aa3b
	v_lshrrev_b32_e32 v19, 2, v38
	v_and_or_b32 v47, v7, 1, s13
	v_lshl_or_b32 v28, v40, 2, v11
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v32, 0x700, v14
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v33, 0x90, v15
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v7, v1
	v_and_or_b32 v29, 0x63, v29, v30
	v_lshl_or_b32 v30, v31, 8, v31
	v_or3_b32 v52, v20, v21, v34
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 8, v22
	v_xor_b32_e32 v21, 16, v22
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v4, 4, v38
	v_xor_b32_e32 v23, 0x210, v8
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v31, 0, v32
	v_dual_mov_b32 v81, v1 :: v_dual_add_nc_u32 v54, 0, v24
	v_xor_b32_e32 v35, 4, v24
	v_xor_b32_e32 v36, 8, v24
	v_xor_b32_e32 v59, 12, v24
	v_xor_b32_e32 v60, 16, v24
	v_xor_b32_e32 v61, 20, v24
	v_xor_b32_e32 v62, 24, v24
	v_xor_b32_e32 v19, v33, v19
	v_and_b32_e32 v24, 0x540054, v30
	v_xor_b32_e32 v30, 16, v52
	v_dual_mov_b32 v80, 0xff800000 :: v_dual_add_nc_u32 v67, 0, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v68, 0, v21
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v45, s6, v2
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v46, s7, v2
	v_lshl_or_b32 v48, s3, 10, v4
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v53, 0, v23
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v55, 0, v28
	v_xor_b32_e32 v64, 0x84, v28
	v_xor_b32_e32 v23, 4, v29
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v57, 0, v35
	v_add_nc_u32_e32 v58, 0, v36
	v_add_nc_u32_e32 v66, v31, v19
	v_add_nc_u32_e32 v71, 0, v30
	v_lshl_or_b32 v18, v18, 8, v18
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	v_lshl_or_b32 v19, v24, 4, v24
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	v_and_b32_e32 v18, 0x760076, v18
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s2, s46, s2
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s1, s45, s1
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v49, 0, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v18, v18, 4, v18
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v59, 0, v59
	v_or_b32_e32 v50, 12, v47
	v_or_b32_e32 v51, 14, v47
	v_add_nc_u32_e32 v60, 0, v60
	v_add_nc_u32_e32 v62, 0, v62
	v_add_nc_u32_e32 v64, 0, v64
	v_add_nc_u32_e32 v70, 0, v23
	v_and_b32_e32 v73, 0x5040504, v19
	v_and_b32_e32 v75, 0x7060706, v18
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s6, s28, s47
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s27, s27, 0xffff
	s_mov_b32 s28, s14
	s_add_i32 s14, s2, s1
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s49, s3, 7
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s42, s22
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s36, s26
	s_mov_b32 s40, s10
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s29, s15
	s_mov_b32 s37, s27
	s_add_i32 s14, s14, s6
	s_mov_b32 s43, s23
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e32 vcc_lo, s18, v27
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 928 41                        ; attention.py:928:41
	v_dual_mul_f32 v72, s0, v17 :: v_dual_add_nc_u32 v63, 0, v63
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v56, 0, v22
	v_xor_b32_e32 v22, 24, v22
	v_add_nc_u32_e32 v65, 0, v29
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[28:29], null, s47, v41, v[26:27]
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v77, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v69, 0, v22
	ds_load_b64 v[29:30], v56
	ds_load_b64 v[31:32], v67
	ds_load_b64 v[33:34], v68
	ds_load_b64 v[35:36], v69
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v76, v72 :: v_dual_add_nc_u32 v61, 0, v61
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v74, 1, v28
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v78, v72
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s0, s35, s13
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v92, 1, v26
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[17:18], null, s0, s34, v[25:26]
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v91, s35, v26
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s1, s14, s35
	v_or_b32_e32 v94, 2, v47
	v_or_b32_e32 v95, 4, v47
	v_or_b32_e32 v96, 6, v47
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s0, v91, v45
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v93, s35, v47, 1
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v17, v17, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[17:18], v56
	ds_load_b64 v[19:20], v67
	ds_load_b64 v[21:22], v68
	ds_load_b64 v[23:24], v69
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[17:18], v[29:30], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[19:20], v[31:32], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[21:22], v[33:34], v[83:90] neg_lo:[1,1,0]
	v_or_b32_e32 v22, 8, v47
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[23:24], v[35:36], v[83:90] neg_lo:[1,1,0]
	v_or_b32_e32 v23, 10, v47
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v24, v50, s35, 1
	v_add_lshl_u32 v22, v22, s35, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v21, v86
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v86, s35, v92
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v98, v84
	v_cvt_f32_i32_e32 v99, v85
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v84, s1, v28, 2
	v_add_lshl_u32 v85, s1, v74, 2
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s1, v91, v46
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v86, v45
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v86, v46
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v17, v87
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v87, v94, s35, 1
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s0, s0, s1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v97, v83
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s4, s0
	s_and_b32 s0, s2, s6
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v84, 0x80000000, v84, s1
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s0, s4, s0
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v18, v88
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v83, v51, s35, 1
	v_add_lshl_u32 v88, v95, s35, 1
	v_add_lshl_u32 v23, v23, s35, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v19, v89
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v89, v96, s35, 1
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x1
	buffer_load_b32 v84, v84, s[36:39], 0 offen
	buffer_load_b32 v86, v85, s[36:39], 0 offen
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x7
	buffer_load_u16 v91, v93, s[28:31], 0 offen
	buffer_load_u16 v87, v87, s[28:31], 0 offen
	buffer_load_u16 v95, v88, s[28:31], 0 offen
	buffer_load_u16 v85, v89, s[28:31], 0 offen
	buffer_load_u16 v22, v22, s[28:31], 0 offen
	buffer_load_u16 v23, v23, s[28:31], 0 offen
	buffer_load_u16 v24, v24, s[28:31], 0 offen
	buffer_load_u16 v83, v83, s[28:31], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v20, v90
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v96, v72, v97
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s6, s35, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s2, s35, 4
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s35, s35, 16
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s7, s2, s49
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v21, v78, v21
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s15, s7, s18
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v93, 0xff800000, v84, s1
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v90, 0xff800000, v86, s0
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v86, 16, v91
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b32 v49, v93
	ds_store_b32 v53, v90
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v84, v54
	ds_load_b32 v97, v57
	ds_load_b32 v100, v58
	ds_load_b32 v94, v59
	ds_load_b32 v88, v60
	ds_load_b32 v89, v61
	ds_load_b32 v91, v62
	ds_load_b32 v92, v63
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v87, 16, v87
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v93
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 932 25 is_stmt 1              ; attention.py:932:25
	v_mul_f32_e32 v93, v76, v18
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s1, s1, s2
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v84, 0x3fb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v84, v96, v86
	.loc	1 932 25 is_stmt 1              ; attention.py:932:25
	v_mul_f32_e32 v96, v76, v98
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v86, 0x3fb8aa3b, v97 :: v_dual_mov_b32 v97, v80
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v80, s6, v48
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v90
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v90, 0x3fb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v86, v96, v87
	.loc	1 932 25 is_stmt 1              ; attention.py:932:25
	v_dual_mul_f32 v96, v77, v99 :: v_dual_mul_f32 v87, 0x3fb8aa3b, v100
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s0, s0, s6
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v94, v77, v19
	.loc	1 965 25                        ; attention.py:965:25
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v90, v21, v85 :: v_dual_lshlrev_b32 v19, 16, v23
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v85, 0, 1, s0
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v87, v96, v95
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v96, v79, v79
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v21, 0, 1, s1
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v18, 16, v22
	.loc	1 966 25                        ; attention.py:966:25
	v_mov_b16_e32 v79.l, v85.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v85, v72, v17
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v23, 0x3fb8aa3b, v88
	.loc	1 966 25                        ; attention.py:966:25
	ds_store_b8 v55, v21
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v98, v78, v20
	.loc	1 966 25                        ; attention.py:966:25
	ds_store_b8 v64, v79
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v23, v85, v18
	.loc	1 966 25                        ; attention.py:966:25
	ds_load_u8_d16_hi v17, v65 offset:8
	ds_load_u8_d16 v18, v70
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v95.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v83
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v83, 0x3fb8aa3b, v91
	v_mul_f32_e32 v85, 0x3fb8aa3b, v92
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v21.h, v95.l
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v17, v65
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v79.h, v95.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v85, v98, v22
	v_fmac_f32_e32 v83, v94, v20
	.loc	1 966 25                        ; attention.py:966:25
	ds_load_u8_d16_hi v20, v65 offset:24
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s35, s48
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v17.h, 1, v17.h
	v_and_b16 v18.l, 1, v18.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s6, 1, v17.h
	v_cmp_eq_u16_e64 s7, 1, v18.l
	v_and_b16 v17.l, 1, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s6
	v_cndmask_b32_e64 v86, 0xff800000, v86, s7
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v89
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s8, 1, v17.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v24, v93, v19
	.loc	1 966 25                        ; attention.py:966:25
	ds_load_u8_d16_hi v18, v70 offset:8
	ds_load_u8_d16 v19, v70 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v19, v70 offset:16
	ds_load_u8_d16 v20, v65 offset:16
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u16_e64 s12, 1, v20.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v88, 0xff800000, v83, s12
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v17, v84, v86, v87
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v54, v84
	ds_store_b32 v57, v86
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v19.l, 1, v19.l
	v_and_b16 v19.h, 1, v19.h
	v_and_b16 v20.l, 1, v20.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s2, 1, v18.h
	v_cmp_eq_u16_e64 s9, 1, v19.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s10, 1, v19.h
	v_cmp_eq_u16_e64 s11, 1, v20.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v22, 0xff800000, v90, s2
	v_cndmask_b32_e64 v85, 0xff800000, v85, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v24, 0xff800000, v24, s10
	v_cndmask_b32_e64 v23, 0xff800000, v23, s11
	ds_store_b32 v58, v87
	ds_store_b32 v59, v22
	ds_store_b32 v60, v23
	ds_store_b32 v61, v24
	ds_store_b32 v62, v88
	ds_store_b32 v63, v85
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v19, v88, v85
	v_max3_f32 v18, v22, v23, v24
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v89, v53
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v17, v17, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v18, v17, s50, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v83, v82, v17, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v17, v86, v83
	v_sub_f32_e32 v18, v84, v83
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v84.h, v95.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v24, v24, v83
	v_sub_f32_e32 v23, v23, v83
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v23, v23
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v17, 0, v17, s7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v18, 0, v18, s8
	v_cndmask_b32_e64 v24, 0, v24, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, v23, s11
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v79.l, v17.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v21.l, v18.h
	v_cmp_o_f32_e64 s7, v17, v17
	v_cmp_o_f32_e64 s8, v18, v18
	v_mov_b16_e32 v84.l, v23.h
	v_and_b32_e32 v19, 1, v79
	v_and_b32_e32 v20, 1, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v17, v19, 0x7fff
	v_add3_u32 v18, v18, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v19.h, 0x7fff, v17.h, s7
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s8
	v_cmp_o_f32_e64 s7, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v18, v19, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v18, v19, v73
	v_perm_b32 v18, v18, v19, v75
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[19:20], null, v80, s18, v[27:28]
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v20, v22, v83
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v80.h, v95.l
	v_mov_b16_e32 v80.l, v24.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v20, v20
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v79, 0x80000000, v19, vcc_lo
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v19.h, v95.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_and_b32_e32 v80, 1, v80
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v91, v79, s[40:43], 0 offen
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v79, v88, v83
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v20, 0, v20, s2
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v21.l, v20.h
	v_cmp_o_f32_e64 s2, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v21, 1, v21
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v79, 0, v79, s12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v20, v20, v21, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v21, v87, v83
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v87, v49
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s2
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v21, v21
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v19.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v21, v21
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v22, v87, v87
.Ltmp11:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v21, v19, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v19.h, s6
	v_cmp_o_f32_e64 s6, v24, v24
	v_add3_u32 v24, v24, v80, 0x7fff
	v_mov_b16_e32 v80.h, v95.l
	v_mov_b16_e32 v80.l, v79.h
	v_permlanex16_b32 v21, v20, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v21, v20, v73
	v_perm_b32 v20, v21, v20, v75
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v21, v89, v89
	v_max_f32_e32 v21, v22, v21
.Ltmp13:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v22, v82, v83
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v82, 1, v84
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v84, v85, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v90, v22
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v22, v21
.Ltmp15:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v84, v84
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v23, v23, v82, 0x7fff
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v82, v97, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v22, v22, v22
.Ltmp19:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v84, 0, v84, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v79, v79
	v_add3_u32 v79, v79, v80, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v21, v21, v22
.Ltmp21:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v22.h, v95.l
	v_mov_b16_e32 v22.l, v84.h
	v_cmp_o_f32_e64 s8, v84, v84
	v_cndmask_b16 v80.l, 0x7fff, v79.h, s9
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v23, v21 :: v_dual_and_b32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v22, v84, v22, 0x7fff
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v84, s15, v27, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v80.h, 0x7fff, v22.h, s8
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v22, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v23, v24, s50, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v79, v21, v22
.Ltmp27:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[85:86], v84, s[24:27], 0 offen
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v84, v80, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v21, v23, v24, v73
	v_perm_b32 v22, v23, v24, v75
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v23, v84, v80, v73
	v_perm_b32 v24, v84, v80, v75
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v88, 8, v91
	v_mov_b16_e32 v92.l, v91.h
	v_lshrrev_b32_e32 v94, 24, v91
	v_bfe_i32 v92, v92, 0, 8
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v95.h, v85.l
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v80, v79, v80
.Ltmp31:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v79, v96, v80
	v_max_f32_e32 v80, v82, v80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v82, v87, v79
	v_sub_f32_e32 v84, v89, v79
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v87, v91, 0, 8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v89, 0xffff0000, v85
	v_mov_b16_e32 v85.h, v86.l
	v_and_b32_e32 v86, 0xffff0000, v86
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v87.h, v95.l
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v84, v84
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v85.l, v87.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v82, 0, v82, s1
	v_cndmask_b32_e64 v84, 0, v84, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v85.l
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v82, v82, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v84, v82
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v82, v82, v84
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v84, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v82, v82, v84
.Ltmp37:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v84.l, v91.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v84.h, 4, v91.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s0, 7, v84.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v84.h, v84.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v85.l, 0, -16, s0
	v_or_b16 v87.l, v84.l, v85.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v84.l, v84.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v85.l, v92.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v93.l, v84.h, v84.l, s1
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v84, v88, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v85.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v93, v93, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s0, 0, v84.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v84.l, v91.h, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v84.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v93, v95, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v84.h, 0, -16, s1
	v_or_b16 v92.l, v84.l, v84.h
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v84, v94, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v92, v92, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v84.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v84.l, v88.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s7, 7, v84.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b16 v84.h, 0, -16, s7
	v_or_b16 v85.l, v84.l, v84.h
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v84.l, 4, v88.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v84.l, v84.l, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v84.h, v84.l, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v88.l, v84.l, v84.h, s0
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b32_e32 v84, 20, v91
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v88, v88, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v84.l, v84.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v88, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v84.h, v84.l, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v88, v89, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v91.l, v84.l, v84.h, s6
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v84.l, v94.l, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s7, v88, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v91, v91, 0, 16
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s0, 7, v84.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v84.h, 0, -16, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v96.l, v84.l, v84.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v84.l, 4, v94.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v94, v85, 0, 16
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v85.l, v95.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v84.h, v84.l, -16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v84.l, v84.l, v84.h, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v89, v89, v94
	v_mov_b32_e32 v94, v81
	v_mul_f32_e32 v92, v85, v92
	v_mul_f32_e32 v85, v85, v91
	v_bfe_i32 v91, v96, 0, 16
	v_bfe_i32 v84, v84, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v93, v93
	v_cmp_o_f32_e64 s6, v92, v92
	v_cmp_o_f32_e64 s8, v89, v89
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v96, v97, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v84, v86, v84
	v_mul_f32_e32 v86, v86, v91
	v_bfe_i32 v91, v87, 0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_f32_i32_e32 v91, v91
	v_mul_f32_e32 v91, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v87.l, v91.h
	v_cmp_o_f32_e64 s0, v91, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v87, 1, v87
	v_add3_u32 v87, v91, v87, 0x7fff
	v_mov_b16_e32 v91.h, v95.l
	v_mov_b16_e32 v91.l, v93.h
	v_mov_b16_e32 v87.l, v85.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v81.l, 0x7fff, v87.h, s0
	v_mov_b16_e32 v87.h, v95.l
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s0, v85, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v87, 1, v87
	v_add3_u32 v91, v93, v91, 0x7fff
	v_mov_b16_e32 v93.h, v95.l
	v_mov_b16_e32 v93.l, v92.h
	v_mov_b16_e32 v91.l, v86.h
	v_add3_u32 v85, v85, v87, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v91.h, s1
	v_mov_b16_e32 v87.h, v95.l
	v_and_b32_e32 v93, 1, v93
	v_mov_b16_e32 v91.h, v95.l
	v_cndmask_b16 v85.h, 0x7fff, v85.h, s0
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v92, v92, v93, 0x7fff
	v_mov_b16_e32 v93.h, v95.l
	v_mov_b16_e32 v93.l, v88.h
	v_cndmask_b16 v85.l, 0x7fff, v92.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v93, 1, v93
	v_add3_u32 v88, v88, v93, 0x7fff
	v_mov_b16_e32 v93.h, v95.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v95, 0, v90, s2
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v93.l, v89.h
	v_cmp_o_f32_e64 s2, v86, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v95
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v87.l, v84.h
	v_and_b32_e32 v93, 1, v93
	v_cmp_o_f32_e64 s1, v84, v84
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v95
	v_mul_f32_e32 v2, v2, v95
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v87, 1, v87
	v_add3_u32 v89, v89, v93, 0x7fff
	v_add_nc_u32_e32 v93, 0, v52
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v95
	v_mul_f32_e32 v4, v4, v95
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v84, v84, v87, 0x7fff
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v92, v82 :: v_dual_and_b32 v87, 1, v91
.Ltmp39:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v95
	v_mul_f32_e32 v7, v7, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v84.h, 0x7fff, v84.h, s1
	v_add3_u32 v86, v86, v87, 0x7fff
	v_cndmask_b16 v87.h, 0x7fff, v88.h, s7
	v_cndmask_b16 v87.l, 0x7fff, v89.h, s8
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v95
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s2
	ds_store_2addr_b32 v66, v81, v87 offset1:8
	ds_store_2addr_b32 v66, v85, v84 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[84:87], v93
	ds_load_b128 v[88:91], v71
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v81, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v93, 0, v81, s0
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v81, v82, v92 :: v_dual_mov_b32 v82, v83
.Ltmp43:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v81, v94, v93
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[84:91], v[17:24], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v9, v44
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v80, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v81, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	s_mov_b32 s1, 0x76543210
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp45:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v10, 0xff800000, v80, vcc_lo
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s33, s33, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s18, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	v_or_b32_e32 v21, v21, v40
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v9, 0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	v_dual_max_f32 v10, v10, v11 :: v_dual_and_b32 v11, 12, v37
.Ltmp48:
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v12, 0, v81, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp51:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_mov_b32 v14, v10
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_mov_b32 v13, v1
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_mov_b32 v17, v3
.Ltmp55:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v15, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v13 :: v_dual_max_f32 v10, v10, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v2, v2, v16 :: v_dual_add_f32 v3, v3, v17
.Ltmp61:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v12, v12, v15
.Ltmp62:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_dual_cndmask_b32 v14, 0, v6 :: v_dual_cndmask_b32 v15, 0, v7
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp65:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v1 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp66:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_mov_b32 v4, v2
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
.Ltmp68:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s19, s33
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v4
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v10 :: v_dual_add_f32 v3, v3, v5
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
.Ltmp77:
	.loc	1 1033 17                       ; attention.py:1033:17
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v8, 0, v8 :: v_dual_mov_b32 v5, v9
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v11, v2
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v9, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v4 :: v_dual_add_f32 v2, v2, v11
.Ltmp87:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v10, v6 :: v_dual_add_f32 v4, v3, v17
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v10, v7 :: v_dual_mov_b32 v11, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v17 :: v_dual_mov_b32 v16, v12
	v_dual_add_f32 v15, v15, v19 :: v_dual_add_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v8, v8, v20 :: v_dual_mov_b32 v17, v13
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v19, v15
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v6, v4
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
.Ltmp94:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v8, v20
	v_add_f32_e32 v12, v12, v16
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v22, v17
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
	v_dual_mov_b32 v20, v17 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v12, v16
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v12, v8
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp113:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp115:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp116:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v7, v8, v12
	v_dual_add_f32 v5, v2, v5 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_add_f32 v6, v4, v6 :: v_dual_and_b32 v9, 0xc0, v37
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v1, 28, v8
.Ltmp117:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v2, 32, v39
	v_lshl_add_u32 v8, v38, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v9
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_f32 v18, v14, v18
	v_add_f32_e32 v17, v13, v16
.Ltmp119:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v9, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v9
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s18, v9
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
.Ltmp120:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 101
		.amdhsa_next_free_sgpr 51
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
		.amdhsa_inst_pref_size 48
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 101
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6140
; TotalNumSgprs: 53
; NumVgprs: 101
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 101
; Occupancy: 12
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     101
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
