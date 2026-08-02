	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s6, s[0:1], 0x60
	s_load_b32 s7, s[0:1], 0x88
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s8, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s5, s3, 9
	s_mov_b32 s15, 0x31027000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s8, v34
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v41, 16, v35
	.loc	1 773 26 is_stmt 0              ; attention.py:773:26
	s_add_i32 s9, s8, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v62, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v42, 15, v0
	v_and_b32_e32 v57, 16, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s6, v34
	s_mul_i32 s2, s6, s9
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s6, v41
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s16, s8, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s19, 0, v57
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s16, s16, 32
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v41, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s16, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v5, v36, 30, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v5, 2, v5
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	v_xor_b32_e32 v6, 4, v5
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v37, v5, v1
	ds_bpermute_b32 v38, v5, v2
	ds_bpermute_b32 v39, v5, v3
	ds_bpermute_b32 v43, v5, v4
	ds_bpermute_b32 v40, v6, v1
	ds_bpermute_b32 v44, v6, v2
	ds_bpermute_b32 v45, v6, v3
	ds_bpermute_b32 v46, v6, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v34, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v47, s8, v1
	v_or_b32_e32 v61, s9, v1
	s_mov_b32 s8, 0
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v47
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s9, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s19
	v_cndmask_b32_e64 v3, 0x3276, v3, s19
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
	v_and_b32_e32 v58, 0x5040504, v2
	v_and_b32_e32 v59, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow89
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x38
	s_load_b32 s30, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
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
	v_mov_b32_e32 v60, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v6, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v61
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_dual_mov_b32 v5, 0x5410 :: v_dual_and_b32 v4, 24, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s20, 0
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v50, v43, v46, s19
	v_cndmask_b32_e64 v54, v46, v43, s19
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 0x3f0, v35
	v_and_b32_e32 v7, 48, v35
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b32 s27, s20
	buffer_load_u16 v48, v1, s[36:39], 0 offen
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v63, s7, v47
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v47, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 56, v0
	v_and_b32_e32 v3, 24, v0
	v_cndmask_b32_e64 v46, 0x1054, v5, s19
	s_load_b32 s0, s[0:1], 0x68
	v_dual_mov_b32 v91, 0xff800000 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v49, v39, v45, s19
	v_cndmask_b32_e64 v52, v38, v44, s19
	v_cndmask_b32_e64 v51, v37, v40, s19
	v_cndmask_b32_e64 v53, v45, v39, s19
	v_cndmask_b32_e64 v56, v44, v38, s19
	v_cndmask_b32_e64 v55, v40, v37, s19
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v10, s5, v34
	v_mov_b32_e32 v40, s27
	v_bfe_i32 v0, v0, 3, 1
	v_mov_b32_e32 v38, s25
	v_mov_b32_e32 v36, s23
	v_dual_mov_b32 v34, s21 :: v_dual_lshlrev_b32 v43, 3, v47
	v_mov_b32_e32 v18, v25
	v_xor_b32_e32 v45, v2, v3
	v_lshl_or_b32 v42, v42, 5, v4
	v_cndmask_b32_e64 v58, 0x3276, v6, s19
	v_mov_b32_e32 v26, v25
	v_xor_b32_e32 v59, v7, v1
	v_lshl_or_b32 v46, v46, 8, v46
	v_dual_mov_b32 v37, s24 :: v_dual_and_b32 v60, 48, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 1, v1
	v_mov_b32_e32 v39, s26
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v69, 0x210, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[0:1], null, s6, v10, v[41:42]
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v68, 0, v42
	v_mov_b32_e32 v31, v25
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s30, v43
	v_xor_b32_e32 v41, 8, v45
	v_xor_b32_e32 v43, 8, v42
	v_xor_b32_e32 v72, 16, v42
	v_xor_b32_e32 v73, 24, v42
	v_lshl_or_b32 v58, v58, 8, v58
	v_lshl_or_b32 v66, v47, 9, v59
	v_and_b32_e32 v42, 0x540054, v46
	v_dual_mov_b32 v22, v25 :: v_dual_lshlrev_b32 v65, 4, v47
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v44, s5, v44
	v_lshl_or_b32 v47, v47, 6, v60
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v70, 0, v41
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v67, 0, v45
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v45, 0x760076, v58
	v_xor_b32_e32 v58, 0x120, v66
	v_lshl_or_b32 v41, v42, 4, v42
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v60, 2, v44
	v_mov_b32_e32 v12, v25
	v_xor_b32_e32 v69, v47, v69
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v47, 3, v44
	v_mov_b32_e32 v13, v25
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v75, 0, v58
	v_mov_b32_e32 v6, v25
	v_and_b32_e32 v58, 0x5040504, v41
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s0, s0, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v44, s30, v44
	v_mul_lo_u32 v47, s30, v47
	v_mul_lo_u32 v60, s30, v60
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s1, s16, 0x200
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v9, 1, v62
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s1, s1, 31
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v71, 0, v43
	v_xor_b32_e32 v46, 0x90, v66
	v_xor_b32_e32 v59, 0x1b0, v66
	v_lshl_or_b32 v42, v45, 4, v45
	v_xor_b32_e32 v43, 16, v69
	v_xor_b32_e32 v45, 32, v69
	v_xor_b32_e32 v81, 48, v69
	v_xor_b32_e32 v82, 0x420, v69
	v_xor_b32_e32 v84, 0x430, v69
	v_xor_b32_e32 v85, 0x410, v69
	.loc	1 811 34 is_stmt 0              ; attention.py:811:34
	s_ashr_i32 s7, s1, 31
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshl_or_b32 v64, s3, 10, v9
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s3, s7, 27
	v_dual_mov_b32 v35, s22 :: v_dual_mov_b32 v30, v25
	v_dual_mov_b32 v33, s20 :: v_dual_mov_b32 v32, v25
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v72, 0, v72
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v74, 0, v46
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v76, 0, v59
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v78, 1, v44
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v80, 0, v45
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v73, 0, v73
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v82, 0, v82
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v84, 0, v84
	v_dual_mov_b32 v4, v25 :: v_dual_and_b32 v59, 0x7060706, v42
	v_dual_mov_b32 v5, v25 :: v_dual_lshlrev_b32 v86, 1, v47
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v79, 0, v43
	.loc	1 818 13                        ; attention.py:818:13
	v_add_lshl_u32 v77, v44, s30, 1
	v_add_nc_u32_e32 v85, 0, v85
	v_lshlrev_b32_e32 v87, 1, v60
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s21, s1, s3
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s31, s30, 6
	s_lshl_b32 s33, s6, 5
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s21, s21, 31
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s24, s10
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s41, s15
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	s_mov_b32 s22, 0x76543210
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v60, v25 :: v_dual_lshlrev_b32 v41, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v83, s0, v41
	v_mov_b32_e32 v7, v25
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v90, v83 :: v_dual_add_nc_u32 v81, 0, v81
	v_mov_b32_e32 v88, v83
	v_mov_b32_e32 v89, v83
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v41, 0x80000000, v0, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v43, v77, v65
	v_add_nc_u32_e32 v44, v87, v65
	v_add_nc_u32_e32 v42, v78, v65
	v_add_nc_u32_e32 v45, v86, v65
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[94:97], v41, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v41, 0x80000000, v42 :: v_dual_cndmask_b32 v42, 0x80000000, v43
	v_cndmask_b32_e32 v43, 0x80000000, v44, vcc_lo
	v_dual_cndmask_b32 v44, 0x80000000, v45 :: v_dual_add_nc_u32 v135, 0, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v106, s20, v62
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v92.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s20, s20, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v67, v[94:95]
	ds_store_b64 v70, v[96:97]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[102:105], v43, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v44, s[24:27], 0 offen
	buffer_load_b128 v[111:114], v42, s[24:27], 0 offen
	buffer_load_b128 v[115:118], v41, s[24:27], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[119:122], v68 offset1:1
	ds_load_2addr_stride64_b64 v[123:126], v71 offset1:1
	ds_load_2addr_stride64_b64 v[127:130], v72 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v73 offset1:1
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v45, 30, v106
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v46, 28, v106
	v_add_nc_u32_e32 v47, 26, v106
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x4
	buffer_load_u16 v138, v64, s[40:43], 0 offen
	buffer_load_u16 v139, v64, s[40:43], 0 offen offset:4
	buffer_load_u16 v140, v64, s[40:43], 0 offen offset:8
	buffer_load_u16 v141, v64, s[40:43], 0 offen offset:12
	buffer_load_u16 v142, v64, s[40:43], 0 offen offset:16
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v65, s31, v65
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s0, v45, v63
	v_cmp_le_i32_e64 s3, v46, v63
	v_cmp_le_i32_e64 s1, v47, v63
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v0, s33, v0
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s0, s2, s0
	s_and_b32 s1, s2, s1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[121:122], v[55:56], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[125:126], v[53:54], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[129:130], v[51:52], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[133:134], v[49:50], v[94:101] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v48, 24, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_mul_f32_e32 v95, v83, v95
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v48, v63
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[119:120], v[55:56], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v119, v64, s[40:43], 0 offen offset:20
	buffer_load_u16 v120, v64, s[40:43], 0 offen offset:24
	buffer_load_u16 v121, v64, s[40:43], 0 offen offset:28
	buffer_load_u16 v122, v64, s[40:43], 0 offen offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v94, v83, v94
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[123:124], v[53:54], v[41:48] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_mul_f32_e32 v96, v88, v96
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[51:52], v[41:48] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v97, v89, v97 :: v_dual_mul_f32 v98, v90, v98
	v_dual_mul_f32 v99, v88, v99 :: v_dual_mul_f32 v100, v89, v100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[49:50], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v131, v64, s[40:43], 0 offen offset:36
	buffer_load_u16 v132, v64, s[40:43], 0 offen offset:40
	buffer_load_u16 v133, v64, s[40:43], 0 offen offset:44
	buffer_load_u16 v134, v64, s[40:43], 0 offen offset:48
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v101, v90, v101
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s2, s5
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v123, v41
	v_cvt_f32_i32_e32 v126, v43
	v_cvt_f32_i32_e32 v129, v45
	v_cvt_f32_i32_e32 v124, v42
	v_cvt_f32_i32_e32 v125, v44
	v_cvt_f32_i32_e32 v127, v47
	v_cvt_f32_i32_e32 v128, v48
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v93, 0, v69
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v130, v46
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v42.l, v102.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e32 v42.h, v107.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v41.h, v111.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v111.l, v115.h
	v_mov_b16_e32 v41.l, v115.l
	v_mov_b16_e32 v43.h, v112.l
	v_mov_b16_e32 v112.l, v116.h
	v_mov_b16_e32 v43.l, v116.l
	v_mov_b16_e32 v45.h, v113.l
	v_mov_b16_e32 v113.l, v117.h
	v_mov_b16_e32 v45.l, v117.l
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v115, v64, s[40:43], 0 offen offset:52
	buffer_load_u16 v116, v64, s[40:43], 0 offen offset:56
	buffer_load_u16 v117, v64, s[40:43], 0 offen offset:60
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v47.l, v118.l
	v_mov_b16_e32 v47.h, v114.l
	v_mov_b16_e32 v114.l, v118.h
	v_mov_b16_e32 v107.l, v102.h
	v_mov_b16_e32 v44.l, v103.l
	v_mov_b16_e32 v44.h, v108.l
	v_mov_b16_e32 v108.l, v103.h
	v_mov_b16_e32 v46.l, v104.l
	v_mov_b16_e32 v46.h, v109.l
	v_mov_b16_e32 v109.l, v104.h
	v_mov_b16_e32 v48.h, v110.l
	v_mov_b16_e32 v110.l, v105.h
	v_mov_b16_e32 v48.l, v105.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v64, 64, v64
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v118, 4, v106
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v122, 16, v122
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v118, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v118, v83, v123 :: v_dual_mul_f32 v123, v88, v124
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v136, 22, v106
	v_add_nc_u32_e32 v137, 20, v106
	v_add_nc_u32_e32 v102, 18, v106
	v_add_nc_u32_e32 v103, 16, v106
	v_add_nc_u32_e32 v104, 14, v106
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v124, v90, v125 :: v_dual_mul_f32 v125, v89, v126
	v_dual_mul_f32 v126, v89, v127 :: v_dual_mul_f32 v127, v90, v128
	v_mul_f32_e32 v128, v83, v129
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v133, 16, v133
	v_lshlrev_b32_e32 v132, 16, v132
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v136, v63
	v_cmp_le_i32_e64 s8, v137, v63
	v_cmp_le_i32_e64 s9, v102, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v102, 12, v106
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v103, v63
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v103, 10, v106
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v104, v63
	v_cmp_le_i32_e64 s7, v106, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v129, v88, v130 :: v_dual_lshlrev_b32 v136, 16, v139
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v104, 8, v106
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v137, 16, v141
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v105, 6, v106
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v97, v97, v133
	v_dual_mul_f32 v96, v96, v132 :: v_dual_lshlrev_b32 v131, 16, v131
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v130, 16, v138
	v_lshlrev_b32_e32 v138, 16, v140
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v106, 2, v106
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v120, 16, v120
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s2, s7
	s_and_b32 s7, s2, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v119, v129, v119
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v106, v63
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v106, v111
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v111, v123, v136
	v_mul_f32_e32 v123, v125, v138
	v_dual_mul_f32 v120, v126, v120 :: v_dual_lshlrev_b32 v139, 16, v142
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v103, v63
	v_cmp_le_i32_e64 s12, v104, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v125, v95, v131
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s6, s2, s3
	s_and_b32 s12, s2, s12
	s_and_b32 s18, s2, s18
	s_and_b32 s15, s2, s15
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v121, v127, v121
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v135, v[41:42], v[106:107] offset1:8
	v_mov_b32_e32 v107, v112
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v97, s7
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s2, s17
	s_and_b32 s13, s2, s13
	s_and_b32 s10, s2, s10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v123, s17
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v74, v[43:44], v[107:108] offset1:8
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v92.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v91
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v104.h, v92.h
	v_mov_b16_e64 v142.h, v92.h
	v_mov_b16_e64 v141.h, v92.h
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v117, 16, v117
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v101, v101, v117 :: v_dual_lshlrev_b32 v116, 16, v116
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v140, 16, v115
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v115, v110 :: v_dual_lshlrev_b32 v134, 16, v134
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v110, v118, v130
	v_mul_f32_e32 v118, v124, v137
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v105, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v124, v128, v139 :: v_dual_mul_f32 v95, v99, v140
	v_dual_mul_f32 v98, v98, v134 :: v_dual_mul_f32 v99, v100, v116
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v102, v63
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s14, s2, s14
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v116, v94, v122
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v95, s1
	v_cndmask_b32_e64 v94, 0xff800000, v99, s6
	v_cndmask_b32_e64 v99, 0xff800000, v96, s8
	v_cndmask_b32_e64 v100, 0xff800000, v125, s9
	v_cndmask_b32_e64 v98, 0xff800000, v98, s5
	v_cndmask_b32_e64 v117, 0xff800000, v119, s15
	v_cndmask_b32_e64 v119, 0xff800000, v124, s12
	v_cndmask_b32_e64 v122, 0xff800000, v111, s18
	v_cndmask_b32_e64 v124, 0xff800000, v110, s11
	v_cndmask_b32_e64 v118, 0xff800000, v118, s14
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s2, s16
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v101, s0
	v_cndmask_b32_e64 v101, 0xff800000, v116, s10
	v_cndmask_b32_e64 v116, 0xff800000, v121, s13
	v_cndmask_b32_e64 v120, 0xff800000, v120, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v108, v113 :: v_dual_max_f32 v43, v124, v122
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v100, v99, v97
	v_max3_f32 v42, v98, v95, v94
	v_max3_f32 v44, v118, v119, v117
	v_max3_f32 v121, v120, v116, v101
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v75, v[45:46], v[108:109] offset1:8
	ds_store_2addr_b64 v76, v[47:48], v[114:115] offset1:8
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v102.h, v92.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v114, v41, v42, v96
	v_max3_f32 v115, v43, v123, v44
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v105.h, v92.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v79
	ds_load_b128 v[106:109], v79 offset:2048
	ds_load_b128 v[41:44], v93
	ds_load_b128 v[110:113], v93 offset:1024
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v114, v115, v121, v114
	v_mov_b32_e32 v140, v60
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v60.h, v92.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s20, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v115, v114, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v130, v91, v114, v115
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v122, v130
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v122, v91, v130
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v100, v130
	v_sub_f32_e32 v99, v99, v130
	v_sub_f32_e32 v97, v97, v130
	v_sub_f32_e32 v98, v98, v130
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v122, v122
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v95, v95, v130
	v_sub_f32_e32 v94, v94, v130
	v_sub_f32_e32 v96, v96, v130
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v94, v94
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v139, 0, v122, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v124, v130
	v_sub_f32_e32 v118, v118, v130
	v_sub_f32_e32 v120, v120, v130
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v119, v119, v130 :: v_dual_mul_f32 v30, v30, v139
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v121, v123, v130 :: v_dual_mul_f32 v28, v28, v139
	v_dual_sub_f32 v117, v117, v130 :: v_dual_mul_f32 v32, v32, v139
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v139
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v115, s11
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v114, s18
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v121, v121
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v102.l, v132.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.l, v131.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v116, v130
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v118, s14
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v17, v17, v139 :: v_dual_and_b32 v102, 1, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v91, 1, v92
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v120, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v131, v131
	v_cmp_o_f32_e64 s11, v132, v132
	v_add3_u32 v91, v131, v91, 0x7fff
	v_add3_u32 v102, v132, v102, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v119, s12
	v_cndmask_b32_e64 v133, 0, v121, s17
	v_cndmask_b32_e64 v136, 0, v117, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v105.l, v137.h
	v_mov_b16_e64 v92.l, v134.h
	v_cndmask_b16 v91.h, 0x7fff, v91.h, s3
	v_cndmask_b16 v91.l, 0x7fff, v102.h, s11
	v_mov_b16_e64 v104.l, v135.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v116, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v103.l, v133.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v139 :: v_dual_and_b32 v105, 1, v105
	v_dual_mul_f32 v21, v21, v139 :: v_dual_and_b32 v116, 1, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.l, v136.h
	v_permlanex16_b32 v102, v91, s22, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v19, v19, v139 :: v_dual_and_b32 v104, 1, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v137, v137
	v_and_b32_e32 v103, 1, v103
	v_add3_u32 v105, v137, v105, 0x7fff
	v_perm_b32 v114, v102, v91, v58
	v_perm_b32 v115, v102, v91, v59
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v20, v20, v139 :: v_dual_and_b32 v91, 1, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.l, v138.h
	v_add3_u32 v104, v135, v104, 0x7fff
	v_cmp_o_f32_e64 s12, v134, v134
	v_cmp_o_f32_e64 s13, v133, v133
	v_add3_u32 v103, v133, v103, 0x7fff
	v_add3_u32 v102, v134, v116, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v105.h, s17
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v22, v22, v139 :: v_dual_and_b32 v105, 1, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v136, v136
	v_cmp_o_f32_e64 s15, v135, v135
	v_cmp_o_f32_e64 s16, v138, v138
	v_cndmask_b16 v102.l, 0x7fff, v103.h, s13
	v_cndmask_b16 v102.h, 0x7fff, v102.h, s12
	v_add3_u32 v91, v136, v91, 0x7fff
	v_add3_u32 v105, v138, v105, 0x7fff
	v_cndmask_b16 v103.l, 0x7fff, v104.h, s15
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v117, v102, s22, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v103.h, 0x7fff, v91.h, s14
	v_cndmask_b16 v104.h, 0x7fff, v105.h, s16
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v139
	v_mul_f32_e32 v12, v12, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v116, v117, v102, v58
	v_permlanex16_b32 v91, v103, s22, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v117, v117, v102, v59
	v_permlanex16_b32 v102, v104, s22, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v139
	v_mul_f32_e32 v14, v14, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v118, v91, v103, v58
	v_perm_b32 v119, v91, v103, v59
	v_perm_b32 v120, v102, v104, v58
	v_perm_b32 v121, v102, v104, v59
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v139
	v_mul_f32_e32 v16, v16, v139
	v_mul_f32_e32 v1, v1, v139
	v_mul_f32_e32 v3, v3, v139
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[114:121], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[45:48], v84
	ds_load_b128 v[41:44], v82
	ds_load_b128 v[122:125], v82 offset:2048
	ds_load_b128 v[126:129], v84 offset:2048
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v101, v130
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v96, v96
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v139
	v_mul_f32_e32 v24, v24, v139
	v_mul_f32_e32 v2, v2, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v91
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v139 :: v_dual_mov_b32 v91, v130
	v_mul_f32_e32 v5, v5, v139
	v_mul_f32_e32 v6, v6, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v100, 0, v100, s9
	v_cndmask_b32_e64 v99, 0, v99, s8
	v_cndmask_b32_e64 v97, 0, v97, s7
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v98, s5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v101, 0, v101, s10
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v95, 0, v95, s1
	v_cndmask_b32_e64 v94, 0, v94, s6
	v_cndmask_b32_e64 v96, 0, v96, s0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[114:121], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[102:105], v93 offset:2048
	ds_load_b128 v[41:44], v93 offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v93.h, v92.h
	v_mov_b16_e32 v60.l, v101.h
	v_mov_b16_e32 v93.l, v99.h
	v_mov_b16_e64 v142.l, v94.h
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v101, v100
.Ltmp10:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[122:129], v[114:121], v[1:8]
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v126, v132, v131 :: v_dual_add_f32 v127, v133, v134
	v_dual_add_f32 v128, v135, v136 :: v_dual_add_f32 v129, v137, v138
	v_dual_add_f32 v131, v99, v97 :: v_dual_add_f32 v132, v98, v95
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v93, 1, v93
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v94, v96
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.l, v98.h
	v_and_b32_e32 v60, 1, v60
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v126, v126, v127 :: v_dual_and_b32 v135, 1, v142
	v_dual_add_f32 v127, v128, v129 :: v_dual_add_f32 v128, v130, v131
	v_add_f32_e32 v129, v132, v133
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v101, v101
	v_cmp_o_f32_e64 s5, v99, v99
	v_and_b32_e32 v134, 1, v141
	v_add3_u32 v60, v101, v60, 0x7fff
	v_add3_u32 v93, v99, v93, 0x7fff
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v126, v127
	v_add_f32_e32 v101, v128, v129
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v94, v94
	v_add3_u32 v94, v94, v135, 0x7fff
	v_cndmask_b16 v93.l, 0x7fff, v60.h, s1
	v_mov_b16_e32 v92.l, v100.h
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v99, v101
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v100, v100
	v_cndmask_b16 v127.l, 0x7fff, v94.h, s9
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v99, 1, v92
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v94, v60, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.l, v97.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v97, v97
	v_add3_u32 v99, v100, v99, 0x7fff
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v94
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v94, 1, v92
	v_mov_b16_e32 v92.l, v95.h
	v_cmp_o_f32_e64 s7, v98, v98
	v_add3_u32 v98, v98, v134, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[102:109], v[114:121], v[9:16]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v94, v97, v94, 0x7fff
	v_and_b32_e32 v100, 1, v92
	v_mov_b16_e32 v92.l, v96.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[102:105], v80
	ds_load_b128 v[118:121], v80 offset:2048
	ds_load_b128 v[106:109], v81
	ds_load_b128 v[122:125], v81 offset:2048
	ds_load_b128 v[114:117], v85
	ds_load_b128 v[45:48], v85 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v95, v95
	v_cmp_o_f32_e64 s8, v96, v96
	v_cndmask_b16 v98.l, 0x7fff, v93.h, s5
	v_and_b32_e32 v92, 1, v92
	v_cndmask_b16 v126.l, 0x7fff, v98.h, s7
	v_cndmask_b16 v93.h, 0x7fff, v99.h, s0
	v_cndmask_b16 v98.h, 0x7fff, v94.h, s3
	v_add3_u32 v94, v95, v100, 0x7fff
	v_add3_u32 v95, v96, v92, 0x7fff
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v60, v140, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v97, v93, s22, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v96, v98, s22, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v126.h, 0x7fff, v94.h, s6
	v_cndmask_b16 v127.h, 0x7fff, v95.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v92, v97, v93, v58
	v_perm_b32 v93, v97, v93, v59
	v_permlanex16_b32 v97, v126, s22, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v99, v127, s22, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v94, v96, v98, v58
	v_perm_b32 v95, v96, v98, v59
	v_perm_b32 v96, v97, v126, v58
	v_perm_b32 v97, v97, v126, v59
	v_perm_b32 v98, v99, v127, v58
	v_perm_b32 v99, v99, v127, v59
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[102:109], v[92:99], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[110:117], v[92:99], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[118:125], v[92:99], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[92:99], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v61
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v60, v60, v25
	v_div_scale_f32 v34, null, v60, v60, v26
	v_div_scale_f32 v35, null, v60, v60, v27
	v_rcp_f32_e32 v36, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v60, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v60, v26
	v_div_scale_f32 v43, null, v60, v60, v28
	v_div_scale_f32 v49, s3, v28, v60, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s30, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s29, s29, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v60, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s31, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v60, v60, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v60, v60, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v60, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v60, v26
	v_div_scale_f32 v34, s4, v29, v60, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v60, v60, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v60, v60, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v60
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v51, v38
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
	v_div_scale_f32 v43, s1, v30, v60, v30
	v_div_fixup_f32 v26, v26, v60, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v60, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v60, v60, v17
	v_div_scale_f32 v36, s3, v31, v60, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v26, v26
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
	v_div_scale_f32 v46, s5, v32, v60, v32
	v_div_scale_f32 v43, null, v60, v60, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v60, v17
	v_div_fixup_f32 v28, v28, v60, v29
	v_div_fixup_f32 v29, v34, v60, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v60, v60, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v60, v60, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v60, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v60, v31
	v_div_fixup_f32 v31, v35, v60, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v60, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v60, v60, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v60, v20
	v_div_scale_f32 v47, null, v60, v60, v22
	v_div_fixup_f32 v17, v32, v60, v17
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
	v_div_scale_f32 v42, s3, v21, v60, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v60, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v60, v60, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v60, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v60, v60, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v60, v19
	v_div_fixup_f32 v20, v34, v60, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v60, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v60, v60, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v60, v24
	v_div_scale_f32 v46, null, v60, v60, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v60, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v60, v60, v11
	v_div_fixup_f32 v21, v32, v60, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v60, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v60, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v60, v60, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v60, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v60, v23
	v_div_fixup_f32 v24, v36, v60, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v60, v60, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v60, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v60, v60, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v60, v13
	v_div_fixup_f32 v9, v32, v60, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v60, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v60, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v60, v60, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v60, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v60, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v60, v60, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v60, v60, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v60, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v60, v60, v2
	v_div_fixup_f32 v13, v32, v60, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v60, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v60, v60, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v60, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v60, v2
	v_div_fixup_f32 v14, v35, v60, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v60, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v60, v60, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v60, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v32, v60, v16
	v_div_fixup_f32 v1, v34, v60, v1
	v_div_scale_f32 v34, null, v60, v60, v5
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v60, v60, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v60, v60, v6
	v_div_fixup_f32 v2, v37, v60, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v60, v60, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v60, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v60, v3
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
	v_div_scale_f32 v32, s1, v5, v60, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v60, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v60, v7
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v47, v42
	v_mul_f32_e32 v51, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	v_mul_f32_e32 v52, v48, v41
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v60, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	v_fma_f32 v32, -v34, v49, v32
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v51, v45
	v_div_fmas_f32 v32, v32, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	v_div_fmas_f32 v35, v35, v39, v51
	v_div_fixup_f32 v4, v38, v60, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_cmp_o_f32_e64 s4, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v30, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v18, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s5
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v18, v18
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s4
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s6
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v9, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v5, v32, v60, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v60, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v60, v7
	v_div_fixup_f32 v8, v36, v60, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v57
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v27, v0, s19
	v_cndmask_b32_e64 v0, v0, v27, s19
	v_cndmask_b32_e64 v6, v17, v25, s19
	v_cndmask_b32_e64 v7, v25, v17, s19
	v_cndmask_b32_e64 v13, v28, v20, s19
	v_cndmask_b32_e64 v15, v18, v19, s19
	v_cndmask_b32_e64 v16, v12, v9, s19
	v_cndmask_b32_e64 v9, v9, v12, s19
	v_cndmask_b32_e64 v12, v11, v10, s19
	v_cndmask_b32_e64 v10, v10, v11, s19
	v_cndmask_b32_e64 v17, v3, v1, s19
	v_cndmask_b32_e64 v1, v1, v3, s19
	v_cndmask_b32_e64 v14, v19, v18, s19
	v_cndmask_b32_e64 v18, v4, v2, s19
	v_cndmask_b32_e64 v2, v2, v4, s19
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v20, v28, s19
	v_permlanex16_b32 v3, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v2, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s30, v34
	v_cmp_gt_i32_e64 s3, s30, v32
	v_cmp_gt_i32_e64 s0, s30, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v5, v58
	v_perm_b32 v1, v3, v5, v59
	v_perm_b32 v2, v4, v6, v58
	v_perm_b32 v3, v4, v6, v59
	v_perm_b32 v4, v7, v8, v58
	v_perm_b32 v5, v7, v8, v59
	v_perm_b32 v6, v11, v14, v58
	v_perm_b32 v7, v11, v14, v59
	v_perm_b32 v10, v13, v12, v58
	v_perm_b32 v11, v13, v12, v59
	v_perm_b32 v12, v15, v17, v58
	v_perm_b32 v13, v15, v17, v59
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v58
	v_perm_b32 v9, v9, v16, v59
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s30, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v58
	v_perm_b32 v15, v19, v18, v59
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
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v17, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v18, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v19, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 143
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 143
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9380
; TotalNumSgprs: 46
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 143
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
.Ldebug_ranges3:
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
