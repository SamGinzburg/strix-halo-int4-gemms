	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x88
	s_load_b32 s23, s[0:1], 0x60
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v35, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s9, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s15, 0x31027000
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s9, s2
	.loc	1 773 86 is_stmt 0              ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v35
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v3, s8, v2
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s9, v2
	s_mov_b32 s14, 0x7ffffffe
	s_load_b64 s[6:7], s[0:1], 0x80
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v54, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v37, 1, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v36, 0x60, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v50, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v37, 30, v54
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s23, v3, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s23, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v6, 2, v6
	v_cmp_eq_u32_e64 s4, 0, v50
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	v_xor_b32_e32 v7, 4, v6
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s2, s9, s6
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[12:15], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v36
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 802 25 is_stmt 0              ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v1, v1, v34
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s33, s10, 0x7ffffff0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v40, s9, v1
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s5, s9
	v_or_b32_e32 v55, s8, v1
	s_add_i32 s9, s9, 64
	s_add_i32 s11, s9, s7
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s9, s9, 0x800
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s11, s11, 0x800
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s9, s9, 15
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s11, s11, 15
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s13, s9, 31
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s12, s11, 31
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s13, s13, 28
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s12, s12, 28
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s9, s9, s13
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s11, s11, s12
	.loc	1 811 33                        ; attention.py:811:33
	s_and_b32 s9, s9, -16
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s11, s11, -16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v40
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s34, s11, s9
	s_mov_b32 s9, 0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s33, s34
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v38, v6, v2
	ds_bpermute_b32 v39, v6, v3
	ds_bpermute_b32 v46, v6, v4
	ds_bpermute_b32 v47, v6, v5
	ds_bpermute_b32 v48, v7, v2
	ds_bpermute_b32 v49, v7, v3
	ds_bpermute_b32 v63, v7, v4
	ds_bpermute_b32 v64, v7, v5
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s4
	v_cndmask_b32_e64 v3, 0x3276, v3, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v51, 0x5040504, v2
	v_and_b32_e32 v52, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow60
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s22, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v53, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v6, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v55
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x28
	s_load_b32 s1, s[0:1], 0x68
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v5, 0x5410 :: v_dual_add_nc_u32 v52, s5, v40
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v2, 0x70, v0
	s_lshr_b32 s0, s0, 28
	v_lshlrev_b32_e32 v8, 5, v0
	s_add_i32 s0, s3, s0
	v_cndmask_b32_e64 v69, 0x1054, v5, s4
	v_cndmask_b32_e64 v70, 0x3276, v6, s4
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s5, s0, 0xfff0
	v_dual_mov_b32 v87, 0xff800000 :: v_dual_and_b32 v4, 24, v37
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s5
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v51, v1, s[24:27], 0 offen
	v_lshlrev_b32_e32 v7, 7, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	v_bfe_i32 v65, v0, 2, 1
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v66, s7, v52
	v_dual_mov_b32 v26, v33 :: v_dual_and_b32 v73, 0x160, v8
	v_lshl_or_b32 v69, v69, 8, v69
	v_lshl_or_b32 v70, v70, 8, v70
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v42, v46, v63, s4
	v_cndmask_b32_e64 v46, v63, v46, s4
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v63, s6, v52
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s6, s3, 0x10007
	.loc	1 907 49                        ; attention.py:907:49
	v_lshlrev_b32_e32 v1, 2, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s3, s3, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v43, v47, v64, s4
	v_cndmask_b32_e64 v45, v39, v49, s4
	v_cndmask_b32_e64 v44, v38, v48, s4
	v_cndmask_b32_e64 v47, v64, v47, s4
	v_cndmask_b32_e64 v49, v49, v39, s4
	v_cndmask_b32_e64 v48, v48, v38, s4
	v_lshrrev_b32_e32 v3, 2, v36
	v_cndmask_b32_e64 v64, 0x90, 0, vcc_lo
	v_lshl_or_b32 v68, v34, 5, v4
	v_lshrrev_b32_e32 v72, 2, v2
	v_dual_mov_b32 v38, v33 :: v_dual_and_b32 v71, 0x700, v7
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v27, v33
	v_dual_mov_b32 v29, v33 :: v_dual_and_b32 v78, 0x760076, v70
	v_mov_b32_e32 v22, v33
	v_and_or_b32 v73, 0x90, v65, v73
	v_min_i32_e32 v66, v52, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s3, s3, 0x80000
	v_and_b32_e32 v52, 0x540054, v69
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s1, s1, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s3, s3
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s5, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s3, s3, 1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v56, 2, v54
	v_or_b32_e32 v57, 4, v54
	v_or_b32_e32 v58, 6, v54
	v_or_b32_e32 v59, 8, v54
	v_or_b32_e32 v60, 10, v54
	v_or_b32_e32 v61, 12, v54
	v_or_b32_e32 v62, 14, v54
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v53, 4, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v74, 3, v0
	v_mov_b32_e32 v36, v33
	v_dual_mov_b32 v37, v33 :: v_dual_and_b32 v0, 28, v1
	v_xor_b32_e32 v67, v1, v3
	v_dual_mov_b32 v28, v33 :: v_dual_add_nc_u32 v71, 0, v71
	v_xor_b32_e32 v75, 8, v68
	v_xor_b32_e32 v76, 16, v68
	v_xor_b32_e32 v77, 24, v68
	v_xor_b32_e32 v72, v64, v72
	v_xor_b32_e32 v79, 16, v73
	v_lshl_or_b32 v52, v52, 4, v52
	v_lshl_or_b32 v84, v78, 4, v78
	.loc	1 906 33                        ; attention.py:906:33
	s_lshl3_add_u32 s3, s5, s3
	.loc	1 759 31                        ; attention.py:759:31
	v_lshlrev_b32_e32 v41, 2, v34
	v_mov_b32_e32 v34, v33
	.loc	1 906 32                        ; attention.py:906:32
	s_lshl_b32 s5, s3, 11
	v_dual_mov_b32 v25, v33 :: v_dual_add_nc_u32 v64, 0, v67
	v_dual_mov_b32 v30, v33 :: v_dual_add_nc_u32 v65, 0, v68
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v68, 0, v76
	v_dual_mov_b32 v32, v33 :: v_dual_add_nc_u32 v67, 0, v75
	v_dual_mov_b32 v17, v33 :: v_dual_add_nc_u32 v70, v71, v72
	v_dual_mov_b32 v18, v33 :: v_dual_add_nc_u32 v69, 0, v77
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v72, 0, v79
	v_dual_mov_b32 v20, v33 :: v_dual_add_nc_u32 v71, 0, v73
	v_mov_b32_e32 v21, v33
	v_mov_b32_e32 v23, v33
	v_mov_b32_e32 v9, v33
	v_mov_b32_e32 v10, v33
	v_mov_b32_e32 v11, v33
	v_mov_b32_e32 v12, v33
	v_mov_b32_e32 v13, v33
	v_mov_b32_e32 v14, v33
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v16, v33
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v33
	v_mov_b32_e32 v3, v33
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v5, v33
	v_mov_b32_e32 v6, v33
	v_mov_b32_e32 v7, v33
	v_mov_b32_e32 v8, v33
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e64 s0, s23, v0
	v_lshl_or_b32 v73, s3, 10, v53
	v_or_b32_e32 v74, s5, v74
	v_or_b32_e32 v75, s5, v54
	v_or_b32_e32 v76, s5, v56
	v_or_b32_e32 v77, s5, v57
	v_or_b32_e32 v78, s5, v58
	v_or_b32_e32 v79, s5, v59
	v_or_b32_e32 v80, s5, v60
	v_or_b32_e32 v82, s5, v61
	v_or_b32_e32 v83, s5, v62
	v_mov_b32_e32 v53, v33
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s14
	s_mov_b32 s40, s10
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s35, s3, 7
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s37, s15
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s44, 0x76543210
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e32 vcc_lo, s22, v41
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v81, s1, v51
	v_and_b32_e32 v51, 0x5040504, v52
	v_and_b32_e32 v52, 0x7060706, v84
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v84, v81
	v_mov_b32_e32 v85, v81
	v_mov_b32_e32 v86, v81
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; attention.py:0:25
	v_dual_mov_b32 v119, v53 :: v_dual_add_nc_u32 v88, s33, v74
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v89, s33, v62
	v_or_b32_e32 v90, s33, v61
	v_or_b32_e32 v91, s33, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[106:107], null, v88, s23, v[0:1]
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v92, s33, v59
	v_or_b32_e32 v93, s33, v58
	v_or_b32_e32 v102, s33, v56
	v_or_b32_e32 v103, s33, v54
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s33, 4
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s1, s33, 1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v88, 0x80000000, v106, s0
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s35
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v53, s1, v73
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s19, s3, s22
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v89, v63
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v88, v88, s[24:27], 0 offen
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s3, v66, v89
	.loc	1 951 30 is_stmt 0              ; attention.py:951:30
	v_cmp_ge_i32_e64 s5, v90, v63
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s6, v66, v90
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v91, v63
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s8, v66, v91
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s9, v92, v63
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s10, v66, v92
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s11, v93, v63
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s12, v66, v93
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s15, v102, v63
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s16, v66, v102
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s17, v103, v63
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s18, v66, v103
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v94, v75, s33, 1
	v_add_lshl_u32 v95, v76, s33, 1
	v_add_lshl_u32 v96, v77, s33, 1
	v_add_lshl_u32 v97, v78, s33, 1
	v_add_lshl_u32 v98, v82, s33, 1
	v_add_lshl_u32 v99, v83, s33, 1
	v_add_lshl_u32 v101, v79, s33, 1
	v_add_lshl_u32 v104, v80, s33, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v100, s33, v57
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v105.l, 0
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s3, s1
	s_and_b32 s3, s6, s5
	s_and_b32 s5, s10, s9
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s13, v100, v63
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s14, v66, v100
	.loc	1 952 21 is_stmt 1              ; attention.py:952:21
	s_and_b32 s6, s12, s11
	s_and_b32 s9, s18, s17
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s9, s2, s9
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v100.h, v105.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v114.l, v105.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v115.h, v105.l
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s33, s33, 16
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v64, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[88:89], v65
	ds_load_b64 v[90:91], v67
	ds_load_b64 v[92:93], v68
	ds_load_b64 v[102:103], v69
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[88:89], v[48:49], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[90:91], v[46:47], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[92:93], v[44:45], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[102:103], v[42:43], v[106:113] neg_lo:[1,1,0]
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v90, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v102, v112
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v112, s19, v41, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v91, v107
	v_cvt_f32_i32_e32 v92, v108
	v_mul_f32_e32 v90, v81, v90
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[88:89], null, v53, s22, v[41:42]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_dual_cndmask_b32 v53, 0x80000000, v112 :: v_dual_mul_f32 v102, v85, v102
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v91, v84, v91
	v_cvt_f32_i32_e32 v93, v109
	v_cvt_f32_i32_e32 v103, v113
	v_cvt_f32_i32_e32 v106, v110
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v112, 0x80000000, v88, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[88:89], v53, s[28:31], 0 offen
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x7
	buffer_load_u16 v53, v94, s[36:39], 0 offen
	buffer_load_u16 v94, v95, s[36:39], 0 offen
	buffer_load_u16 v95, v96, s[36:39], 0 offen
	buffer_load_u16 v96, v97, s[36:39], 0 offen
	buffer_load_u16 v97, v98, s[36:39], 0 offen
	buffer_load_u16 v98, v99, s[36:39], 0 offen
	buffer_load_u16 v99, v101, s[36:39], 0 offen
	buffer_load_u16 v101, v104, s[36:39], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v104, v112, s[40:43], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v107, v111
	v_dual_mul_f32 v92, v85, v92 :: v_dual_mul_f32 v93, v86, v93
	v_dual_mul_f32 v103, v86, v103 :: v_dual_mul_f32 v106, v81, v106
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v107, v84, v107
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s19, s8, s7
	s_and_b32 s7, s14, s13
	s_and_b32 s8, s16, s15
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s10, s2, s19
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.h, v105.l
	v_mov_b16_e32 v108.h, v105.l
	v_mov_b16_e32 v109.h, v105.l
	v_mov_b16_e32 v111.h, v105.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s33, s34
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(9)
	v_and_b32_e32 v112, 0xffff0000, v88
	v_mov_b16_e32 v105.h, v88.l
	v_mov_b16_e32 v114.h, v89.l
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v88, 16, v96
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v96, 16, v98
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v113, 0xffff0000, v89
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v98, 16, v101
	v_lshlrev_b32_e32 v89, 16, v53
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v96, v103, v96 :: v_dual_lshlrev_b32 v53, 16, v95
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v95, 16, v97
	v_lshlrev_b32_e32 v97, 16, v99
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(0)
	v_bfe_i32 v99, v104, 0, 8
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v92, v92, v53
	v_dual_mul_f32 v95, v102, v95 :: v_dual_lshlrev_b32 v94, 16, v94
	v_mul_f32_e32 v97, v106, v97
	v_mul_f32_e32 v93, v93, v88
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v53.l, v104.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v91, v91, v94
	v_dual_mul_f32 v94, v107, v98 :: v_dual_mul_f32 v89, v90, v89
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v97, 0xff800000, v97, s5
	v_cndmask_b32_e64 v96, 0xff800000, v96, s1
	v_cndmask_b32_e64 v95, 0xff800000, v95, s3
	v_cndmask_b32_e64 v94, 0xff800000, v94, s10
	v_cndmask_b32_e64 v92, 0xff800000, v92, s7
	v_cndmask_b32_e64 v91, 0xff800000, v91, s8
	v_cndmask_b32_e64 v98, 0xff800000, v89, s9
	v_cndmask_b32_e64 v93, 0xff800000, v93, s6
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v53.h, 4, v104.l
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v89, v95, v96
.Ltmp2:
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v53.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v90, v98, v91, v92
	v_max3_f32 v102, v93, v97, v94
.Ltmp4:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v101, 8, v104
	v_mov_b16_e32 v100.l, v104.h
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v53.h, v53.h, 15
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v88.h, 0, -16, s11
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v102, v90, v102, v89
.Ltmp6:
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v89.l, v99.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v88.l, v104.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v90, 24, v104
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v103, 20, v104
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v99, v101, 0, 8
	v_bfe_i32 v104, v100, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v89.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v100.l, v53.l, v88.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v53.l, v53.h, -16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v88.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v89.l, v104.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v107, v90, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v88.h, v103.l, 15
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v106.l, v53.h, v53.l, s13
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v53.l, v99.l
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v53.h, 4, v101.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v89.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v89.l, 0, -16, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v106.h, v105.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s11, 0, v53.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v53.l, v101.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v53.h, v53.h, 15
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v99.l, v88.l, v89.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v88.l, v90.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v89.l, 4, v90.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v53.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v90.l, v107.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v99, v99, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v89.h, 0, -16, s12
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s14, 0, v90.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v90.l, v53.l, v89.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v53.l, v53.h, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v90, v90, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v101.l, v53.h, v53.l, s11
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v53.l, v88.h, -16
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v88.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v53.h, v105.l
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v90, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v103.l, v88.h, v53.l, s13
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v53.l, 0, -16, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v88.h, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v90, v112, v90
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v87
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v88.l, v88.l, v53.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v53.l, v89.l, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.l, v90.h
	v_cmp_o_f32_e64 s16, v90, v90
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v104, v88, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v53.l, v89.l, v53.l, s14
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v89, v102, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v120, v87, v102, v89
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v89, v101, 0, 16
	v_bfe_i32 v101, v103, 0, 16
	v_bfe_i32 v103, v53, 0, 16
	v_mul_f32_e32 v104, v113, v104
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v107, v87, v120
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v98, v98, v120
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v107, v107
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v89, v112, v89
	v_bfe_i32 v112, v100, 0, 16
	v_mul_f32_e32 v103, v113, v103
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v94, v94, v120 :: v_dual_and_b32 v109, 1, v109
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v53.l, v103.h
	v_mov_b16_e32 v88.l, v104.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v121, 0, v107, s11
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v91, v91, v120
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v112, v105, v112
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v93, v93, v120
	v_dual_sub_f32 v97, v97, v120 :: v_dual_mul_f32 v32, v32, v121
	v_dual_sub_f32 v95, v95, v120 :: v_dual_mul_f32 v18, v18, v121
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v100.l, v112.h
	v_cmp_o_f32_e64 s12, v112, v112
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v28, v28, v121
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v92, v92, v120
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v91, v91
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_and_b32_e32 v100, 1, v100
	v_mov_b16_e32 v108.l, v89.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v101, v114, v101
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v94, v94
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v100, v112, v100, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v112, v106, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v108, 1, v108
	v_mov_b16_e32 v111.l, v101.h
	.loc	1 971 62 is_stmt 1              ; attention.py:971:62
	v_sub_f32_e32 v96, v96, v120
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v97, v97
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v112, v112
	v_mul_f32_e32 v99, v114, v99
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v95, v95
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v111, 1, v111
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v96, v96
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v112, v105, v112
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v110.l, v99.h
	v_cmp_o_f32_e64 s14, v99, v99
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v121
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v93, v93
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v115.l, v112.h
	v_and_b32_e32 v110, 1, v110
	v_cmp_o_f32_e64 s15, v89, v89
	v_add3_u32 v89, v89, v108, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v25, v25, v121 :: v_dual_and_b32 v88, 1, v88
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v113, 1, v115
	v_add3_u32 v99, v99, v110, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v98, 0, v98, s9
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s13, v112, v112
	v_add3_u32 v90, v90, v109, 0x7fff
	v_add3_u32 v112, v112, v113, 0x7fff
	v_cndmask_b16 v89.l, 0x7fff, v99.h, s14
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v99, 0, v91, s8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v53, 1, v53
	v_cmp_o_f32_e64 s17, v101, v101
	v_cmp_o_f32_e64 s18, v103, v103
	v_cmp_o_f32_e64 s19, v104, v104
	v_cndmask_b16 v112.l, 0x7fff, v100.h, s12
	v_add3_u32 v100, v101, v111, 0x7fff
	v_add3_u32 v53, v103, v53, 0x7fff
	v_add3_u32 v88, v104, v88, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v101, 0, v93, s6
	v_cndmask_b32_e64 v103, 0, v92, s7
	v_cndmask_b32_e64 v104, 0, v94, s10
	v_cndmask_b32_e64 v97, 0, v97, s5
	v_cndmask_b32_e64 v96, 0, v96, s1
	v_cndmask_b32_e64 v95, 0, v95, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v102.h, v105.l
	v_mov_b16_e32 v87.h, v105.l
	v_mov_b16_e32 v105.h, v105.l
	v_mov_b16_e32 v110.h, v105.l
	v_mov_b16_e32 v108.h, v105.l
	v_mov_b16_e32 v109.h, v105.l
	v_mov_b16_e32 v113.h, v105.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v112.h, 0x7fff, v112.h, s13
	v_cndmask_b16 v91.h, 0x7fff, v89.h, s15
	v_cndmask_b16 v91.l, 0x7fff, v90.h, s16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v102.l, v99.h
	v_mov_b16_e32 v87.l, v98.h
	v_mov_b16_e32 v106.l, v101.h
	v_mov_b16_e32 v105.l, v103.h
	v_mov_b16_e32 v110.l, v104.h
	v_mov_b16_e32 v108.l, v97.h
	v_mov_b16_e32 v109.l, v96.h
	v_mov_b16_e32 v113.l, v95.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v89.h, 0x7fff, v100.h, s17
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s18
	v_cndmask_b16 v53.l, 0x7fff, v88.h, s19
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v27, v27, v121 :: v_dual_and_b32 v100, 1, v87
	v_mul_f32_e32 v31, v31, v121
	v_mul_f32_e32 v17, v17, v121
	v_mul_f32_e32 v22, v22, v121
	v_dual_mul_f32 v24, v24, v121 :: v_dual_and_b32 v107, 1, v108
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v70, v112, v91 offset1:8
	ds_store_2addr_b32 v70, v89, v53 offset0:16 offset1:24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v53, 1, v102
	v_and_b32_e32 v102, 1, v106
	v_and_b32_e32 v105, 1, v105
	v_and_b32_e32 v106, 1, v110
	v_and_b32_e32 v108, 1, v109
	v_and_b32_e32 v109, 1, v113
	v_cmp_o_f32_e64 s1, v99, v99
	v_cmp_o_f32_e64 s3, v98, v98
	v_cmp_o_f32_e64 s5, v101, v101
	v_cmp_o_f32_e64 s6, v103, v103
	v_cmp_o_f32_e64 s7, v104, v104
	v_cmp_o_f32_e64 s8, v97, v97
	v_cmp_o_f32_e64 s9, v96, v96
	v_cmp_o_f32_e64 s10, v95, v95
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v29, v29, v121 :: v_dual_add_f32 v116, v95, v96
	v_dual_mul_f32 v20, v20, v121 :: v_dual_add_f32 v115, v97, v104
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v88, v98, v99
	v_add_f32_e32 v90, v103, v101
.Ltmp10:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v53, v99, v53, 0x7fff
	v_add3_u32 v98, v98, v100, 0x7fff
	v_add3_u32 v99, v101, v102, 0x7fff
	v_add3_u32 v100, v103, v105, 0x7fff
	v_add3_u32 v101, v104, v106, 0x7fff
	v_add3_u32 v97, v97, v107, 0x7fff
	v_add3_u32 v96, v96, v108, 0x7fff
	v_add3_u32 v95, v95, v109, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v98.h, s3
	v_cndmask_b16 v98.h, 0x7fff, v99.h, s5
	v_cndmask_b16 v98.l, 0x7fff, v100.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v101.h, s7
	v_cndmask_b16 v100.l, 0x7fff, v97.h, s8
	v_cndmask_b16 v102.h, 0x7fff, v96.h, s9
	v_cndmask_b16 v102.l, 0x7fff, v95.h, s10
	v_permlanex16_b32 v99, v98, s44, 0xfedcba98 op_sel:[1,0]
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v101, v100, s44, 0xfedcba98 op_sel:[1,0]
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v103, v102, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v97, v99, v98, v51
	v_perm_b32 v98, v99, v98, v52
	v_perm_b32 v99, v101, v100, v51
	v_perm_b32 v100, v101, v100, v52
	v_perm_b32 v101, v103, v102, v51
	v_perm_b32 v102, v103, v102, v52
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[103:106], v71 offset:512
	ds_load_b128 v[107:110], v72 offset:512
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s1
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v19, v19, v121 :: v_dual_add_f32 v122, v88, v90
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[91:94], v72
	ds_load_b128 v[87:90], v71
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v21, v21, v121
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v96, v53, s44, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v23, v23, v121
	v_mul_f32_e32 v10, v10, v121
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[111:114], v71 offset:1024
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v121
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v95, v96, v53, v51
	v_perm_b32 v96, v96, v53, v52
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v115, v116
.Ltmp12:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v121
	v_mul_f32_e32 v11, v11, v121
	v_mul_f32_e32 v13, v13, v121
	v_mul_f32_e32 v14, v14, v121
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v122, v53
.Ltmp14:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v121
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[103:110], v[95:102], v[17:24]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[103:106], v71 offset:1536
	ds_load_b128 v[115:118], v72 offset:1024
	ds_load_b128 v[107:110], v72 offset:1536
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v16, v16, v121
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[87:94], v[95:102], v[25:32]
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v87, v53, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v121
	v_mul_f32_e32 v1, v1, v121
	v_mul_f32_e32 v2, v2, v121
	v_mul_f32_e32 v3, v3, v121
	v_mul_f32_e32 v4, v4, v121
	v_mul_f32_e32 v5, v5, v121
	v_mul_f32_e32 v6, v6, v121
	v_mul_f32_e32 v7, v7, v121
	v_dual_mul_f32 v8, v8, v121 :: v_dual_add_f32 v53, v53, v87
	v_mov_b32_e32 v87, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v53, v119, v121
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[111:118], v[95:102], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[103:110], v[95:102], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v55
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v53, v53, v25
	v_div_scale_f32 v34, null, v53, v53, v26
	v_div_scale_f32 v35, null, v53, v53, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, vcc_lo, v25, v53, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v53, v26
	v_div_scale_f32 v43, null, v53, v53, v28
	v_div_scale_f32 v49, s3, v28, v53, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s22, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v53, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s23, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v53, v53, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v54, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v53, v53, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v53, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v53, v26
	v_div_scale_f32 v34, s5, v29, v53, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v53, v53, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v53, v53, v31
	v_fma_f32 v55, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v53
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v55, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v30, v53, v30
	v_div_fixup_f32 v26, v26, v53, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v53, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v53, v53, v17
	v_div_scale_f32 v36, s3, v31, v53, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v43, v44
	v_fma_f32 v28, -v40, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v37, v35, 1.0
	v_dual_fmac_f32 v42, v28, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v40, v42, v43
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s6, v32, v53, v32
	v_div_scale_f32 v43, null, v53, v53, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v53, v17
	v_div_fixup_f32 v28, v28, v53, v29
	v_div_fixup_f32 v29, v34, v53, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v53, v53, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v53, v53, v20
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v53, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v53, v31
	v_div_fixup_f32 v31, v35, v53, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s5, v19, v53, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v53, v53, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v53, v20
	v_div_scale_f32 v47, null, v53, v53, v22
	v_div_fixup_f32 v17, v32, v53, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v21, v53, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v53, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v53, v53, v23
	s_mov_b32 vcc_lo, s5
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s6, v22, v53, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v53, v53, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v53, v19
	v_div_fixup_f32 v20, v34, v53, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v53, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v53, v53, v9
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v53, v24
	v_div_scale_f32 v46, null, v53, v53, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v53, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v53, v53, v11
	v_div_fixup_f32 v21, v32, v53, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v53, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s5, v9, v53, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v53, v53, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s6, v11, v53, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v54, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v53, v23
	v_div_fixup_f32 v24, v36, v53, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v53, v53, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v54, v36, v54
	v_div_scale_f32 v36, s3, v12, v53, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v53, v53, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v54
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v53, v13
	v_div_fixup_f32 v9, v32, v53, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v54
	v_div_fixup_f32 v10, v35, v53, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v53, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v53, v53, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s5, v14, v53, v14
	v_div_fmas_f32 v36, v36, v54, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v53, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v53, v53, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v53, v53, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v53, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v53, v53, v2
	v_div_fixup_f32 v13, v32, v53, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v53, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v53, v53, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s5, v1, v53, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v54, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v55, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v53, v2
	v_div_fixup_f32 v14, v35, v53, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v55, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v54, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v55, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v54, v39, v54
	v_div_scale_f32 v39, s1, v3, v53, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v53, v53, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v55, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v54
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v53, v15
	v_div_fmas_f32 v34, v34, v37, v55
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v16, v32, v53, v16
	v_div_fixup_f32 v1, v34, v53, v1
	v_div_scale_f32 v34, null, v53, v53, v5
	v_fmac_f32_e32 v36, v41, v54
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v53, v53, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v53, v53, v6
	v_div_fixup_f32 v2, v37, v53, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v54, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v53, v53, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v53, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v53, v3
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v32, -v34, v36, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v53, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v53, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v53, v7
	v_fma_f32 v54, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v47, v42
	v_mul_f32_e32 v55, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	v_mul_f32_e32 v56, v48, v41
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v54, s6, v8, v53, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v55, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v56, v48
	v_mul_f32_e32 v57, v54, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v55, v40, v39
	v_fma_f32 v32, -v34, v49, v32
	v_fmac_f32_e32 v56, v47, v41
	v_fma_f32 v34, -v44, v57, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v55, v45
	v_div_fmas_f32 v32, v32, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v57, v34, v46
	v_fma_f32 v34, -v37, v56, v48
	v_div_fmas_f32 v35, v35, v39, v55
	v_div_fixup_f32 v4, v38, v53, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v56
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_cmp_o_f32_e64 s5, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v30, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v18, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v57, v54
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v57
	v_div_fixup_f32 v5, v32, v53, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v53, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v53, v7
	v_div_fixup_f32 v8, v36, v53, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v50
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v27, v0, s4
	v_cndmask_b32_e64 v0, v0, v27, s4
	v_cndmask_b32_e64 v6, v17, v25, s4
	v_cndmask_b32_e64 v7, v25, v17, s4
	v_cndmask_b32_e64 v13, v28, v20, s4
	v_cndmask_b32_e64 v15, v18, v19, s4
	v_cndmask_b32_e64 v16, v12, v9, s4
	v_cndmask_b32_e64 v9, v9, v12, s4
	v_cndmask_b32_e64 v12, v11, v10, s4
	v_cndmask_b32_e64 v10, v10, v11, s4
	v_cndmask_b32_e64 v17, v3, v1, s4
	v_cndmask_b32_e64 v1, v1, v3, s4
	v_cndmask_b32_e64 v14, v19, v18, s4
	v_cndmask_b32_e64 v18, v4, v2, s4
	v_cndmask_b32_e64 v2, v2, v4, s4
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v20, v28, s4
	v_permlanex16_b32 v3, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s22, v34
	v_cmp_gt_i32_e64 s3, s22, v32
	v_cmp_gt_i32_e64 s0, s22, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v5, v51
	v_perm_b32 v1, v3, v5, v52
	v_perm_b32 v2, v4, v6, v51
	v_perm_b32 v3, v4, v6, v52
	v_perm_b32 v4, v7, v8, v51
	v_perm_b32 v5, v7, v8, v52
	v_perm_b32 v6, v11, v14, v51
	v_perm_b32 v7, v11, v14, v52
	v_perm_b32 v10, v13, v12, v51
	v_perm_b32 v11, v13, v12, v52
	v_perm_b32 v12, v15, v17, v51
	v_perm_b32 v13, v15, v17, v52
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v51
	v_perm_b32 v9, v9, v16, v52
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s22, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v51
	v_perm_b32 v15, v19, v18, v52
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v33, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v33, v36, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v17, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v19, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 123
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 123
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9044
; TotalNumSgprs: 47
; NumVgprs: 123
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 123
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     123
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
