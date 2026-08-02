	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x88
	s_load_b32 s47, s[0:1], 0x60
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v6, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x80
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s9, s2, 5
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v35
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s60, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s9, v6
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s9, s60
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v55, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v52, 16, v0
	v_and_b32_e32 v34, 15, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s10, s5, s9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[41:42], null, s47, v6, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s47, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s10, s10, 32
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s3, 0, v52
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s11, s10, s7
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s47, s8, v[41:42]
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s11, s11, 0x200
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s10, s10, 0x200
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s11, s11, 31
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s10, s10, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	buffer_load_b128 v[2:5], v1, s[12:15], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v6, 16, v34
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v36, 30, v55
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s12, s11, 31
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s13, s10, 31
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s12, s12, 27
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, s9, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s9, s6
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s13, s13, 27
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s5
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s11, s11, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v7, 4, v6
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s10, s10, s13
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s11, s11, 31
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s10, s10, 31
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v37
	v_or_b32_e32 v56, s8, v1
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s61, s9, 0x7fffffe0
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s62, s11, s10
	s_mov_b32 s9, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s61, s62
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v38, v6, v2
	ds_bpermute_b32 v39, v6, v3
	ds_bpermute_b32 v40, v6, v4
	ds_bpermute_b32 v46, v6, v5
	ds_bpermute_b32 v48, v7, v2
	ds_bpermute_b32 v49, v7, v3
	ds_bpermute_b32 v50, v7, v4
	ds_bpermute_b32 v47, v7, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s3
	v_cndmask_b32_e64 v3, 0x3276, v3, s3
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
	v_and_b32_e32 v53, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow85
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s46, s[0:1], 0x64
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
	v_mov_b32_e32 v54, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v6, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v56
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 0x3f0, v35
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_and_b32_e32 v7, 48, v35
	s_load_b32 s0, s[0:1], 0x68
	v_dual_mov_b32 v90, 0xff800000 :: v_dual_add_nc_u32 v37, s5, v37
	v_dual_mov_b32 v5, 0x5410 :: v_dual_and_b32 v54, 7, v0
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v45, v39, v49, s3
	v_cndmask_b32_e64 v49, v49, v39, s3
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v4, 24, v36
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s49, s13, 0xffff
	s_mov_b32 s48, s12
	v_mov_b32_e32 v26, v25
	buffer_load_u16 v53, v1, s[48:51], 0 offen
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v1, 56, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v43, v46, v47, s3
	v_cndmask_b32_e64 v42, v40, v50, s3
	v_cndmask_b32_e64 v44, v38, v48, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v39, v7, v1
	v_cndmask_b32_e64 v47, v47, v46, s3
	v_cndmask_b32_e64 v46, v50, v40, s3
	v_cndmask_b32_e64 v48, v48, v38, s3
	v_bfe_i32 v9, v0, 3, 1
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v35, s7, v37
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v33, 3, v54
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 1, v1
	v_lshl_or_b32 v73, v34, 5, v4
	v_cndmask_b32_e64 v34, 0x1054, v5, s3
	v_cndmask_b32_e64 v38, 0x3276, v6, s3
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v40, 48, v8
	v_lshl_or_b32 v74, v54, 9, v39
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v3, 24, v0
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v76, 0x210, v9
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s46, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[50:51], null, s46, v36, v[33:34]
	v_lshl_or_b32 v33, v34, 8, v34
	v_lshl_or_b32 v34, v38, 8, v38
	v_lshl_or_b32 v36, v54, 6, v40
	v_min_i32_e32 v75, v37, v35
	v_xor_b32_e32 v35, 0x90, v74
	v_xor_b32_e32 v72, v2, v3
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v34, 0x760076, v34
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v33, 0x540054, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v81, 0, v35
	v_mov_b32_e32 v14, v25
	v_xor_b32_e32 v76, v36, v76
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s0, 0x3fb8aa3b
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v0, s6, v37
	v_xor_b32_e32 v77, 8, v72
	v_xor_b32_e32 v78, 8, v73
	v_xor_b32_e32 v79, 16, v73
	v_xor_b32_e32 v80, 24, v73
	v_xor_b32_e32 v37, 0x120, v74
	v_xor_b32_e32 v38, 0x1b0, v74
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	v_xor_b32_e32 v36, 16, v76
	v_xor_b32_e32 v39, 32, v76
	v_xor_b32_e32 v40, 48, v76
	v_xor_b32_e32 v54, 0x420, v76
	v_xor_b32_e32 v89, 0x430, v76
	v_xor_b32_e32 v91, 0x410, v76
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v57, 2, v55
	v_or_b32_e32 v58, 4, v55
	v_or_b32_e32 v59, 6, v55
	v_or_b32_e32 v60, 8, v55
	v_or_b32_e32 v61, 10, v55
	v_or_b32_e32 v62, 12, v55
	v_or_b32_e32 v63, 14, v55
	v_or_b32_e32 v64, 16, v55
	v_or_b32_e32 v65, 18, v55
	v_or_b32_e32 v66, 20, v55
	v_or_b32_e32 v67, 22, v55
	v_or_b32_e32 v68, 24, v55
	v_or_b32_e32 v69, 26, v55
	v_or_b32_e32 v70, 28, v55
	v_or_b32_e32 v71, 30, v55
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v78, 0, v78
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v77, 0, v77
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v80, 0, v80
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v79, 0, v79
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v82, 0, v37
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v84, 0, v36
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v83, 0, v38
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v88, 0, v54
	v_dual_mov_b32 v16, v25 :: v_dual_and_b32 v51, 0x5040504, v33
	v_mov_b32_e32 v2, v25
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v85, 0, v39
	v_mov_b32_e32 v5, v25
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v87, 0, v40
	v_mov_b32_e32 v7, v25
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v89, 0, v89
	v_dual_mov_b32 v54, v25 :: v_dual_add_nc_u32 v91, 0, v91
	s_mov_b32 s36, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s63, s46, 1
	s_mul_i32 s64, s46, 3
	s_mov_b32 s65, 0x76543210
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	s_and_b32 s57, s11, 0xffff
	s_mov_b32 s52, s14
	s_mov_b32 s56, s10
	s_mov_b32 s48, s8
	s_mov_b32 s49, s9
	s_mov_b32 s53, s15
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v53
	v_mov_b32_e32 v13, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v86, s0, v35 :: v_dual_and_b32 v53, 0x7060706, v34
	v_mov_b32_e32 v1, v25
	v_dual_mov_b32 v3, v25 :: v_dual_mov_b32 v94, v86
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v92, v86
	v_mov_b32_e32 v93, v86
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s61, s60
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s36 :: v_dual_add_nc_u32 v96, 0, v72
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[112:113], null, s0, s47, v[41:42]
	v_mad_u64_u32 v[113:114], null, s0, s46, v[50:51]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s37 :: v_dual_add_nc_u32 v97, 0, v73
	v_dual_mov_b32 v35, s38 :: v_dual_mov_b32 v36, s39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v112, 0x80000000, v112, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v37, s40 :: v_dual_mov_b32 v38, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v117, v113, s46, 1
	v_add_lshl_u32 v118, v113, s63, 1
	v_add_lshl_u32 v119, v113, s64, 1
	v_lshlrev_b32_e32 v116, 1, v113
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[112:115], v112, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v39, s42 :: v_dual_mov_b32 v40, s43
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v145, 0x80000000, v117, vcc_lo
	v_dual_cndmask_b32 v117, 0x80000000, v119 :: v_dual_cndmask_b32 v144, 0x80000000, v116
	v_cndmask_b32_e32 v116, 0x80000000, v118, vcc_lo
	v_or_b32_e32 v95, s60, v55
	v_or_b32_e32 v98, s60, v57
	v_or_b32_e32 v100, s60, v59
	v_or_b32_e32 v99, s60, v58
	v_or_b32_e32 v101, s60, v60
	v_or_b32_e32 v102, s60, v61
	v_or_b32_e32 v103, s60, v62
	v_or_b32_e32 v104, s60, v63
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v95, v95, s61, 1
	v_add_lshl_u32 v98, v98, s61, 1
	v_add_lshl_u32 v100, v100, s61, 1
	v_add_lshl_u32 v99, v99, s61, 1
	v_add_lshl_u32 v101, v101, s61, 1
	v_add_lshl_u32 v102, v102, s61, 1
	v_add_lshl_u32 v103, v103, s61, 1
	v_add_lshl_u32 v104, v104, s61, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v111, s61, v71
	v_or_b32_e32 v105, s60, v64
	v_or_b32_e32 v106, s60, v65
	v_or_b32_e32 v107, s60, v66
	v_or_b32_e32 v108, s60, v67
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v111, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s1, v75, v111
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v111, s61, v68
	v_or_b32_e32 v109, s60, v68
	v_or_b32_e32 v110, s60, v69
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v105, v105, s61, 1
	v_add_lshl_u32 v106, v106, s61, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v111, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s10, v75, v111
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v111, s61, v65
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v107, v107, s61, 1
	v_add_lshl_u32 v108, v108, s61, 1
	v_add_lshl_u32 v109, v109, s61, 1
	v_add_lshl_u32 v110, v110, s61, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v111, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s16, v75, v111
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v111, s61, v62
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s0, s1, s0
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v96, v[112:113]
	ds_store_b64 v77, v[114:115]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[136:139], v97 offset1:1
	ds_load_2addr_stride64_b64 v[140:143], v78 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[132:135], v116, s[56:59], 0 offen
	buffer_load_b128 v[128:131], v117, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v95, v95, s[52:55], 0 offen
	buffer_load_u16 v98, v98, s[52:55], 0 offen
	buffer_load_u16 v100, v100, s[52:55], 0 offen
	buffer_load_u16 v99, v99, s[52:55], 0 offen
	buffer_load_u16 v101, v101, s[52:55], 0 offen
	buffer_load_u16 v102, v102, s[52:55], 0 offen
	buffer_load_u16 v103, v103, s[52:55], 0 offen
	buffer_load_u16 v104, v104, s[52:55], 0 offen
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v111, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v75, v111
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v111, s61, v59
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s0, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v111, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v75, v111
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v111, s61, v55
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v111, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v75, v111
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[136:137], v[48:49], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[138:139], v[48:49], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v79 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v80 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[140:141], v[46:47], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[142:143], v[46:47], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[33:34], v[44:45], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[35:36], v[44:45], v[120:127] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s61, v70
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[37:38], v[42:43], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[39:40], v[42:43], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v33, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s6, v75, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s61, v67
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v112
	v_cvt_f32_i32_e32 v136, v113
	v_cvt_f32_i32_e32 v137, v115
	v_cvt_f32_i32_e32 v138, v114
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[34:37], v145, s[56:59], 0 offen
	buffer_load_b128 v[112:115], v144, s[56:59], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v86, v38
	v_cvt_f32_i32_e32 v142, v117
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v140, v119
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v141, v116
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v33, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s12, v75, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s61, v64
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v139, v118
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v33, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v75, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s61, v61
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s5
	s_and_b32 s5, s10, s9
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v33, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s24, v75, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s61, v58
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s2, s5
	s_and_b32 s9, s16, s15
	s_and_b32 s15, s35, s34
	s_and_b32 s10, s24, s23
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v33, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v75, v33
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_mov_b16_e32 v33.h, 0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s2, s9
	s_and_b32 s6, s2, s6
	s_and_b32 s15, s2, s15
	s_and_b32 s16, s2, s10
	s_and_b32 s23, s18, s17
	s_and_b32 s18, s22, s21
	s_and_b32 s10, s2, s23
	s_and_b32 s18, s2, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v33.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v121, v86, v121
	v_mul_f32_e32 v123, v93, v123
	v_mul_f32_e32 v125, v92, v125
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v98, 16, v98
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v40.l, v132.l
	v_mov_b16_e64 v40.h, v128.l
	v_mov_b16_e64 v128.l, v132.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v95, v38, v95 :: v_dual_add_nc_u32 v132, 0, v76
	v_mul_f32_e32 v38, v92, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v119.h, v131.l
	v_mov_b16_e64 v131.l, v135.h
	v_mov_b16_e64 v119.l, v135.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v135, v94, v140
	v_mul_f32_e32 v98, v38, v98
	v_dual_mul_f32 v38, v94, v137 :: v_dual_mul_f32 v137, v92, v142
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v136, v86, v141 :: v_dual_lshlrev_b32 v103, 16, v103
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v97.l, v133.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v100, v38, v100
	v_mul_f32_e32 v38, v93, v138
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v97.h, v129.l
	v_mov_b16_e64 v129.l, v133.h
	v_mov_b16_e64 v117.l, v134.l
	v_mov_b16_e64 v117.h, v130.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v99, v38, v99
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v130.l, v134.h
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v33.h
	v_mov_b16_e64 v134.h, v33.h
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v101, 16, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v101, v136, v101
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v39.h, v34.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.l, v112.h
	v_mov_b16_e32 v39.l, v112.l
	v_or_b32_e32 v112, s60, v70
	v_mov_b16_e32 v96.h, v35.l
	v_mov_b16_e32 v35.l, v113.h
	v_mov_b16_e32 v96.l, v113.l
	v_or_b32_e32 v113, s60, v71
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v111, v112, s61, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v116.h, v36.l
	v_mov_b16_e32 v36.l, v114.h
	v_mov_b16_e32 v116.l, v114.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v112, v113, s61, 1
	s_clause 0x7
	buffer_load_u16 v38, v105, s[52:55], 0 offen
	buffer_load_u16 v105, v106, s[52:55], 0 offen
	buffer_load_u16 v106, v107, s[52:55], 0 offen
	buffer_load_u16 v107, v108, s[52:55], 0 offen
	buffer_load_u16 v108, v110, s[52:55], 0 offen
	buffer_load_u16 v110, v111, s[52:55], 0 offen
	buffer_load_u16 v109, v109, s[52:55], 0 offen
	buffer_load_u16 v111, v112, s[52:55], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v114, s61, v69
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v124, v94, v124
	v_mul_f32_e32 v112, v93, v139
	v_mul_f32_e32 v122, v92, v122
	v_mul_f32_e32 v138, v94, v127
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v114, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s8, v75, v114
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v114, s61, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v127, v34 :: v_dual_lshlrev_b32 v104, 16, v104
	v_mov_b16_e32 v118.l, v115.l
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s8, s7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v114, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v75, v114
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v114, s61, v63
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v118.h, v37.l
	v_mov_b16_e32 v37.l, v115.h
	v_add_nc_u32_e32 v115, 0, v74
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s14, s13
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v114, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v75, v114
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v114, s61, v60
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v126, v93, v126
	v_mul_f32_e32 v120, v86, v120
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v102, 16, v102
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s30, s29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v114, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s26, v75, v114
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v114, s61, v57
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s2, s13
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v115, v[39:40], v[127:128] offset1:8
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v114, v0
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v75, v114
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v114.h, v33.h
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v128, v35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v99, s13
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s12, s11
	s_and_b32 s14, s33, s31
	s_and_b32 s11, s26, s25
	s_and_b32 s14, s2, s14
	s_and_b32 s12, s28, s27
	s_and_b32 s1, s2, s1
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s2, s12
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v81, v[96:97], v[128:129] offset1:8
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s20, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.h, v33.h
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s2, s17
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s61, s61, 32
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v129, v36
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s61, s62
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v82, v[116:117], v[129:130] offset1:8
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v139, 16, v38
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v108, 16, v108
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v38, v131 :: v_dual_lshlrev_b32 v109, 16, v109
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v111, 16, v111
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v109, v124, v109
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v83, v[118:119], v[37:38] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v109, s5
	v_cndmask_b32_e64 v109, 0xff800000, v98, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v112, v103 :: v_dual_mul_f32 v103, v135, v104
	v_dual_mul_f32 v104, v121, v105 :: v_dual_mul_f32 v105, v122, v106
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v110, 16, v110
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v102, v137, v102
	v_dual_mul_f32 v106, v123, v107 :: v_dual_mul_f32 v107, v125, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v105, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v108, v126, v110
	v_mul_f32_e32 v110, v138, v111
	v_mul_f32_e32 v111, v120, v139
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v107, s1
	v_cndmask_b32_e64 v40, 0xff800000, v106, s7
	v_cndmask_b32_e64 v35, 0xff800000, v108, s6
	v_cndmask_b32_e64 v135, 0xff800000, v104, s9
	v_cndmask_b32_e64 v137, 0xff800000, v110, s0
	v_cndmask_b32_e64 v107, 0xff800000, v102, s16
	v_cndmask_b32_e64 v108, 0xff800000, v101, s11
	v_cndmask_b32_e64 v110, 0xff800000, v95, s15
	v_cndmask_b32_e64 v112, 0xff800000, v100, s12
	v_cndmask_b32_e64 v138, 0xff800000, v111, s10
	v_cndmask_b32_e64 v120, 0xff800000, v103, s17
	v_cndmask_b32_e64 v34, 0xff800000, v34, s18
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v135, v131, v40
	v_max3_f32 v95, v136, v39, v35
	v_max_f32_e32 v96, v110, v109
	v_max3_f32 v97, v112, v108, v107
	v_max3_f32 v111, v34, v120, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v36, v36, v95, v137
	v_max3_f32 v116, v96, v115, v97
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[95:98], v132
	ds_load_b128 v[99:102], v84
	ds_load_b128 v[103:106], v84 offset:2048
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v116, v111, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, s65, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v36, v90, v36, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v109, v36
	v_sub_f32_e32 v38, v110, v36
	v_sub_f32_e32 v110, v112, v36
	v_sub_f32_e32 v109, v115, v36
	v_sub_f32_e32 v107, v107, v36
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v108, v108, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v107, v107
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[115:118], v132 offset:1024
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v36
	v_sub_f32_e32 v39, v39, v36
	v_sub_f32_e32 v40, v40, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s14
	v_cndmask_b32_e64 v140, 0, v110, s12
	v_cndmask_b32_e64 v139, 0, v109, s13
	v_cndmask_b32_e64 v142, 0, v107, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.l, v37.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v108, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v37, v37
	v_mov_b16_e64 v114.l, v139.h
	v_cmp_o_f32_e64 s13, v140, v140
	v_and_b32_e32 v107, 1, v33
	v_mov_b16_e64 v33.l, v140.h
	v_mov_b16_e64 v133.l, v141.h
	v_and_b32_e32 v109, 1, v114
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v114, v90, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v107, v37, v107, 0x7fff
	v_and_b32_e32 v111, 1, v33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v33.l, v142.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v114, v114
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.h, 0x7fff, v107.h, s11
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v90
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v139, v139
	v_and_b32_e32 v107, 1, v33
	v_cmp_o_f32_e64 s16, v141, v141
	v_add3_u32 v109, v139, v109, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v142, v142
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v143, 0, v114, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v110, 1, v133
	v_add3_u32 v107, v142, v107, 0x7fff
	v_mov_b16_e32 v113.l, v38.h
	v_cmp_o_f32_e64 s12, v38, v38
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v143
	v_mul_f32_e32 v29, v29, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v110, v141, v110, 0x7fff
	v_and_b32_e32 v108, 1, v113
	v_cndmask_b16 v110.l, 0x7fff, v109.h, s14
	v_cndmask_b16 v113.h, 0x7fff, v107.h, s15
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v34, v34, v36 :: v_dual_mul_f32 v31, v31, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v108, v38, v108, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v110.h, s16
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.l, 0x7fff, v108.h, s12
	v_add3_u32 v108, v140, v111, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v143
	v_dual_mul_f32 v28, v28, v143 :: v_dual_add_f32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v109, v112, s65, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v110.h, 0x7fff, v108.h, s13
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v143
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v107, v109, v112, v51
	v_permlanex16_b32 v111, v110, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v108, v109, v112, v53
	v_permlanex16_b32 v112, v113, s65, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v134.l, v34.h
	v_cmp_o_f32_e64 s12, v34, v34
	v_perm_b32 v109, v111, v110, v51
	v_perm_b32 v110, v111, v110, v53
	v_perm_b32 v111, v112, v113, v51
	v_perm_b32 v112, v112, v113, v53
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v113, v120, v36 :: v_dual_and_b32 v90, 1, v134
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v143
	v_mul_f32_e32 v19, v19, v143
	v_mul_f32_e32 v20, v20, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v90, v34, v90, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v21, v21, v143 :: v_dual_sub_f32 v38, v138, v36
	v_mul_f32_e32 v22, v22, v143
	v_mul_f32_e32 v23, v23, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v90.l, 0x7fff, v90.h, s12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s6
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v143
	v_mul_f32_e32 v9, v9, v143
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v113, s17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v143
	v_mul_f32_e32 v11, v11, v143
	v_mul_f32_e32 v12, v12, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v33.l, v133.h
	v_cmp_o_f32_e64 s11, v133, v133
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v143
	v_mul_f32_e32 v14, v14, v143
	v_mul_f32_e32 v15, v15, v143
	v_dual_mul_f32 v16, v16, v143 :: v_dual_and_b32 v113, 1, v33
	v_dual_mul_f32 v1, v1, v143 :: v_dual_add_f32 v34, v34, v133
	v_mul_f32_e32 v2, v2, v143
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v133, v113, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v143
	v_mul_f32_e32 v6, v6, v143
	v_mul_f32_e32 v8, v8, v143
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v90.h, 0x7fff, v113.h, s11
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v35, v35
	v_permlanex16_b32 v114, v90, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v113, v114, v90, v51
	v_perm_b32 v114, v114, v90, v53
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v90, v135, v36 :: v_dual_add_f32 v135, v141, v142
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v143
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s1
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[95:102], v[107:114], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[99:102], v89
	ds_load_b128 v[95:98], v88
	ds_load_b128 v[119:122], v88 offset:2048
	ds_load_b128 v[123:126], v89 offset:2048
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v135, v34
.Ltmp7:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[95:102], v[107:114], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[99:102], v132 offset:2048
	ds_load_b128 v[95:98], v132 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[99:106], v[107:114], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[103:106], v85
	v_mov_b32_e32 v132, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v54.h, v33.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v143
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[119:126], v[107:114], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v131, v36
	v_sub_f32_e32 v113, v136, v36
	v_sub_f32_e32 v114, v137, v36
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v131, v90
	v_mov_b32_e32 v90, v36
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v114, v114
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v38, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v111.h, v33.h
	v_mov_b16_e32 v111.l, v35.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[123:126], v85 offset:2048
	ds_load_b128 v[107:110], v87
	ds_load_b128 v[127:130], v87 offset:2048
	ds_load_b128 v[119:122], v91
	ds_load_b128 v[99:102], v91 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v131, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v54.l, v36.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s8
	v_cndmask_b32_e64 v113, 0, v113, s5
	v_cndmask_b32_e64 v114, 0, v114, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v131, v139, v140 :: v_dual_and_b32 v54, 1, v54
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v112.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v144.l, v113.h
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v113, v39
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.l, v38.h
	v_cmp_o_f32_e64 s0, v36, v36
	v_and_b32_e32 v134, 1, v134
	v_and_b32_e32 v135, 1, v144
	v_cmp_o_f32_e64 s1, v112, v112
	v_cmp_o_f32_e64 s5, v113, v113
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v36, v38
	v_add_f32_e32 v136, v112, v40
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v36, v54, 0x7fff
	v_add3_u32 v54, v112, v134, 0x7fff
	v_add3_u32 v112, v113, v135, 0x7fff
	v_and_b32_e32 v113, 1, v33
	v_mov_b16_e32 v33.l, v40.h
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v131
	v_add_f32_e32 v131, v35, v114
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v111, 1, v111
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v133, v136
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.l, 0x7fff, v54.h, s1
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v37, v34
	v_add_f32_e32 v131, v137, v131
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v40, v40
	v_add3_u32 v35, v35, v111, 0x7fff
	v_cmp_o_f32_e64 s9, v39, v39
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v133, v131
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v114, v114
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s0
	v_cndmask_b16 v111.l, 0x7fff, v112.h, s5
	v_cndmask_b16 v112.l, 0x7fff, v35.h, s6
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v34, s65, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v54, v34, v37
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v33
	v_mov_b16_e32 v33.l, v39.h
	v_add3_u32 v37, v38, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v54, v132, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v40, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v38, 1, v33
	v_mov_b16_e32 v33.l, v114.h
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v36.h, 0x7fff, v34.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v39, v38, 0x7fff
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v37, v35, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v36, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v111.h, 0x7fff, v34.h, s9
	v_add3_u32 v38, v114, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v33, v37, v35, v51
	v_perm_b32 v34, v37, v35, v53
	v_perm_b32 v35, v39, v36, v51
	v_perm_b32 v36, v39, v36, v53
	v_cndmask_b16 v112.h, 0x7fff, v38.h, s10
	v_permlanex16_b32 v38, v111, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v40, v112, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v111, v51
	v_perm_b32 v38, v38, v111, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v40, v112, v51
	v_perm_b32 v40, v40, v112, v53
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[103:110], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[115:122], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[123:130], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[95:102], v[33:40], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v56
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v54, v54, v25
	v_div_scale_f32 v34, null, v54, v54, v26
	v_div_scale_f32 v35, null, v54, v54, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, vcc_lo, v25, v54, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v54, v26
	v_div_scale_f32 v43, null, v54, v54, v28
	v_div_scale_f32 v49, s4, v28, v54, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s46, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s45, s45, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v54, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s47, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v54, v54, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v54, v54, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v54, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v54, v26
	v_div_scale_f32 v34, s5, v29, v54, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v54, v54, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v54, v54, v31
	v_fma_f32 v55, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v54
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
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v43, s1, v30, v54, v30
	v_div_fixup_f32 v26, v26, v54, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v54, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v54, v54, v17
	v_div_scale_f32 v36, s4, v31, v54, v31
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
	v_div_scale_f32 v46, s6, v32, v54, v32
	v_div_scale_f32 v43, null, v54, v54, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v54, v17
	v_div_fixup_f32 v28, v28, v54, v29
	v_div_fixup_f32 v29, v34, v54, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v54, v54, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v54, v54, v20
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s4, v18, v54, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v54, v31
	v_div_fixup_f32 v31, v35, v54, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s5, v19, v54, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v54, v54, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v54, v20
	v_div_scale_f32 v47, null, v54, v54, v22
	v_div_fixup_f32 v17, v32, v54, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s4, v21, v54, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v54, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v54, v54, v23
	s_mov_b32 vcc_lo, s5
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s6, v22, v54, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v54, v54, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v54, v19
	v_div_fixup_f32 v20, v34, v54, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v54, v23
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v54, v54, v9
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s4, v24, v54, v24
	v_div_scale_f32 v46, null, v54, v54, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v54, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v54, v54, v11
	v_div_fixup_f32 v21, v32, v54, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v54, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s5, v9, v54, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v54, v54, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s6, v11, v54, v11
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v54, v23
	v_div_fixup_f32 v24, v36, v54, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v54, v54, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s4, v12, v54, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v54, v54, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v54, v13
	v_div_fixup_f32 v9, v32, v54, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v54, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v54, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v54, v54, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s5, v14, v54, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v54, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v54, v54, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v54, v54, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v54, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v54, v54, v2
	v_div_fixup_f32 v13, v32, v54, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s4, v16, v54, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v54, v54, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s5, v1, v54, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v55, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v54, v2
	v_div_fixup_f32 v14, v35, v54, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v55, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v55, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v54, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v54, v54, v4
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v34, -v34, v55, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v54, v15
	v_div_fmas_f32 v34, v34, v37, v55
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v16, v32, v54, v16
	v_div_fixup_f32 v1, v34, v54, v1
	v_div_scale_f32 v34, null, v54, v54, v5
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v54, v54, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v54, v54, v6
	v_div_fixup_f32 v2, v37, v54, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v54, v54, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v54, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v54, v3
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
	v_div_scale_f32 v32, s1, v5, v54, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s4, v6, v54, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v54, v7
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v47, v42
	v_mul_f32_e32 v55, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	v_mul_f32_e32 v56, v48, v41
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v54, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v55, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v56, v48
	v_mul_f32_e32 v57, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v55, v40, v39
	v_fma_f32 v32, -v34, v49, v32
	v_fmac_f32_e32 v56, v47, v41
	v_fma_f32 v34, -v44, v57, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v55, v45
	v_div_fmas_f32 v32, v32, v36, v49
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v57, v34, v46
	v_fma_f32 v34, -v37, v56, v48
	v_div_fmas_f32 v35, v35, v39, v55
	v_div_fixup_f32 v4, v38, v54, v4
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
	v_fma_f32 v36, -v44, v57, v50
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
	v_div_fixup_f32 v5, v32, v54, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v54, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v54, v7
	v_div_fixup_f32 v8, v36, v54, v8
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
	v_lshrrev_b32_e32 v32, 1, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v27, v0, s3
	v_cndmask_b32_e64 v0, v0, v27, s3
	v_cndmask_b32_e64 v6, v17, v25, s3
	v_cndmask_b32_e64 v7, v25, v17, s3
	v_cndmask_b32_e64 v13, v28, v20, s3
	v_cndmask_b32_e64 v15, v18, v19, s3
	v_cndmask_b32_e64 v16, v12, v9, s3
	v_cndmask_b32_e64 v9, v9, v12, s3
	v_cndmask_b32_e64 v12, v11, v10, s3
	v_cndmask_b32_e64 v10, v10, v11, s3
	v_cndmask_b32_e64 v17, v3, v1, s3
	v_cndmask_b32_e64 v1, v1, v3, s3
	v_cndmask_b32_e64 v14, v19, v18, s3
	v_cndmask_b32_e64 v18, v4, v2, s3
	v_cndmask_b32_e64 v2, v2, v4, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v20, v28, s3
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
	v_cmp_gt_i32_e32 vcc_lo, s46, v34
	v_cmp_gt_i32_e64 s4, s46, v32
	v_cmp_gt_i32_e64 s0, s46, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v5, v51
	v_perm_b32 v1, v3, v5, v53
	v_perm_b32 v2, v4, v6, v51
	v_perm_b32 v3, v4, v6, v53
	v_perm_b32 v4, v7, v8, v51
	v_perm_b32 v5, v7, v8, v53
	v_perm_b32 v6, v11, v14, v51
	v_perm_b32 v7, v11, v14, v53
	v_perm_b32 v10, v13, v12, v51
	v_perm_b32 v11, v13, v12, v53
	v_perm_b32 v12, v15, v17, v51
	v_perm_b32 v13, v15, v17, v53
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v51
	v_perm_b32 v9, v9, v16, v53
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s46, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v51
	v_perm_b32 v15, v19, v18, v53
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v33, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s4
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
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[44:47], 0 offen
	buffer_store_b128 v[4:7], v17, s[44:47], 0 offen
	buffer_store_b128 v[8:11], v18, s[44:47], 0 offen
	buffer_store_b128 v[12:15], v19, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 146
		.amdhsa_next_free_sgpr 66
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 146
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9964
; TotalNumSgprs: 68
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 146
; Occupancy: 9
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
	.short	883                             ; DW_AT_call_line
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
	.short	887                             ; DW_AT_call_line
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
