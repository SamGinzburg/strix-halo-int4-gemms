	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x84
	s_load_b32 s27, s[0:1], 0x60
	s_load_b64 s[16:17], s[0:1], 0x0
.Ltmp0:
	.loc	1 760 21 prologue_end           ; attention.py:760:21
	v_and_b32_e32 v3, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s12, s3, 9
	s_mov_b32 s19, 0x31027000
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s5, s12
	.loc	1 773 86 is_stmt 0              ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v2, s8, v33
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s5, v33
	s_mov_b32 s18, 0x7ffffffe
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v53, 16, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x200, v4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s13, 0, v53
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[5:6], null, s27, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s27, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s17, s17, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v6, 0x60, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v5, v0, 4, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v8, 1, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s5, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s5, s6
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[17:20], v2, s[16:19], 0 offen
	v_and_or_b32 v9, v7, 30, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v2, 15, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s14
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s14
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s2, 64
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v54, 2, v9
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v16, v8, v2
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s9, 0x200
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 15
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v56, 4, v54
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, s5, v16
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s33, s10, 0x7ffffff0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v21
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s34, s9, -16
	s_mov_b32 s9, 0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s33, s34
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v8, v54, v17
	ds_bpermute_b32 v9, v54, v18
	ds_bpermute_b32 v10, v54, v19
	ds_bpermute_b32 v12, v54, v20
	ds_bpermute_b32 v11, v56, v17
	ds_bpermute_b32 v13, v56, v18
	ds_bpermute_b32 v14, v56, v19
	ds_bpermute_b32 v15, v56, v20
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v17, 0x5410
	v_mov_b32_e32 v18, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v17, 0x1054, v17, s13
	v_cndmask_b32_e64 v18, 0x3276, v18, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v17, 8, v17
	v_lshl_or_b32 v18, v18, 8, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v17, 0x540054, v17
	v_and_b32_e32 v18, 0x760076, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v17, 4, v17
	v_lshl_or_b32 v18, v18, 4, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v51, 0x5040504, v17
	v_and_b32_e32 v52, 0x7060706, v18
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b32 s26, s[0:1], 0x64
	v_or_b32_e32 v55, s8, v16
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[16:23], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v17, 0x5410 :: v_dual_lshlrev_b32 v16, 1, v55
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x28
	s_load_b128 s[8:11], s[0:1], 0x68
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshlrev_b32_e32 v41, 2, v2
	v_dual_mov_b32 v32, 0 :: v_dual_lshlrev_b32 v57, 3, v3
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_lshlrev_b32 v3, 2, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v4, s14, v4
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v42, v10, v14, s13
	v_cndmask_b32_e64 v44, v8, v11, s13
	v_cndmask_b32_e64 v46, v14, v10, s13
	v_cndmask_b32_e64 v48, v11, v8, s13
	v_or_b32_e32 v58, s12, v5
	v_mov_b32_e32 v5, 0x7632
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s21, 0xffff
	s_mov_b32 s28, s20
	v_mov_b32_e32 v10, 0x6420
	buffer_load_u16 v34, v16, s[28:31], 0 offen
	v_mov_b32_e32 v11, 0x7531
	v_dual_mov_b32 v25, v32 :: v_dual_and_b32 v18, 0x70, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v43, v12, v15, s13
	v_cndmask_b32_e64 v45, v9, v13, s13
	v_cndmask_b32_e64 v47, v15, v12, s13
	v_cndmask_b32_e64 v49, v13, v9, s13
	v_lshrrev_b32_e32 v6, 2, v6
	v_lshlrev_b32_e32 v12, 7, v0
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_dual_mov_b32 v108, 0 :: v_dual_cndmask_b32 v37, 0x7632, v17
	v_dual_cndmask_b32 v39, 0x7531, v10 :: v_dual_and_b32 v50, 28, v3
	v_dual_cndmask_b32 v38, 0x5410, v5 :: v_dual_mov_b32 v27, v32
	v_dual_cndmask_b32 v40, 0x6420, v11 :: v_dual_mov_b32 v29, v32
	v_cndmask_b32_e64 v51, 0x1054, v17, s13
	v_cndmask_b32_e64 v52, 0x3276, v5, s13
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v19, 4, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v9, 3, v0
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v7, 24, v7
	v_bfe_i32 v35, v0, 2, 1
	v_xor_b32_e32 v36, v3, v6
	v_dual_mov_b32 v26, v32 :: v_dual_and_b32 v79, 0x700, v12
	v_lshrrev_b32_e32 v80, 2, v18
	v_cndmask_b32_e64 v81, 0x90, 0, vcc_lo
	v_dual_mov_b32 v17, v32 :: v_dual_and_b32 v82, 0x160, v13
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v38, v38, 8, v38
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v40, v40, 8, v40
	v_lshl_or_b32 v51, v51, 8, v51
	v_lshl_or_b32 v52, v52, 8, v52
	v_and_or_b32 v1, v33, 15, v1
	v_mul_lo_u32 v33, s11, v33
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_or_b32_e32 v68, s12, v9
	s_lshr_b32 s0, s0, 29
	v_lshl_or_b32 v69, v2, 5, v7
	v_lshl_or_b32 v73, s3, 8, v19
	v_mov_b32_e32 v18, v32
	v_dual_mov_b32 v19, v32 :: v_dual_add_nc_u32 v92, 0, v79
	v_mov_b32_e32 v20, v32
	v_mov_b32_e32 v21, v32
	v_mov_b32_e32 v22, v32
	v_mov_b32_e32 v9, v32
	v_mov_b32_e32 v11, v32
	v_mov_b32_e32 v13, v32
	v_xor_b32_e32 v91, v81, v80
	v_and_or_b32 v79, 0x90, v35, v82
	v_add_nc_u32_e32 v80, 0, v36
	v_and_b32_e32 v35, 0x760032, v37
	v_and_b32_e32 v36, 0x760032, v38
	v_and_b32_e32 v37, 0x750031, v39
	v_and_b32_e32 v38, 0x750031, v40
	v_and_b32_e32 v39, 0x540054, v51
	v_and_b32_e32 v40, 0x760076, v52
	s_add_i32 s1, s3, s0
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v64, s6, v4
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s6, s1, -8
	v_dual_mov_b32 v0, 0 :: v_dual_add_nc_u32 v63, s7, v4
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v59, 7, v57
	v_or_b32_e32 v60, 6, v57
	v_or_b32_e32 v61, 5, v57
	v_or_b32_e32 v62, 4, v57
	v_dual_mov_b32 v31, v32 :: v_dual_lshlrev_b32 v72, 2, v1
	v_dual_mov_b32 v4, v32 :: v_dual_add_nc_u32 v97, v33, v57
	v_xor_b32_e32 v88, 8, v69
	v_xor_b32_e32 v89, 16, v69
	v_xor_b32_e32 v90, 24, v69
	v_xor_b32_e32 v51, 16, v79
	v_lshl_or_b32 v35, v35, 4, v35
	v_lshl_or_b32 v36, v36, 4, v36
	v_lshl_or_b32 v37, v37, 4, v37
	v_lshl_or_b32 v38, v38, 4, v38
	v_lshl_or_b32 v39, v39, 4, v39
	v_lshl_or_b32 v40, v40, 4, v40
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s35, s3, 5
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s6
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s6, s8, 0x3fb8aa3b
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s1, 3
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s10, s3
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s7, s9, s7
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_mov_b32 v8, 0
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s26, v41
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 3, v57
	v_or_b32_e32 v66, 2, v57
	v_or_b32_e32 v67, 1, v57
	v_or_b32_e32 v70, 2, v58
	v_or_b32_e32 v71, 4, v58
	v_dual_mov_b32 v28, v32 :: v_dual_mov_b32 v85, v63
	v_dual_mov_b32 v30, v32 :: v_dual_mov_b32 v87, v63
	v_dual_mov_b32 v23, v32 :: v_dual_mov_b32 v86, v63
	v_dual_mov_b32 v10, v32 :: v_dual_add_nc_u32 v89, 0, v89
	v_dual_mov_b32 v12, v32 :: v_dual_and_b32 v93, 0x7060302, v35
	v_dual_mov_b32 v14, v32 :: v_dual_and_b32 v95, 0x7050301, v37
	v_dual_mov_b32 v15, v32 :: v_dual_add_nc_u32 v88, 0, v88
	v_dual_mov_b32 v1, v32 :: v_dual_add_nc_u32 v90, 0, v90
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v32
	v_dual_mov_b32 v5, v32 :: v_dual_and_b32 v94, 0x7060302, v36
	v_dual_mov_b32 v6, v32 :: v_dual_add_nc_u32 v99, v33, v61
	v_dual_mov_b32 v7, v32 :: v_dual_and_b32 v96, 0x7050301, v38
	v_or_b32_e32 v74, 6, v58
	v_or_b32_e32 v75, 8, v58
	v_or_b32_e32 v76, 10, v58
	v_or_b32_e32 v77, 12, v58
	v_or_b32_e32 v78, 14, v58
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e64 s1, s27, v50
	v_xor_b32_e32 v81, 64, v72
	.loc	1 951 30                        ; attention.py:951:30
	v_dual_mov_b32 v82, v64 :: v_dual_add_nc_u32 v101, v33, v59
	v_dual_mov_b32 v83, v64 :: v_dual_and_b32 v52, 0x7060706, v40
	v_dual_mov_b32 v84, v64 :: v_dual_add_nc_u32 v103, 2, v97
	v_add_nc_u32_e32 v91, v92, v91
	v_add_nc_u32_e32 v92, 0, v51
	v_and_b32_e32 v51, 0x5040504, v39
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_add_nc_u32 v98, v33, v62
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v102, 1, v97
	v_add_nc_u32_e32 v104, 3, v97
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s11, s5
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s40, s22
	s_add_i32 s22, s3, s7
	s_mov_b32 s52, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	s_and_b32 s49, s19, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s44, s38
	s_mov_b32 s48, s18
	s_mov_b32 s38, s30
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s41, s23
	s_mov_b32 s45, s39
	s_mov_b32 s39, s31
	s_add_i32 s22, s22, s5
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 928 41                        ; attention.py:928:41
	v_dual_mul_f32 v105, s6, v34 :: v_dual_add_nc_u32 v100, v33, v60
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v33, v32 :: v_dual_add_nc_u32 v110, s33, v68
	v_mov_b32_e32 v39, v32
	v_dual_mov_b32 v35, v32 :: v_dual_add_nc_u32 v132, 0, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[123:124], null, v110, s27, v[50:51]
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v36, v32
	v_dual_mov_b32 v37, v32 :: v_dual_add_nc_u32 v110, 0, v79
	v_mov_b32_e32 v38, v32
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s12, s33, 1
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v34, v32
	v_mov_b32_e32 v131, v39
	v_dual_mov_b32 v129, v37 :: v_dual_mov_b32 v128, v36
	v_dual_mov_b32 v130, v38 :: v_dual_mov_b32 v127, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v126, v34 :: v_dual_mov_b32 v125, v33
	v_mov_b32_e32 v124, v32
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v33, 0x80000000, v123, s1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v134, s33, v65
	v_or_b32_e32 v135, s33, v67
	v_or_b32_e32 v118, s33, v57
	v_or_b32_e32 v117, s33, v66
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v33, v33, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v119, s33, v60
	v_or_b32_e32 v120, s33, v62
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s10, s22, s33
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s11, s33, 4
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s5, v134, v84
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v134, v87
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v135, v82
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s8, v135, v85
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v118, v64
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s9, v118, v63
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v118, s10, v100, 1
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s21, s11, s35
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s11, v117, v86
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s19, v119, v83
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s20, v119, v86
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s17, v120, v64
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v120, v63
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s5, s5, s6
	s_and_b32 s9, s3, s9
	s_and_b32 s3, s7, s8
	s_and_b32 s5, s4, s5
	s_and_b32 s8, s17, s18
	s_and_b32 s3, s4, s3
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_or_b32_e32 v121, s33, v61
	v_or_b32_e32 v122, s33, v59
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v112, s33, v58, 1
	v_add_lshl_u32 v113, v70, s33, 1
	v_add_lshl_u32 v115, v76, s33, 1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s15, v121, v82
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s16, v121, v85
	v_cmp_le_i32_e64 s14, v122, v87
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v116, v71, s33, 1
	v_add_lshl_u32 v114, v74, s33, 1
	v_add_lshl_u32 v123, v77, s33, 1
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s6, s15, s16
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v40.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v111, v75, s33, 1
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s21, s21, s26
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v119.l, v40.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v120.h, v40.l
	v_mov_b16_e32 v121.h, v40.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v136.h, v40.l
	v_mov_b16_e64 v135.h, v40.l
	v_mov_b16_e64 v138.h, v40.l
	v_mov_b16_e64 v137.h, v40.l
	v_mov_b16_e64 v139.h, v40.l
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v106, v106, v106
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v80, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[33:34], v132
	ds_load_b64 v[35:36], v88
	ds_load_b64 v[37:38], v89
	ds_load_b64 v[132:133], v90
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[33:34], v[48:49], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[35:36], v[46:47], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[37:38], v[44:45], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[132:133], v[42:43], v[124:131] neg_lo:[1,1,0]
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v132, s10, v98, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v33, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v34, v127
	v_cvt_f32_i32_e32 v38, v128
	v_cvt_f32_i32_e32 v37, v129
	v_cvt_f32_i32_e32 v35, v130
	v_cvt_f32_i32_e32 v36, v131
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v130, s10, v102, 1
	v_add_lshl_u32 v129, s10, v97, 1
	v_add_lshl_u32 v128, s10, v104, 1
	v_add_lshl_u32 v131, s10, v103, 1
	v_add_lshl_u32 v126, s10, v99, 1
	v_add_lshl_u32 v127, s10, v101, 1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s10, v117, v83
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v128, 0x80000000, v128, s5
	v_cndmask_b32_e64 v130, 0x80000000, v130, s3
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v117, s12, v73
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s12, v122, v84
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s7, s10, s11
	s_and_b32 s10, s19, s20
	s_and_b32 s11, s4, s8
	s_and_b32 s10, s4, s10
	s_and_b32 s7, s4, s7
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v118, 0x80000000, v118, s10
	v_cndmask_b32_e64 v132, 0x80000000, v132, s11
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s8, s4, s9
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v131, 0x80000000, v131, s7
	v_cndmask_b32_e64 v129, 0x80000000, v129, s8
	s_clause 0x5
	buffer_load_u16 v128, v128, s[44:47], 0 offen
	buffer_load_u16 v130, v130, s[44:47], 0 offen
	buffer_load_u16 v118, v118, s[44:47], 0 offen
	buffer_load_u16 v132, v132, s[44:47], 0 offen
	buffer_load_u16 v131, v131, s[44:47], 0 offen
	buffer_load_u16 v129, v129, s[44:47], 0 offen
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s9, s12, s14
	s_and_b32 s12, s4, s6
	s_and_b32 s9, s4, s9
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v126, 0x80000000, v126, s12
	v_cndmask_b32_e64 v127, 0x80000000, v127, s9
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v39, v125
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v125, v78, s33, 1
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v122.l, v40.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v124, v124
	v_mul_f32_e32 v38, v105, v38
	v_mul_f32_e32 v39, v105, v39
	v_mul_f32_e32 v36, v105, v36
	v_mul_f32_e32 v34, v105, v34
	v_mul_f32_e32 v124, v105, v124
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v130.h, v40.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v118.h, v40.l
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s33, s33, 16
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v129.h, 0xff80, v130.l, s3
	v_cndmask_b16 v128.h, 0xff80, v128.l, s5
	v_cndmask_b16 v128.l, 0xff80, v131.l, s7
	s_clause 0x1
	buffer_load_u16 v126, v126, s[44:47], 0 offen
	buffer_load_u16 v127, v127, s[44:47], 0 offen
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x6
	buffer_load_u16 v112, v112, s[40:43], 0 offen
	buffer_load_u16 v131, v113, s[40:43], 0 offen
	buffer_load_u16 v115, v115, s[40:43], 0 offen
	buffer_load_u16 v116, v116, s[40:43], 0 offen
	buffer_load_u16 v123, v123, s[40:43], 0 offen
	buffer_load_u16 v125, v125, s[40:43], 0 offen
	buffer_load_u16 v114, v114, s[40:43], 0 offen
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b16 v129.l, 0xff80, v129.l, s8
	v_cndmask_b16 v113.l, 0xff80, v118.l, s10
	v_mov_b16_e64 v122.h, v128.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v40.h, v129.l
	v_mov_b16_e32 v119.h, v113.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v122
	v_cmp_neq_f32_e64 s16, 0xff800000, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_neq_f32_e64 s18, 0xff800000, v119
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s10, s10, s18
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	s_waitcnt vmcnt(8)
	v_cndmask_b16 v126.h, 0xff80, v126.l, s12
	v_cndmask_b16 v126.l, 0xff80, v132.l, s11
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v113.h, 0xff80, v127.l, s9
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v127, 16, v112
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v112, v128, v129, v93
	v_perm_b32 v132, v128, v129, v94
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e64 v128.l, v40.l
	v_mov_b16_e64 v129.l, v40.l
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v122, v113, v126, v94
	ds_bpermute_b32 v119, v54, v112
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v40.h, v126.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v128
	v_cmp_neq_f32_e64 s15, 0xff800000, v129
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v128, v113, v126, v93
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v113.l, v40.l
	.loc	1 965 35                        ; attention.py:965:35
	ds_bpermute_b32 v129, v56, v132
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s5, s5, s6
	s_and_b32 s6, s7, s14
	v_cndmask_b32_e64 v112, 0, 1, s5
	s_and_b32 s7, s8, s16
	s_and_b32 s8, s3, s15
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v113
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v113, 0, 1, s6
	v_cndmask_b32_e64 v132, 0, 1, s8
	v_lshlrev_b16 v112.l, 8, v112.l
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_mov_b16_e32 v126.l, v40.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s9, s9, s17
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v40
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v133.h, v113.l, v112.l
	v_mov_b16_e64 v112.l, v132.l
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v126
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v113, 0, 1, s7
	s_and_b32 s11, s11, s3
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	ds_bpermute_b32 v128, v54, v128
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v112.l, 8, v112.l
	s_and_b32 s12, s12, s14
	.loc	1 965 35                        ; attention.py:965:35
	ds_bpermute_b32 v122, v56, v122
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v126, 0, 1, s12
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v133.l, v113.l, v112.l
	v_cndmask_b32_e64 v112, 0, 1, s9
	v_cndmask_b32_e64 v113, 0, 1, s10
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s33, s34
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v40.h, 8, v112.l
	v_mov_b16_e32 v112.l, v126.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v112.h, v113.l, v40.h
	v_cndmask_b32_e64 v113, 0, 1, s11
	v_lshlrev_b16 v40.h, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v112.l, v113.l, v40.h
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v113, v129, v119, s13
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v126, 16, v113
	v_and_b32_e32 v113, 0xffff0000, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v132, 0x3fb8aa3b, v126 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v113
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v126.h, v40.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v132, v124, v127
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v127, 16, v131
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v124.l, v40.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v131.h, v40.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v113, v39, v127
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v39, v111, s[40:43], 0 offen
	.loc	1 965 35                        ; attention.py:965:35
	v_cndmask_b32_e64 v111, v119, v129, s13
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v129, s21, v41, 1
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v127.h, v40.l
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v119, 16, v111
	v_and_b32_e32 v111, 0xffff0000, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v119, 0x3fb8aa3b, v119
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v119, v38, v39
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[38:39], null, v117, s26, v[41:42]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v39, 0x80000000, v129, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	buffer_load_b32 v117, v38, s[48:51], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[38:39], v39, s[36:39], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v37, v105, v37
	v_mul_f32_e32 v33, v105, v33
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v118.l, v117.h
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v124.h, v39.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v111, 0x3fb8aa3b, v111
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v40.h, v38.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v111, v37, v115
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_cndmask_b32_e64 v37, v122, v128, s13
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_lshlrev_b32_e32 v115, 16, v37
	v_and_b32_e32 v37, 0xffff0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v129, 0x3fb8aa3b, v115
	v_mul_f32_e32 v37, 0x3fb8aa3b, v37
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v115, v117, 0, 8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v37, v34, v114
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v114, 0xffff0000, v38
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v129, v33, v116 :: v_dual_and_b32 v38, 0xffff0000, v39
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_cndmask_b32_e64 v116, v128, v122, s13
	.loc	1 932 25 is_stmt 1              ; attention.py:932:25
	v_mul_f32_e32 v35, v105, v35
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v33.l, v117.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v33.h, 4, v117.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v39, 8, v117
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v34, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v33.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v33.h, v33.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v128, 0x3fb8aa3b, v34 :: v_dual_lshlrev_b32 v125, 16, v125
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v34.h, 0, -16, s3
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v34.l, v117.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v128, v35, v123 :: v_dual_and_b32 v35, 0xffff0000, v116
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v116, 20, v117
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v34.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v134, 0x3fb8aa3b, v35
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v35.l, v115.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v115, v39, 0, 8
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v134, v36, v125
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v36, 24, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s14, 0, v35.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v117.l, v33.l, v34.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v33.l, v33.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v35.l, v115.l
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v115, v36, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v34.h, v116.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v117, v117, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v121.l, v33.h, v33.l, s14
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v33.l, v39.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v33.h, 4, v39.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v39, v118, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s14, 0, v35.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v117, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v33.h, v33.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v35.l, v39.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v117, v40, v117
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s15, 0, v35.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v35.l, 0, -16, s3
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v120.l, v117.h
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v39.l, v34.l, v35.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v34.l, v36.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v35.l, 4, v36.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v36.l, v115.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v35.h, 0, -16, s3
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v120, 1, v120
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v34.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v39, v39, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s16, 0, v36.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v36.l, v33.l, v35.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v33.l, v33.h, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v39, v39
	v_bfe_i32 v36, v36, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v115.l, v33.h, v33.l, s14
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v33.l, v34.h, -16
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v33.h, v40.l
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v116.l, v34.h, v33.l, s15
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v33.l, 0, -16, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v34.h, v40.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v117, v117
	v_add3_u32 v117, v117, v120, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v120, v121, 0, 16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v34.l, v34.l, v33.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v33.l, v35.l, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v36, v114, v36 :: v_dual_mul_f32 v39, v124, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v33.l, v35.l, v33.l, s16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v35, v115, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v126.l, v39.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v120, v40, v120
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v130.l, v36.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v115, v33, 0, 16
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s15, v39, v39
	v_mov_b16_e32 v121.l, v120.h
	v_cmp_o_f32_e64 s14, v120, v120
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v115, v115
	v_mul_f32_e32 v35, v114, v35
	v_bfe_i32 v114, v116, 0, 16
	v_bfe_i32 v116, v34, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v121, 1, v121
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v115, v38, v115
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v118.l, v35.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v120, v120, v121, 0x7fff
	v_and_b32_e32 v121, 1, v126
	v_and_b32_e32 v118, 1, v118
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v114, v124, v114
	v_mul_f32_e32 v38, v38, v116
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_perm_b32 v116, v112, v133, v95
	v_perm_b32 v112, v112, v133, v96
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v131.l, v115.h
	v_mov_b16_e32 v127.l, v114.h
	v_mov_b16_e32 v33.l, v38.h
	.loc	1 966 25                        ; attention.py:966:25
	ds_bpermute_b32 v116, v54, v116
	ds_bpermute_b32 v112, v56, v112
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s16, v35, v35
	v_add3_u32 v35, v35, v118, 0x7fff
	v_and_b32_e32 v118, 1, v130
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v39, v39, v121, 0x7fff
	v_and_b32_e32 v121, 1, v127
	v_and_b32_e32 v122, 1, v131
	v_cmp_o_f32_e64 s17, v36, v36
	v_cmp_o_f32_e64 s20, v38, v38
	v_add3_u32 v36, v36, v118, 0x7fff
	v_add3_u32 v33, v38, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v114, v114
	v_cmp_o_f32_e64 s19, v115, v115
	v_add3_u32 v114, v114, v121, 0x7fff
	v_add3_u32 v115, v115, v122, 0x7fff
	v_cndmask_b16 v118.h, 0x7fff, v120.h, s14
	v_cndmask_b16 v118.l, 0x7fff, v117.h, s3
	v_cndmask_b16 v38.h, 0x7fff, v35.h, s16
	v_cndmask_b16 v38.l, 0x7fff, v36.h, s17
	v_cndmask_b16 v36.l, 0x7fff, v33.h, s20
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v33, v112, v116, s13
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v35.l, 0x7fff, v39.h, s15
	v_cndmask_b16 v35.h, 0x7fff, v114.h, s18
	v_cndmask_b16 v36.h, 0x7fff, v115.h, s19
	ds_store_2addr_b32 v91, v118, v38 offset1:8
	ds_store_2addr_b32 v91, v35, v36 offset0:16 offset1:24
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v35, v116, v112, s13
	v_and_b32_e32 v36, 0x100, v33
	v_and_b32_e32 v39, 1, v33
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v133.h, v40.l
	v_mov_b16_e32 v40.h, v40.l
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v38, 1, v35
	v_and_b32_e32 v115, 0x100, v35
	v_cmp_eq_u32_e64 s14, 0, v36
	v_and_b32_e32 v36, 0x1000000, v35
	v_and_b32_e32 v35, 0x10000, v35
	v_cmp_eq_u32_e64 s15, 1, v39
	v_and_b32_e32 v39, 0x1000000, v33
	v_and_b32_e32 v33, 0x10000, v33
	v_cmp_eq_u32_e64 s16, 1, v38
	v_cmp_eq_u32_e64 s17, 0, v115
	v_cmp_eq_u32_e64 s18, 0, v35
	v_cmp_eq_u32_e64 s19, 0, v36
	v_cmp_eq_u32_e64 s20, 0, v33
	v_cmp_eq_u32_e64 s21, 0, v39
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v112, 0xff800000, v132, s15
	v_cndmask_b32_e64 v113, v113, 0xff800000, s14
	v_cndmask_b32_e64 v114, 0xff800000, v119, s16
	v_cndmask_b32_e64 v115, v111, 0xff800000, s17
	v_cndmask_b32_e64 v116, v128, 0xff800000, s18
	v_cndmask_b32_e64 v117, v134, 0xff800000, s19
	v_cndmask_b32_e64 v118, v129, 0xff800000, s20
	v_cndmask_b32_e64 v119, v37, 0xff800000, s21
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v109
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v33, v116, v117
	v_max3_f32 v35, v112, v113, v118
	v_max3_f32 v36, v119, v114, v115
.Ltmp2:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	ds_load_b128 v[124:127], v92
	ds_load_b128 v[120:123], v110
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v33, v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v35, v33, s52, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v111, v109, v33, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v112, v111
	v_sub_f32_e32 v37, v119, v111
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v33, v109, v111
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v38, v118, v111
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v37, v37
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v140, v33
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v33, v115, v111
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v33, v33
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s15
	v_cndmask_b32_e64 v37, v37, 0, s21
	v_cndmask_b32_e64 v38, v38, 0, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e64 v135.l, v36.h
	v_cmp_o_f32_e64 s15, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mov_b16_e64 v133.l, v37.h
	v_cmp_o_f32_e64 s21, v37, v37
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v33, v33, 0, s17
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v39, 1, v135
	v_mov_b16_e64 v136.l, v38.h
	v_and_b32_e32 v109, 1, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v33.h
	v_add3_u32 v36, v36, v39, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v39, v117, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v37, v37, v109, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v109, v116, v111 :: v_dual_and_b32 v128, 1, v136
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v40, 1, v40
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s17, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v109, v109
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v136, v107, v107
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v33, v33, v40, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, v39, 0, s19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v109, v109, 0, s18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v138.l, v39.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v113, v111
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v139.l, v109.h
	v_cmp_o_f32_e64 s19, v39, v39
	v_cmp_o_f32_e64 s20, v109, v109
	v_and_b32_e32 v130, 1, v138
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v131, 1, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v39, v130, 0x7fff
	v_add3_u32 v40, v109, v131, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v109.h, 0x7fff, v39.h, s19
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, v35, 0, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v109.l, 0x7fff, v40.h, s20
	v_mov_b16_e32 v34.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v35, v35
	v_permlanex16_b32 v40, v109, s52, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v35, v34, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v114, v111
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v34.l, 0x7fff, v36.h, s15
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s14
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s16
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s16, v38, v38
	v_add3_u32 v38, v38, v128, 0x7fff
	v_mov_b16_e64 v137.l, v35.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s18, v35, v35
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s16
	v_cndmask_b16 v38.h, 0x7fff, v33.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v129, 1, v137
	v_permlanex16_b32 v37, v36, s52, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v35, v129, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[128:131], v110 offset:512
	ds_load_b128 v[132:135], v92 offset:512
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v38.l, 0x7fff, v35.h, s18
	v_permlanex16_b32 v35, v34, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v38, s52, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v33, v35, v34, v51
	v_perm_b32 v34, v35, v34, v52
	v_perm_b32 v35, v37, v36, v51
	v_perm_b32 v36, v37, v36, v52
	v_perm_b32 v37, v39, v38, v51
	v_perm_b32 v38, v39, v38, v52
	v_perm_b32 v39, v40, v109, v51
	v_perm_b32 v40, v40, v109, v52
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v109, 0, v140, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v107
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v109
	v_mul_f32_e32 v25, v25, v109
	v_mul_f32_e32 v26, v26, v109
	v_mul_f32_e32 v27, v27, v109
	v_mul_f32_e32 v28, v28, v109
	v_mul_f32_e32 v29, v29, v109
	v_mul_f32_e32 v30, v30, v109
	v_mul_f32_e32 v31, v31, v109
	v_mul_f32_e32 v8, v8, v109
	v_mul_f32_e32 v10, v10, v109
	v_mul_f32_e32 v12, v12, v109
	v_mul_f32_e32 v14, v14, v109
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[120:127], v[33:40], v[24:31]
	v_mov_b32_e32 v120, v108
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v108, v114, v112, s13
	v_cndmask_b32_e64 v112, v112, v114, s13
	v_cndmask_b32_e64 v114, v115, v113, s13
	v_cndmask_b32_e64 v113, v113, v115, s13
	v_cndmask_b32_e64 v115, v116, v118, s13
	v_cndmask_b32_e64 v116, v118, v116, s13
	v_cndmask_b32_e64 v118, v117, v119, s13
	v_cndmask_b32_e64 v117, v119, v117, s13
	ds_bpermute_b32 v114, v72, v114
	ds_bpermute_b32 v113, v81, v113
	ds_bpermute_b32 v115, v72, v115
	ds_bpermute_b32 v116, v81, v116
	ds_bpermute_b32 v117, v81, v117
	ds_bpermute_b32 v118, v72, v118
	ds_bpermute_b32 v108, v72, v108
	ds_bpermute_b32 v112, v81, v112
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v0, v0, v109
	v_mul_f32_e32 v16, v16, v109
	v_mul_f32_e32 v18, v18, v109
	v_mul_f32_e32 v20, v20, v109
	v_mul_f32_e32 v22, v22, v109
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[121:124], v110 offset:1024
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v109
	v_mul_f32_e32 v4, v4, v109
	v_mul_f32_e32 v11, v11, v109
	v_mul_f32_e32 v13, v13, v109
	v_mul_f32_e32 v15, v15, v109
	v_mul_f32_e32 v1, v1, v109
	v_mul_f32_e32 v3, v3, v109
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e32 v119, v113, v114, vcc_lo
	s_waitcnt lgkmcnt(5)
	v_dual_cndmask_b32 v113, v114, v113 :: v_dual_cndmask_b32 v114, v116, v115
	s_waitcnt lgkmcnt(4)
	v_dual_cndmask_b32 v115, v115, v116 :: v_dual_max_f32 v116, v117, v117
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v125, v118, v118 :: v_dual_cndmask_b32 v126, v112, v108
.Ltmp7:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e32 v127, v117, v118, vcc_lo
	v_dual_cndmask_b32 v117, v118, v117 :: v_dual_cndmask_b32 v118, v108, v112
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v116, v125, v116
	v_max3_f32 v108, v108, v112, v119
	v_max3_f32 v112, v113, v114, v115
.Ltmp9:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v109
	v_mul_f32_e32 v6, v6, v109
	v_mul_f32_e32 v7, v7, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v108, v108, v112, v116
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v112, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v112, v112 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v112, v112, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v108, v108, v112 :: v_dual_mul_f32 v23, v23, v109
.Ltmp13:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v106, v106, v108 :: v_dual_mul_f32 v17, v17, v109
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v109
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v21, v21, v109 :: v_dual_sub_f32 v112, v118, v106
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v116, v126, v106
	v_sub_f32_e32 v113, v113, v106
	v_sub_f32_e32 v118, v119, v106
	v_sub_f32_e32 v115, v115, v106
	v_sub_f32_e32 v114, v114, v106
	v_sub_f32_e32 v117, v117, v106
	v_sub_f32_e32 v119, v127, v106
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v119, v119
	.loc	1 1019 23 is_stmt 1             ; attention.py:1019:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[128:135], v[33:40], v[16:23]
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v112, 0, v112, s8
	v_cndmask_b32_e64 v116, 0, v116, s7
	v_cndmask_b32_e64 v113, 0, v113, s5
	v_cndmask_b32_e64 v118, 0, v118, s6
	v_cndmask_b32_e64 v115, 0, v115, s12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v114, 0, v114, s11
	v_cndmask_b32_e64 v117, 0, v117, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v119, 0, v119, s10
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v129, v116, v112 :: v_dual_add_f32 v130, v118, v113
	v_dual_add_f32 v131, v114, v115 :: v_dual_add_f32 v132, v119, v117
.Ltmp15:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[112:115], v110 offset:1536
	ds_load_b128 v[125:128], v92 offset:1024
	ds_load_b128 v[116:119], v92 offset:1536
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v110, v136, v108
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v108, v129, v130 :: v_dual_add_f32 v129, v131, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v130, v107, v110
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v108, v108, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v129, v130
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v130, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v109
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v129, 0, v129, s3
	v_mov_b32_e32 v109, v111
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[112:119], v[33:40], v[0:7]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v108, v108, v130
.Ltmp23:
	.loc	1 1019 23                       ; attention.py:1019:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[121:128], v[33:40], v[8:15]
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v107, v110 :: v_dual_fmac_f32 v108, v120, v129
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v108, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	s_waitcnt lgkmcnt(0)
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
.LBB0_7:                                ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	ds_bpermute_b32 v37, v54, v108
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v53
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, 0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v32, s26, v55
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 16, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s26, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s26, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s1, s26, v35
	v_cmp_gt_i32_e64 s0, s26, v34
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v44, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v40
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v47, null, v37, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v53, v44
	v_div_scale_f32 v41, vcc_lo, v25, v37, v25
	v_rcp_f32_e32 v56, v47
	v_div_scale_f32 v43, s3, v24, v37, v24
	v_fma_f32 v54, -v40, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v57, -v42, v48, 1.0
	v_div_scale_f32 v55, null, v37, v37, v28
	v_fma_f32 v59, -v44, v53, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v48, v57, v48
	v_fma_f32 v61, -v47, v56, 1.0
	v_div_scale_f32 v46, s7, v27, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v60, v41, v45
	v_dual_fmac_f32 v53, v59, v53 :: v_dual_fmac_f32 v56, v61, v56
	v_div_scale_f32 v49, s8, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v40, v60, v41
	v_div_scale_f32 v50, null, v37, v37, v29
	v_rcp_f32_e32 v57, v55
	v_dual_mul_f32 v62, v43, v48 :: v_dual_mul_f32 v65, v46, v53
	v_dual_fmac_f32 v60, v59, v45 :: v_dual_mul_f32 v59, v49, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v58, v50
	v_fma_f32 v61, -v42, v62, v43
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v40, v60, v41
	v_fma_f32 v41, -v47, v59, v49
	v_fma_f32 v64, -v55, v57, 1.0
	v_fmac_f32_e32 v62, v61, v48
	v_fma_f32 v61, -v44, v65, v46
	v_div_fmas_f32 v40, v40, v45, v60
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v63, -v50, v58, 1.0
	v_fmac_f32_e32 v57, v64, v57
	v_fma_f32 v42, -v42, v62, v43
	v_div_fixup_f32 v25, v40, v37, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v65, v61, v53 :: v_dual_fmac_f32 v58, v63, v58
	v_div_scale_f32 v54, s9, v29, v37, v29
	v_div_fmas_f32 v42, v42, v48, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v59, v41, v56 :: v_dual_mul_f32 v40, v54, v58
	v_fma_f32 v41, -v44, v65, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v42, v37, v24
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v43, s10, v28, v37, v28
	v_fma_f32 v42, -v47, v59, v49
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v41, v53, v65
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v42, v42, v56, v59
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, v25, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v24, v37, v27
	v_fma_f32 v41, -v50, v40, v54
	v_mul_f32_e32 v45, v43, v57
	v_div_fixup_f32 v26, v42, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v58
	v_fma_f32 v27, -v55, v45, v43
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v50, v40, v54
	v_fmac_f32_e32 v45, v27, v57
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v41.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v42, v58, v40
	v_fma_f32 v42, -v55, v45, v43
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v57, v45
	v_div_fixup_f32 v29, v40, v37, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v17
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_scale_f32 v42, null, v37, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v45
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v42
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v44, v39, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v42, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v39, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s7, v30, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v26, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v48, v44, v40
	v_fma_f32 v50, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_and_b32 v27, 1, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v25, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
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
	v_cmp_o_f32_e64 s8, v26, v26
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
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v42, -v46, v27, 1.0
	v_div_fmas_f32 v39, v39, v40, v48
	v_mul_f32_e32 v40, v41, v49
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s8
	v_cmp_o_f32_e64 s8, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v45, v40, v41
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s7, v16, v37, v16
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
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v49, v40
	s_mov_b32 vcc_lo, s7
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
	v_div_scale_f32 v41, s7, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v42, v30, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v17, v17
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
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v27, v27, v40, v46
	v_mul_f32_e32 v40, v30, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s7, v20, v37, v20
	v_div_fixup_f32 v18, v27, v37, v18
	v_fma_f32 v27, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v42, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v27, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v31, v31
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
	v_cndmask_b16 v17.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v47, v40
	s_mov_b32 vcc_lo, s7
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
	v_div_scale_f32 v40, s7, v22, v37, v22
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
	v_cmp_o_f32_e64 s8, v21, v21
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
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s7, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v20, v20
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
	s_mov_b32 vcc_lo, s7
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
	v_div_scale_f32 v31, s7, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v29, v22, v20
	v_rcp_f32_e32 v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s8
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
	v_cmp_o_f32_e64 s8, v9, v9
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
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v42
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s7, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v39, v27, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v40, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s7
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
	v_div_scale_f32 v28, s7, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v10, v10
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
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v40
	v_mul_f32_e32 v21, v20, v41
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s7, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v39.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v12, v12
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
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s8
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
	v_cmp_o_f32_e64 s7, v13, v13
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
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s7
	v_cmp_o_f32_e64 s7, v0, v0
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
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s7
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
	v_div_scale_f32 v30, s7, v7, v37, v7
	v_fma_f32 v41, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v39, v20
	v_fma_f32 v39, -v23, v40, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v41, v15
	v_div_scale_f32 v41, s8, v6, v37, v6
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
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v42
	v_fma_f32 v5, -v27, v39, v41
	s_mov_b32 vcc_lo, s8
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
	v_cmp_o_f32_e64 s7, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s8
	v_cndmask_b32_e64 v4, v16, v25, s13
	v_cndmask_b32_e64 v5, v25, v16, s13
	v_cndmask_b32_e64 v16, v0, v9, s13
	v_cndmask_b32_e64 v0, v9, v0, s13
	v_cndmask_b32_e64 v3, v24, v26, s13
	v_cndmask_b32_e64 v6, v19, v17, s13
	v_cndmask_b32_e64 v7, v17, v19, s13
	v_cndmask_b32_e64 v10, v8, v18, s13
	v_cndmask_b32_e64 v8, v18, v8, s13
	v_cndmask_b32_e64 v15, v14, v11, s13
	v_cndmask_b32_e64 v11, v11, v14, s13
	v_cndmask_b32_e64 v14, v12, v22, s13
	v_cndmask_b32_e64 v12, v22, v12, s13
	v_cndmask_b32_e64 v17, v2, v13, s13
	v_cndmask_b32_e64 v2, v13, v2, s13
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s13
	v_permlanex16_b32 v13, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v51
	v_perm_b32 v13, v13, v16, v52
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v51
	v_perm_b32 v1, v3, v1, v52
	v_perm_b32 v2, v5, v4, v51
	v_perm_b32 v3, v5, v4, v52
	v_perm_b32 v4, v7, v6, v51
	v_perm_b32 v5, v7, v6, v52
	v_perm_b32 v6, v8, v10, v51
	v_perm_b32 v7, v8, v10, v52
	v_perm_b32 v8, v9, v15, v51
	v_perm_b32 v9, v9, v15, v52
	v_perm_b32 v10, v11, v14, v51
	v_perm_b32 v11, v11, v14, v52
	v_perm_b32 v14, v18, v17, v51
	v_perm_b32 v15, v18, v17, v52
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
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 141
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 141
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11168
; TotalNumSgprs: 55
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 141
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
