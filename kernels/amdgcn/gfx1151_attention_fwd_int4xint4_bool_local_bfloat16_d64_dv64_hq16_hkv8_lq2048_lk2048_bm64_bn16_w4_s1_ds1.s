	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s6, s[0:1], 0x84
	s_load_b32 s33, s[0:1], 0x60
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 760 21 prologue_end           ; attention.py:760:21
	v_and_b32_e32 v3, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s15, 0x31027000
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s5, s2
	.loc	1 773 86 is_stmt 0              ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v2, s8, v33
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v14, s5, v33
	s_mov_b32 s14, 0x7ffffffe
	s_load_b64 s[20:21], s[0:1], 0x7c
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v34, v0, 4, 1
	v_and_b32_e32 v59, 16, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x800, v14
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[4:5], null, s33, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	v_and_or_b32 v7, v5, 30, v34
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v4, 0x60, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s5, s21
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s5, s20
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[16:19], v2, s[12:15], 0 offen
	v_lshlrev_b32_e32 v60, 2, v7
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v6, 1, v4
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s6
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v62, 4, v60
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s2, 64
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v15, v6, v2
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s7, 0x800
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 15
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s7, 0, v59
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, s5, v15
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s34, s10, 0x7ffffff0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v20
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s35, s9, -16
	s_mov_b32 s9, 0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v6, v60, v16
	ds_bpermute_b32 v7, v60, v17
	ds_bpermute_b32 v8, v60, v18
	ds_bpermute_b32 v10, v60, v19
	ds_bpermute_b32 v9, v62, v16
	ds_bpermute_b32 v11, v62, v17
	ds_bpermute_b32 v12, v62, v18
	ds_bpermute_b32 v13, v62, v19
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v16, 0x5410
	v_mov_b32_e32 v17, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v16, 0x1054, v16, s7
	v_cndmask_b32_e64 v17, 0x3276, v17, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v16, v16, 8, v16
	v_lshl_or_b32 v17, v17, 8, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v16, 0x540054, v16
	v_and_b32_e32 v17, 0x760076, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v16, v16, 4, v16
	v_lshl_or_b32 v17, v17, 4, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v57, 0x5040504, v16
	v_and_b32_e32 v58, 0x7060706, v17
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b32 s23, s[0:1], 0x64
	v_or_b32_e32 v61, s8, v15
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_22
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v15, 1, v61
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v48, v6, v9, s7
	v_cndmask_b32_e64 v52, v9, v6, s7
	v_mov_b32_e32 v6, 0x7531
	s_mov_b32 s31, 0x31027000
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	s_mov_b32 s30, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x28
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v14, s6, v14
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cndmask_b32_e64 v49, v7, v11, s7
	v_cndmask_b32_e64 v53, v11, v7, s7
	v_mov_b32_e32 v7, 0x5410
	v_mov_b32_e32 v9, 0x7632
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	v_dual_mov_b32 v32, 0 :: v_dual_lshlrev_b32 v45, 2, v2
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s6, s1, -16
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v35, v15, s[28:31], 0 offen
	v_mov_b32_e32 v15, 0x6420
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s6
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_lshlrev_b32 v63, 3, v3
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v3, 2, v0
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v17, 0x70, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v36, 4, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v47, v10, v13, s7
	v_cndmask_b32_e64 v51, v13, v10, s7
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v37, 3, v0
	v_lshrrev_b32_e32 v4, 2, v4
	v_and_b32_e32 v5, 24, v5
	v_and_or_b32 v1, v33, 15, v1
	v_lshlrev_b32_e32 v10, 7, v0
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v11, 5, v0
	v_bfe_i32 v38, v0, 2, 1
	v_dual_mov_b32 v0, 0 :: v_dual_cndmask_b32 v41, 0x7531, v15
	v_mov_b32_e32 v26, v32
	v_dual_cndmask_b32 v42, 0x6420, v6 :: v_dual_lshlrev_b32 v73, 2, v1
	v_cndmask_b32_e64 v43, 0x1054, v7, s7
	v_cndmask_b32_e64 v44, 0x3276, v9, s7
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s12, s3, 0x10007
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v46, v8, v12, s7
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s12, s3, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v50, v12, v8, s7
	v_mov_b32_e32 v8, 0
	v_xor_b32_e32 v39, v3, v4
	v_lshl_or_b32 v40, v2, 5, v5
	v_dual_mov_b32 v27, v32 :: v_dual_and_b32 v58, 0x160, v11
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v43, v43, 8, v43
	v_lshl_or_b32 v44, v44, 8, v44
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s12, s12, 0x80000
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v33, s19, v33
	s_sext_i32_i16 s12, s12
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s6, s1, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s12, s12, 1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v64, 1, v63
	v_or_b32_e32 v65, 2, v63
	v_or_b32_e32 v66, 3, v63
	v_or_b32_e32 v67, 4, v63
	v_or_b32_e32 v68, 5, v63
	v_or_b32_e32 v69, 6, v63
	v_or_b32_e32 v70, 7, v63
	v_dual_mov_b32 v28, v32 :: v_dual_and_b32 v55, 0x700, v10
	v_lshrrev_b32_e32 v56, 2, v17
	v_cndmask_b32_e64 v57, 0x90, 0, vcc_lo
	v_dual_mov_b32 v29, v32 :: v_dual_add_nc_u32 v78, 0, v40
	v_mov_b32_e32 v31, v32
	v_mov_b32_e32 v17, v32
	v_dual_mov_b32 v18, v32 :: v_dual_add_nc_u32 v77, 0, v39
	v_dual_mov_b32 v20, v32 :: v_dual_and_b32 v39, 0x750031, v42
	v_mov_b32_e32 v22, v32
	v_xor_b32_e32 v79, 8, v40
	v_xor_b32_e32 v80, 16, v40
	v_xor_b32_e32 v81, 24, v40
	v_and_or_b32 v76, 0x90, v38, v58
	v_and_b32_e32 v38, 0x750031, v41
	v_and_b32_e32 v40, 0x540054, v43
	v_and_b32_e32 v41, 0x760076, v44
	.loc	1 906 33                        ; attention.py:906:33
	s_lshl3_add_u32 s12, s6, s12
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s18, s3
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s6, s17, s6
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_and_b32 v54, 28, v3
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s50, s3, s6
	.loc	1 906 32                        ; attention.py:906:32
	s_lshl_b32 s3, s12, 11
	v_dual_mov_b32 v30, v32 :: v_dual_add_nc_u32 v55, 0, v55
	v_dual_mov_b32 v11, v32 :: v_dual_add_nc_u32 v90, v33, v65
	v_dual_mov_b32 v13, v32 :: v_dual_add_nc_u32 v92, v33, v67
	v_dual_mov_b32 v15, v32 :: v_dual_add_nc_u32 v94, v33, v69
	v_dual_mov_b32 v1, v32 :: v_dual_add_nc_u32 v96, v33, v63
	v_dual_mov_b32 v6, v32 :: v_dual_add_nc_u32 v89, v33, v64
	v_xor_b32_e32 v56, v57, v56
	v_xor_b32_e32 v42, 16, v76
	v_lshl_or_b32 v38, v38, 4, v38
	v_lshl_or_b32 v39, v39, 4, v39
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v41, 4, v41
	v_or_b32_e32 v86, s3, v34
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v91, v33, v66
	v_add_nc_u32_e32 v93, v33, v68
	v_add_nc_u32_e32 v95, v33, v70
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s13, s16, 0x3fb8aa3b
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v71, s20, v14
	v_dual_mov_b32 v25, v32 :: v_dual_add_nc_u32 v72, s21, v14
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s23, v45
	v_dual_mov_b32 v19, v32 :: v_dual_add_nc_u32 v80, 0, v80
	v_dual_mov_b32 v21, v32 :: v_dual_add_nc_u32 v82, v55, v56
	v_dual_mov_b32 v23, v32 :: v_dual_and_b32 v88, 0x7050301, v39
	v_dual_mov_b32 v9, v32 :: v_dual_and_b32 v58, 0x7060706, v41
	v_dual_mov_b32 v10, v32 :: v_dual_add_nc_u32 v79, 0, v79
	v_dual_mov_b32 v12, v32 :: v_dual_add_nc_u32 v81, 0, v81
	v_dual_mov_b32 v14, v32 :: v_dual_add_nc_u32 v83, 0, v42
	v_dual_mov_b32 v2, v32 :: v_dual_and_b32 v87, 0x7050301, v38
	v_dual_mov_b32 v4, v32 :: v_dual_and_b32 v57, 0x5040504, v40
	v_mov_b32_e32 v5, v32
	v_mov_b32_e32 v7, v32
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e64 s1, s33, v54
	v_xor_b32_e32 v75, 64, v73
	v_lshl_or_b32 v84, s12, 10, v36
	v_or_b32_e32 v85, s3, v37
	v_or_b32_e32 v97, 2, v86
	v_or_b32_e32 v98, 4, v86
	v_or_b32_e32 v99, 6, v86
	v_or_b32_e32 v100, 8, v86
	v_or_b32_e32 v101, 10, v86
	v_or_b32_e32 v102, 12, v86
	v_or_b32_e32 v103, 14, v86
	v_mov_b32_e32 v107, 0xff800000
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s19, s5
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s48, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b64 s[26:27], s[38:39]
	s_and_b32 s45, s11, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s44, s10
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s49, s12, 7
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s41, s15
	s_add_i32 s50, s50, s5
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v3, v32 :: v_dual_mul_f32 v104, s13, v33
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 31 is_stmt 0                ; attention.py:0:31
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 974 36 is_stmt 1              ; attention.py:974:36
	s_lshr_b32 s5, s34, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s34, 4
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v106, v106, v106 :: v_dual_add_nc_u32 v55, s5, v84
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s49
	.loc	1 962 34                        ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v43.l, 0xff, v43.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s3, s3, s23
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[55:56], null, v55, s23, v[45:46]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v108, s3, v45, 1
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v42.l, 0xff, v42.l
	v_and_b16 v117.l, 0xff, v41.l
	v_and_b16 v44.l, 0xff, v44.l
	v_and_b16 v114.h, 0xff, v44.h
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v56, 0x80000000, v108, s0
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v108, 0x80000000, v55, s0
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v115.h, 0xff, v43.h
	v_and_b16 v116.h, 0xff, v42.h
	v_and_b16 v117.h, 0xff, v41.h
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[55:56], v56, s[36:39], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v108, v108, s[44:47], 0 offen
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s8, 0, v117.l
	v_cmp_ne_u16_e64 s12, 0, v42.l
	v_cmp_ne_u16_e64 s14, 0, v43.l
	v_cmp_ne_u16_e64 s16, 0, v44.l
	v_cmp_ne_u16_e64 s3, 0, v117.h
	v_cmp_ne_u16_e64 s11, 0, v116.h
	v_cmp_ne_u16_e64 s13, 0, v115.h
	v_cmp_ne_u16_e64 s15, 0, v114.h
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_and_b32 s10, s10, s8
	s_and_b32 s12, s18, s12
	s_and_b32 s14, s20, s14
	s_and_b32 s16, s22, s16
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	v_mov_b16_e32 v42.h, v115.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v115, 0, 1, s10
	v_cndmask_b32_e64 v117, 0, 1, s12
	v_cndmask_b32_e64 v119, 0, 1, s14
	v_cndmask_b32_e64 v121, 0, 1, s16
	s_and_b32 s9, s9, s3
	s_and_b32 s11, s17, s11
	s_and_b32 s13, s19, s13
	s_and_b32 s15, s21, s15
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v41.h, v109.l
	v_mov_b16_e32 v111.h, v112.l
	v_mov_b16_e32 v44.h, v114.l
	v_mov_b16_e32 v43.h, v116.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v114, 0, 1, s9
	v_cndmask_b32_e64 v116, 0, 1, s11
	v_cndmask_b32_e64 v118, 0, 1, s13
	v_cndmask_b32_e64 v120, 0, 1, s15
	v_mov_b16_e32 v42.l, v117.l
	v_mov_b16_e32 v44.l, v115.l
	v_mov_b16_e32 v109.l, v121.l
	v_mov_b16_e32 v112.l, v119.l
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v109.h, v110.l
	v_mov_b16_e32 v110.h, v111.l
	.loc	1 962 25                        ; attention.py:962:25
	v_mov_b16_e32 v43.l, v116.l
	v_mov_b16_e32 v110.l, v114.l
	v_mov_b16_e32 v111.l, v120.l
	v_mov_b16_e32 v114.l, v118.l
	v_lshlrev_b16 v42.l, 8, v42.l
	v_lshlrev_b16 v44.l, 8, v44.l
	v_lshlrev_b16 v114.h, 8, v109.l
	v_lshlrev_b16 v112.l, 8, v112.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v41.l, 0
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v115.h, v43.l, v42.l
	v_or_b16 v115.l, v110.l, v44.l
	v_or_b16 v114.h, v111.l, v114.h
	v_or_b16 v114.l, v114.l, v112.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v112.h, v113.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v113, v33
	.loc	1 962 25                        ; attention.py:962:25
	v_perm_b32 v116, v114, v115, v87
	v_perm_b32 v114, v114, v115, v88
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 962 25                        ; attention.py:962:25
	ds_bpermute_b32 v115, v60, v116
	ds_bpermute_b32 v114, v62, v114
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v33, v107, v107 :: v_dual_mul_f32 v34, v104, v34
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v109.l, v41.l
	v_mov_b16_e32 v112.l, v41.l
	v_mov_b16_e32 v44.l, v41.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v38, v104, v38
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v110.l, v41.l
	v_mov_b16_e32 v111.l, v41.l
	v_mov_b16_e32 v42.l, v41.l
	v_mov_b16_e32 v43.l, v41.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v113, v104, v113 :: v_dual_mul_f32 v38, v38, v44
	v_dual_mul_f32 v35, v104, v35 :: v_dual_mul_f32 v34, v34, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v36, v104, v36 :: v_dual_mul_f32 v113, v113, v41
	v_dual_mul_f32 v40, v104, v40 :: v_dual_mul_f32 v35, v35, v110
	.loc	1 962 25                        ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v109, v114, v115, s7
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v39, v104, v39
	v_cvt_f32_i32_e32 v37, v37
	v_mul_f32_e32 v36, v36, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v40, v40, v43 :: v_dual_and_b32 v43, 0x100, v109
	v_dual_mul_f32 v39, v39, v42 :: v_dual_and_b32 v42, 1, v109
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v44, v115, v114, s7
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v37, v104, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s18, 0, v43
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s6, 0xff800000, v105
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s17, 1, v42
	v_and_b32_e32 v110, 1, v44
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v37, v37, v112
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v112, 0x1000000, v44
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v43, v34, 0xff800000, s18
	v_cndmask_b32_e64 v42, 0xff800000, v113, s17
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v111, 0x100, v44
	v_and_b32_e32 v44, 0x10000, v44
	v_cmp_eq_u32_e64 s20, 0, v112
	v_cmp_eq_u32_e64 s8, 1, v110
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v126.h, v41.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s3, 0, v111
	v_cmp_eq_u32_e64 s19, 0, v44
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v40, v40, 0xff800000, s20
	v_cndmask_b32_e64 v37, 0xff800000, v37, s8
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v107
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v38, v38, 0xff800000, s3
	v_cndmask_b32_e64 v39, v39, 0xff800000, s19
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v114, 0x1000000, v109
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v34, v37, v42, s7
	v_cndmask_b32_e64 v44, v42, v37, s7
	v_cndmask_b32_e64 v110, v43, v38, s7
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v111, v39, v40
.Ltmp2:
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s22, 0, v114
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v118.h, v41.l
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v44, v75, v44
	ds_bpermute_b32 v110, v75, v110
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v116.l, v41.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v36, v36, 0xff800000, s22
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v109, 0x10000, v109
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v121.h, v41.l
	v_mov_b16_e32 v122.h, v41.l
	v_mov_b16_e32 v117.h, v41.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v113, v36, v37, v38
.Ltmp4:
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s21, 0, v109
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v109, v38, v43, s7
	v_cndmask_b32_e64 v123, v40, v36, s7
	v_cndmask_b32_e64 v124, v36, v40, s7
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v120.h, v41.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v35, v35, 0xff800000, s21
	ds_bpermute_b32 v109, v73, v109
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v119.h, v41.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v125.h, v41.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v112, v42, v43, v35
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v114, v39, v35, s7
	v_cndmask_b32_e64 v115, v35, v39, s7
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s34, s34, 16
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v111, v112, v113, v111
.Ltmp8:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v112, v73, v34
	ds_bpermute_b32 v113, v73, v114
	ds_bpermute_b32 v114, v75, v115
	ds_bpermute_b32 v115, v73, v123
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v34, v111, s48, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v123, v75, v124
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v124.h, v41.l
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v34, v105, v111, v34
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e32 v129, v110, v109, vcc_lo
	v_cndmask_b32_e32 v109, v109, v110, vcc_lo
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v111.h, v41.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v105, v105, v34
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v35, v34
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v40, v40, v34
	v_sub_f32_e32 v38, v38, v34
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v105, v105
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e32 v127, v44, v112, vcc_lo
	v_cndmask_b32_e32 v128, v112, v44, vcc_lo
	s_waitcnt lgkmcnt(2)
	v_dual_cndmask_b32 v110, v114, v113 :: v_dual_cndmask_b32 v113, v113, v114
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v114, v123, v115, vcc_lo
	v_cndmask_b32_e32 v130, v115, v123, vcc_lo
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v44, v112, v44, v129
	v_max3_f32 v112, v109, v110, v113
.Ltmp12:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v105, 0, v105, s6
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v123, v123, v123
	v_dual_max_f32 v115, v115, v115 :: v_dual_sub_f32 v42, v42, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v43, v43, v34 :: v_dual_mul_f32 v26, v26, v105
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v28, v28, v105 :: v_dual_max_f32 v115, v115, v123
	v_mul_f32_e32 v30, v30, v105
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v123, v35, 0, s21
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v105
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v36, v34
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v44, v44, v112, v115
.Ltmp16:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v39, v39, v34 :: v_dual_mul_f32 v24, v24, v105
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v36, v36
.Ltmp17:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v35, v44
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp18:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v43, v43
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v16, v16, v105
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v22, v22, v105
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v112, v37
	v_exp_f32_e32 v115, v38
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v131, v36, 0, s22
.Ltmp21:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp22:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v132, v39, 0, s19
	v_cndmask_b32_e64 v133, v40, 0, s20
	v_cndmask_b32_e64 v134, v43, 0, s18
	v_cndmask_b32_e64 v135, 0, v42, s17
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v35, v44, v35
.Ltmp24:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v105
	v_mul_f32_e32 v8, v8, v105
	v_mul_f32_e32 v10, v10, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v23, v23, v105 :: v_dual_max_f32 v106, v106, v35
	v_mul_f32_e32 v27, v27, v105
	v_mul_f32_e32 v29, v29, v105
	v_mul_f32_e32 v31, v31, v105
	v_dual_mul_f32 v17, v17, v105 :: v_dual_sub_f32 v44, v130, v106
	v_dual_mul_f32 v19, v19, v105 :: v_dual_sub_f32 v42, v113, v106
	v_dual_mul_f32 v20, v20, v105 :: v_dual_sub_f32 v39, v109, v106
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v127, v106
	v_sub_f32_e32 v37, v128, v106
	v_sub_f32_e32 v38, v129, v106
	v_sub_f32_e32 v40, v110, v106
	v_sub_f32_e32 v43, v114, v106
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v44, v44
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v105
	v_mul_f32_e32 v0, v0, v105
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s9
	v_cndmask_b32_e64 v37, 0, v37, s10
	v_cndmask_b32_e64 v38, 0, v38, s11
	v_cndmask_b32_e64 v39, 0, v39, s12
	v_cndmask_b32_e64 v40, 0, v40, s13
	v_cndmask_b32_e64 v42, 0, v42, s14
	v_cndmask_b32_e64 v43, 0, v43, s15
	v_cndmask_b32_e64 v44, 0, v44, s16
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v21, v21, v105
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_add_f32 v37, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v38, v40, v42 :: v_dual_add_f32 v39, v43, v44
.Ltmp26:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v44, v33, v35
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v105
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v33, v36, v37
.Ltmp28:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v126.l, v135.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v35, v38, v39 :: v_dual_sub_f32 v36, v107, v44
.Ltmp30:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v105
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v125.l, v134.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v4, v4, v105 :: v_dual_and_b32 v37, 1, v126
	v_mul_f32_e32 v6, v6, v105
	v_mul_f32_e32 v5, v5, v105
	v_mul_f32_e32 v7, v7, v105
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v109, v135, v37, 0x7fff
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v116.h, v56.l
	v_and_b32_e32 v56, 0xffff0000, v56
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v14, v14, v105 :: v_dual_add_f32 v33, v33, v35
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v35, v36
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v105
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v38, 8, v108
	v_mov_b16_e32 v39.l, v108.h
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v36, v33
.Ltmp32:
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v37, v108, 0, 8
	v_lshrrev_b32_e32 v40, 24, v108
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v42, 20, v108
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v37.h, v38.l, 15
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v139, 0, v35, s5
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v35.h, v108.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v35.l, 4, v108.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v43, v38, 0, 8
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v33, v33, v36
.Ltmp36:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v36.l, v108.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v108, v39, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v35.h
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v110, v40, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v35.l, v35.l, 15
	v_lshrrev_b16 v36.h, 4, v38.l
	v_and_b16 v38.l, v42.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v36.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v39.l, v40.l, 15
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v39.h, 0, -16, s5
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v37.h
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_mov_b16_e32 v42.l, v108.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v38.h, 4, v40.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s9, 0, v37.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v37.l, v35.l, -16
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v40.l, v43.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v40.h, v38.l, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v42.h, 0, -16, s6
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v43.l, v110.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v39.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_or_b16 v108.l, v35.h, v39.h
	v_cndmask_b16 v35.h, 0, -16, s5
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v42.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v43.h, v38.h, -16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v37.l, v35.l, v37.l, s9
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s9, 0, v40.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v40.l, v36.l, v42.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v43.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v36.l, 0, -16, s6
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v38.l, v38.l, v40.h, s5
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v36.h, v36.h, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v40, v40, 0, 16
	v_bfe_i32 v42, v37, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v36.l, v39.l, v36.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v39.l, v38.h, v43.h, s10
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v38, v38, 0, 16
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v35.l, v36.h, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v108, v108, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v37.l, v37.h, v35.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v40, v40
	v_bfe_i32 v39, v39, 0, 16
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v13, v13, v105
	v_mul_f32_e32 v1, v1, v105
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v41.h, v55.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v35.l, v36.h, v35.l, s9
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v43, v108
	v_bfe_i32 v37, v37, 0, 16
	v_mul_f32_e32 v40, v116, v40
	v_cvt_f32_i32_e32 v39, v39
	v_dual_mul_f32 v38, v116, v38 :: v_dual_and_b32 v55, 0xffff0000, v55
	v_cvt_f32_i32_e32 v42, v42
	v_bfe_i32 v35, v35, 0, 16
	v_bfe_i32 v36, v36, 0, 16
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v122.l, v40.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v43, v41, v43
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v121.l, v38.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v39, v56, v39
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v15, v15, v105 :: v_dual_mul_f32 v42, v41, v42
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_and_b32_e32 v108, 1, v122
	v_mov_b16_e32 v118.l, v43.h
	v_and_b32_e32 v110, 1, v121
	v_mov_b16_e32 v111.l, v39.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v37, v55, v37
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v3, v3, v105 :: v_dual_mul_f32 v36, v56, v36
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v117.l, v42.h
	v_cmp_o_f32_e64 s9, v40, v40
	v_and_b32_e32 v56, 1, v118
	v_add3_u32 v40, v40, v108, 0x7fff
	v_and_b32_e32 v108, 1, v111
	v_mov_b16_e32 v120.l, v37.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v35, v55, v35
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v43, v43
	v_and_b32_e32 v55, 1, v117
	v_mov_b16_e32 v124.l, v36.h
	v_add3_u32 v43, v43, v56, 0x7fff
	v_and_b32_e32 v56, 1, v120
	v_mov_b16_e32 v119.l, v35.h
	v_cmp_o_f32_e64 s5, v42, v42
	v_add3_u32 v42, v42, v55, 0x7fff
	v_and_b32_e32 v111, 1, v124
	v_cmp_o_f32_e64 s10, v35, v35
	v_and_b32_e32 v55, 1, v119
	v_cmp_o_f32_e64 s12, v38, v38
	v_cmp_o_f32_e64 s14, v36, v36
	v_add3_u32 v38, v38, v110, 0x7fff
	v_add3_u32 v36, v36, v111, 0x7fff
	v_add3_u32 v35, v35, v55, 0x7fff
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v33, v74, v139
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v107, 1, v125
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s11, v37, v37
	v_add3_u32 v37, v37, v56, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v40.h, s9
	v_cndmask_b16 v40.h, 0x7fff, v35.h, s10
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s12
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s14
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v38.l, v131.h
	v_mov_b16_e32 v38.h, v41.l
	v_cmp_o_f32_e64 s5, v134, v134
	v_mov_b32_e32 v74, v33
	v_add3_u32 v36, v134, v107, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v38, 1, v38
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s13, v39, v39
	v_add3_u32 v39, v39, v108, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v43.h, 0x7fff, v36.h, s5
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v112, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v38, v131, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v131, v131
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v55, v115, 0, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v56.h, v41.l
	v_mov_b16_e32 v56.l, v36.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v40.l, 0x7fff, v37.h, s11
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s13
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v39.l, v123.h
	v_mov_b16_e32 v39.h, v41.l
	v_cndmask_b16 v134.h, 0x7fff, v38.h, s5
	v_mov_b16_e32 v38.l, v55.h
	v_mov_b16_e32 v38.h, v41.l
	v_and_b32_e32 v56, 1, v56
	v_mov_b16_e64 v108.l, v132.h
	v_mov_b16_e32 v108.h, v41.l
	v_mov_b16_e64 v107.l, v133.h
	v_mov_b16_e32 v107.h, v41.l
	v_cmp_o_f32_e64 s6, v135, v135
	v_and_b32_e32 v39, 1, v39
	v_dual_mov_b32 v105, v34 :: v_dual_and_b32 v38, 1, v38
	v_add3_u32 v41, v36, v56, 0x7fff
	v_and_b32_e32 v56, 1, v108
	v_and_b32_e32 v107, 1, v107
	v_cndmask_b16 v43.l, 0x7fff, v109.h, s6
	v_add3_u32 v39, v123, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v123, v123
	v_add3_u32 v38, v55, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v55, v55
	v_cmp_o_f32_e64 s6, v36, v36
	v_add3_u32 v36, v132, v56, 0x7fff
	v_cmp_o_f32_e64 s9, v132, v132
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v119, 0, v76
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v55, v133, v107, 0x7fff
	v_cmp_o_f32_e64 s8, v133, v133
	v_cndmask_b16 v134.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v56.h, 0x7fff, v38.h, s5
	v_cndmask_b16 v56.l, 0x7fff, v41.h, s6
	v_cndmask_b16 v55.l, 0x7fff, v36.h, s9
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v82, v42, v40 offset1:8
	ds_store_2addr_b32 v82, v35, v37 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v119
	ds_load_b128 v[107:110], v119 offset:512
	ds_load_b128 v[39:42], v83
	ds_load_b128 v[111:114], v83 offset:512
	ds_load_b128 v[115:118], v119 offset:1024
	ds_load_b128 v[123:126], v119 offset:1536
	ds_load_b128 v[119:122], v83 offset:1024
	ds_load_b128 v[127:130], v83 offset:1536
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s8
	v_permlanex16_b32 v132, v43, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v135, v134, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v136, v56, s48, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v138, v55, s48, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v131, v132, v43, v57
	v_perm_b32 v132, v132, v43, v58
	v_perm_b32 v133, v135, v134, v57
	v_perm_b32 v134, v135, v134, v58
	v_perm_b32 v135, v136, v56, v57
	v_perm_b32 v136, v136, v56, v58
	v_perm_b32 v137, v138, v55, v57
	v_perm_b32 v138, v138, v55, v58
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[35:42], v[131:138], v[24:31]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[107:114], v[131:138], v[16:23]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[115:122], v[131:138], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[123:130], v[131:138], v[0:7]
	v_mov_b32_e32 v107, v44
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_23
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v33, s34, v85
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v39, v32
	v_mov_b32_e32 v35, v32
	v_mov_b32_e32 v36, v32
	v_mov_b32_e32 v37, v32
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[33:34], null, v33, s33, v[54:55]
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v34, v32
	v_mov_b32_e32 v38, v32
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v117, s34, v63
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s6, s50, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v117, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v117, v72
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v33, v33, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s9, s4, s3
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v77, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[41:42], v78
	ds_load_b64 v[43:44], v79
	ds_load_b64 v[55:56], v80
	ds_load_b64 v[108:109], v81
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v33, v32
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v33, v32
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[52:53], v[33:40] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v41, s34, v86, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[50:51], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[55:56], v[48:49], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[46:47], v[33:40] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v109, v41, s[40:43], 0 offen
	v_add_lshl_u32 v41, v97, s34, 1
	buffer_load_u16 v110, v41, s[40:43], 0 offen
	v_add_lshl_u32 v41, v98, s34, 1
	buffer_load_u16 v111, v41, s[40:43], 0 offen
	v_add_lshl_u32 v41, v99, s34, 1
	buffer_load_u16 v112, v41, s[40:43], 0 offen
	v_add_lshl_u32 v41, v100, s34, 1
	buffer_load_u16 v113, v41, s[40:43], 0 offen
	v_add_lshl_u32 v41, v101, s34, 1
	buffer_load_u16 v114, v41, s[40:43], 0 offen
	v_add_lshl_u32 v41, v102, s34, 1
	buffer_load_u16 v115, v41, s[40:43], 0 offen
	v_add_lshl_u32 v41, v103, s34, 1
	buffer_load_u16 v116, v41, s[40:43], 0 offen
	v_mov_b16_e32 v41.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v41.h, v41.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s5, s9
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v42, s6, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s3, s26, v42
	v_add_co_ci_u32_e64 v43, null, s27, v43, s3
	.loc	1 962 34                        ; attention.py:962:34
	global_load_d16_hi_u8 v41, v[42:43], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v42, s34, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v42, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v42, v72
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_and_b32 s10, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s5, s10
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v42, s6, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s3, s26, v42
	v_add_co_ci_u32_e64 v43, null, s27, v43, s3
	global_load_d16_u8 v41, v[42:43], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v43, s34, v65
	v_mov_b16_e32 v42.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v43, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v43, v72
	v_mov_b16_e32 v42.h, v42.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s4, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s5, s17
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s6, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, s3, s26, v43
	v_add_co_ci_u32_e64 v44, null, s27, v44, s3
	global_load_d16_hi_u8 v42, v[43:44], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v43, s34, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v43, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v43, v72
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_and_b32 s18, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s5, s18
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s6, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, s3, s26, v43
	v_add_co_ci_u32_e64 v44, null, s27, v44, s3
	global_load_d16_u8 v42, v[43:44], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v44, s34, v67
	v_mov_b16_e32 v43.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v44, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v44, v72
	v_mov_b16_e32 v43.h, v43.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s4, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s5, s19
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v44, s6, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v56, 31, v44
	v_add_co_u32 v55, s3, s26, v44
	v_add_co_ci_u32_e64 v56, null, s27, v56, s3
	global_load_d16_hi_u8 v43, v[55:56], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v44, s34, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v44, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v44, v72
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_and_b32 s20, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s5, s20
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v44, s6, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v56, 31, v44
	v_add_co_u32 v55, s3, s26, v44
	v_add_co_ci_u32_e64 v56, null, s27, v56, s3
	global_load_d16_u8 v43, v[55:56], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v55, s34, v69
	v_mov_b16_e32 v44.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v55, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v55, v72
	v_mov_b16_e32 v44.h, v44.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s4, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s5, s21
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v55, s6, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v56, 31, v55
	v_add_co_u32 v55, s3, s26, v55
	v_add_co_ci_u32_e64 v56, null, s27, v56, s3
	global_load_d16_hi_u8 v44, v[55:56], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v55, s34, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v55, v71
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v55, v72
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s5
	s_and_b32 s22, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s5, s22
	s_cbranch_execz .LBB0_5
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v55, s6, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v56, 31, v55
	v_add_co_u32 v55, s3, s26, v55
	v_add_co_ci_u32_e64 v56, null, s27, v56, s3
	global_load_d16_u8 v44, v[55:56], off
	s_branch .LBB0_5
.LBB0_22:
	.loc	1 0 34                          ; attention.py:0:34
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
.LBB0_23:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	ds_bpermute_b32 v37, v60, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v59
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s23, v61
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.h, 0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v36, 16, v33
	v_or_b32_e32 v35, 32, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s23, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s23, v36
	v_cmp_gt_i32_e64 s1, s23, v35
	s_mov_b32 s26, 0x7ffffffe
	v_cmp_gt_i32_e64 s0, s23, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v44, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v40
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v47, null, v37, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v53, null, v37, v37, v28
	v_div_scale_f32 v41, vcc_lo, v25, v37, v25
	v_rcp_f32_e32 v54, v47
	v_fma_f32 v52, -v40, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v42, v48, 1.0
	v_div_scale_f32 v43, s3, v24, v37, v24
	v_fma_f32 v59, -v44, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_fmac_f32 v48, v55, v48
	v_rcp_f32_e32 v55, v53
	v_div_scale_f32 v46, s8, v27, v37, v27
	v_dual_mul_f32 v60, v41, v45 :: v_dual_fmac_f32 v51, v59, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v47, v54, 1.0
	v_div_scale_f32 v49, s9, v26, v37, v26
	v_fma_f32 v59, -v40, v60, v41
	v_div_scale_f32 v50, null, v37, v37, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v53, v55, 1.0
	v_dual_mul_f32 v62, v43, v48 :: v_dual_mul_f32 v65, v46, v51
	v_fmac_f32_e32 v54, v61, v54
	v_rcp_f32_e32 v56, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v55, v64, v55 :: v_dual_fmac_f32 v60, v59, v45
	v_fma_f32 v61, -v42, v62, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v59, v49, v54
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v52, s10, v29, v37, v29
	v_fma_f32 v40, -v40, v60, v41
	v_fmac_f32_e32 v62, v61, v48
	v_fma_f32 v63, -v50, v56, 1.0
	v_fma_f32 v61, -v44, v65, v46
	v_fma_f32 v41, -v47, v59, v49
	v_div_fmas_f32 v40, v40, v45, v60
	v_fma_f32 v42, -v42, v62, v43
	v_div_scale_f32 v43, s11, v28, v37, v28
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v40, v37, v25
	v_dual_fmac_f32 v56, v63, v56 :: v_dual_fmac_f32 v65, v61, v51
	v_mul_f32_e32 v45, v43, v55
	v_div_fmas_f32 v42, v42, v48, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v59, v41, v54 :: v_dual_mul_f32 v40, v52, v56
	v_fma_f32 v41, -v44, v65, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v42, v37, v24
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v42, -v47, v59, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v41, v51, v65
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v54, v59
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v24, v37, v27
	v_fma_f32 v41, -v50, v40, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v42, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v56
	v_fma_f32 v27, -v53, v45, v43
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v39, v44, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v50, v40, v52
	v_fmac_f32_e32 v45, v27, v55
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v41.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v42, v56, v40
	v_fma_f32 v42, -v53, v45, v43
	s_mov_b32 vcc_lo, s11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v55, v45
	v_div_fixup_f32 v29, v40, v37, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v39, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v43
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_scale_f32 v42, null, v37, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v39, v26, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v40, 1.0
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s8, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v44, v40
	v_fma_f32 v50, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_and_b32 v27, 1, v38
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v27, v25, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v25.h, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v43, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v29.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v27, v41
	v_div_scale_f32 v27, s3, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v38.l, v26.h
	v_cmp_o_f32_e64 s9, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v27, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v47, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v28, v29, 0x7fff
	v_add3_u32 v47, v26, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v46, v41
	v_div_scale_f32 v46, null, v37, v37, v16
	v_fma_f32 v26, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v46
	v_fma_f32 v43, -v45, v49, 1.0
	v_div_fmas_f32 v26, v26, v41, v39
	v_fma_f32 v39, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v41, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v42, -v46, v27, 1.0
	v_div_fmas_f32 v39, v39, v40, v48
	v_mul_f32_e32 v40, v41, v49
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s9
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v45, v40, v41
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s8, v16, v37, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v39, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v42, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v31.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v45, v40, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v46, v43, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v49, v40
	s_mov_b32 vcc_lo, s8
	v_dual_fmac_f32 v43, v28, v27 :: v_dual_and_b32 v28, 1, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	v_fma_f32 v41, -v46, v43, v42
	v_div_scale_f32 v42, null, v37, v37, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	v_add3_u32 v29, v30, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v41, v27, v43
	v_rcp_f32_e32 v39, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v21
	v_div_fixup_f32 v16, v27, v37, v16
	v_div_scale_f32 v27, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v42, v39, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v38.h
	v_and_b32_e32 v45, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v28, v39
	v_div_scale_f32 v28, s3, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v27, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v29, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v28, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v45, v17, v45, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, s8, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v42, v30, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v46, v41, v40
	v_fmac_f32_e32 v30, v44, v39
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v27, v46, v41
	v_fma_f32 v17, -v42, v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v44
	v_fma_f32 v42, -v43, v47, 1.0
	v_fmac_f32_e32 v46, v48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v39, v30
	v_div_scale_f32 v30, s3, v21, v37, v21
	v_fma_f32 v27, -v27, v46, v41
	v_fmac_f32_e32 v47, v42, v47
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v27, v27, v40, v46
	v_mul_f32_e32 v40, v30, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s8, v20, v37, v20
	v_div_fixup_f32 v18, v27, v37, v18
	v_fma_f32 v27, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v42, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v27, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v44, v41, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v18, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.h, v38.h
	v_cndmask_b16 v17.l, 0x7fff, v29.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v47, v40
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v31, -v44, v41, v39
	v_div_scale_f32 v39, null, v37, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v38
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v31, v28, v41
	v_rcp_f32_e32 v29, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_add3_u32 v19, v42, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	v_div_fixup_f32 v21, v30, v37, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	v_fma_f32 v30, -v39, v29, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e32 v31.h, v38.h
	v_mov_b16_e32 v31.l, v20.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s3, v23, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v41, null, v37, v37, v9
	v_fmac_f32_e32 v27, v40, v27
	v_div_scale_f32 v40, s8, v22, v37, v22
	v_fma_f32 v42, -v39, v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	v_add3_u32 v44, v20, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v40, v27
	v_rcp_f32_e32 v45, v41
	v_fmac_f32_e32 v31, v42, v29
	v_div_scale_f32 v42, null, v37, v37, v8
	v_fma_f32 v46, -v28, v19, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v21, v43, 0x7fff
	v_cmp_o_f32_e64 s9, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v39, v31, v30
	v_rcp_f32_e32 v30, v42
	v_fmac_f32_e32 v19, v46, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v21, v21, v29, v31
	v_fma_f32 v28, -v28, v19, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v29, s3, v9, v37, v9
	v_fma_f32 v31, -v42, v30, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s8, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v20, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v23, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v20, -v42, v31, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v20, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v45, v27
	v_div_scale_f32 v29, null, v37, v37, v11
	v_fma_f32 v28, -v42, v31, v28
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v27, v37, v9
	v_div_fmas_f32 v28, v28, v30, v31
	v_rcp_f32_e32 v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	v_div_scale_f32 v39, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v38.h
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s3, v11, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, s8, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v29, v22, v20
	v_rcp_f32_e32 v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v9, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v40, v30
	v_div_scale_f32 v40, null, v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v28, v42, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v20, v40
	v_fma_f32 v29, -v39, v43, 1.0
	v_fmac_f32_e32 v42, v44, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v30, v22
	v_fmac_f32_e32 v43, v29, v43
	v_fma_f32 v22, -v28, v42, v31
	v_div_scale_f32 v28, s3, v13, v37, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v40, v20, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v42
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s8, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v39, v27, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v40, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v28, -v40, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v23
	v_and_b32_e32 v22, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v28, v20, v30
	v_rcp_f32_e32 v23, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v27, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v12
	v_div_scale_f32 v20, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v27, -v29, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, s3, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v20, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, null, v37, v37, v1
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s8, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	v_fma_f32 v42, -v20, v40, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v10, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v29, v13, v27
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v30, v41, 1.0
	v_fmac_f32_e32 v40, v42, v21
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v23, v13
	v_fmac_f32_e32 v41, v29, v41
	v_fma_f32 v13, -v20, v40, v28
	v_div_scale_f32 v20, s3, v1, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v31, v27, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v40
	v_mul_f32_e32 v21, v20, v41
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s8, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v39.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v41
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	v_div_scale_f32 v29, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v41, v21
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v15, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v13, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s3, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v38.h
	v_and_b32_e32 v30, 1, v38
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s8
	v_cmp_o_f32_e64 s8, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v10, v37, v2
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v3
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_div_scale_f32 v29, s3, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_mul_f32_e32 v28, v10, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v3, v21, 1.0
	v_mul_f32_e32 v40, v29, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v1, v28, v10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s8, v7, v37, v7
	v_fma_f32 v41, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v39, v20
	v_fma_f32 v39, -v23, v40, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v41, v15
	v_div_scale_f32 v41, s9, v6, v37, v6
	v_fma_f32 v1, -v1, v28, v10
	v_fmac_f32_e32 v40, v39, v13
	v_fma_f32 v10, -v3, v42, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v20, v28
	v_fma_f32 v20, -v23, v40, v29
	v_fmac_f32_e32 v42, v10, v21
	v_fma_f32 v23, -v27, v39, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v1, v37, v5
	v_div_fmas_f32 v10, v20, v13, v40
	v_fma_f32 v3, -v3, v42, v30
	v_fmac_f32_e32 v39, v23, v15
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v42
	v_fma_f32 v5, -v27, v39, v41
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v39
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	v_add3_u32 v13, v0, v43, 0x7fff
	v_mov_b16_e32 v38.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v38.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v3, 1, v38
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v7.h, v38.h
	v_mov_b16_e32 v38.l, v0.h
	v_mov_b16_e32 v7.l, v5.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v6, 0x7fff
	v_add3_u32 v3, v1, v3, 0x7fff
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v38
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s6, v4, v4
	v_cmp_o_f32_e64 s8, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s9, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s9
	v_cndmask_b32_e64 v4, v16, v25, s7
	v_cndmask_b32_e64 v5, v25, v16, s7
	v_cndmask_b32_e64 v16, v0, v9, s7
	v_cndmask_b32_e64 v0, v9, v0, s7
	v_cndmask_b32_e64 v3, v24, v26, s7
	v_cndmask_b32_e64 v6, v19, v17, s7
	v_cndmask_b32_e64 v7, v17, v19, s7
	v_cndmask_b32_e64 v10, v8, v18, s7
	v_cndmask_b32_e64 v8, v18, v8, s7
	v_cndmask_b32_e64 v15, v14, v11, s7
	v_cndmask_b32_e64 v11, v11, v14, s7
	v_cndmask_b32_e64 v14, v12, v22, s7
	v_cndmask_b32_e64 v12, v22, v12, s7
	v_cndmask_b32_e64 v17, v2, v13, s7
	v_cndmask_b32_e64 v2, v13, v2, s7
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s7
	v_permlanex16_b32 v13, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v57
	v_perm_b32 v13, v13, v16, v58
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v57
	v_perm_b32 v1, v3, v1, v58
	v_perm_b32 v2, v5, v4, v57
	v_perm_b32 v3, v5, v4, v58
	v_perm_b32 v4, v7, v6, v57
	v_perm_b32 v5, v7, v6, v58
	v_perm_b32 v6, v8, v10, v57
	v_perm_b32 v7, v8, v10, v58
	v_perm_b32 v8, v9, v15, v57
	v_perm_b32 v9, v9, v15, v58
	v_perm_b32 v10, v11, v14, v57
	v_perm_b32 v11, v11, v14, v58
	v_perm_b32 v14, v18, v17, v57
	v_perm_b32 v15, v18, v17, v58
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v32, v35, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp37:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 140
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 140
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10792
; TotalNumSgprs: 53
; NumVgprs: 140
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 140
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     140
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
