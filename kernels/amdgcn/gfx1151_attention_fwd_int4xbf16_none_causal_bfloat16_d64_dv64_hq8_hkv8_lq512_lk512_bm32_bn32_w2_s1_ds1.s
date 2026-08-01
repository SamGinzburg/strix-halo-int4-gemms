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
	s_load_b32 s16, s[0:1], 0x88
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s7, s3, 9
	s_mov_b32 s15, 0x31027000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s5, v34
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v49, 16, v35
	.loc	1 773 26 is_stmt 0              ; attention.py:773:26
	s_add_i32 s9, s5, s7
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v54, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v57, 15, v0
	v_and_b32_e32 v52, 16, v0
	s_mov_b32 s8, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s6, v34
	s_mul_i32 s2, s6, s9
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s6, v49
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s17, s5, s16
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v5, v36, 30, v54
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s17, s17, 32
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v49, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s17, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v5, 2, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_xor_b32_e32 v6, 4, v5
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v37, v5, v1
	ds_bpermute_b32 v38, v5, v2
	ds_bpermute_b32 v39, v5, v3
	ds_bpermute_b32 v45, v5, v4
	ds_bpermute_b32 v40, v6, v1
	ds_bpermute_b32 v47, v6, v2
	ds_bpermute_b32 v48, v6, v3
	ds_bpermute_b32 v46, v6, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v34, 16, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v41, s5, v1
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cmp_eq_u32_e64 s5, 0, v52
	v_or_b32_e32 v53, s9, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v41
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
	v_cndmask_b32_e64 v2, 0x1054, v2, s5
	v_cndmask_b32_e64 v3, 0x3276, v3, s5
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
	v_and_b32_e32 v50, 0x5040504, v2
	v_and_b32_e32 v51, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow186
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
	v_mov_b32_e32 v73, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v6, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v53
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_load_b32 s0, s[0:1], 0x68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v7, 0x7632 :: v_dual_and_b32 v4, 24, v0
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v8, 1, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v63, s7, v2
	s_mov_b32 s20, 0
	v_cndmask_b32_e64 v61, 0x1054, v6, s5
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b32 s26, s20
	buffer_load_u16 v50, v1, s[36:39], 0 offen
	s_mov_b32 s27, s20
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v1, 3, v0
	v_and_b32_e32 v3, 0x3f0, v35
	v_and_b32_e32 v5, 24, v36
	v_cndmask_b32_e64 v62, 0x3276, v7, s5
	v_mov_b32_e32 v32, v25
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v67, 24, v63
	v_dual_mov_b32 v74, 0xff800000 :: v_dual_add_nc_u32 v55, s16, v41
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v42, v45, v46, s5
	v_cndmask_b32_e64 v41, v39, v48, s5
	v_cndmask_b32_e64 v44, v38, v47, s5
	v_cndmask_b32_e64 v43, v37, v40, s5
	v_cndmask_b32_e64 v46, v46, v45, s5
	v_cndmask_b32_e64 v45, v48, v39, s5
	v_cndmask_b32_e64 v48, v47, v38, s5
	v_cndmask_b32_e64 v47, v40, v37, s5
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v9, s7, v34
	v_mov_b32_e32 v40, s27
	v_dual_mov_b32 v39, s26 :: v_dual_and_b32 v0, 7, v0
	v_mov_b32_e32 v38, s25
	v_dual_mov_b32 v36, s23 :: v_dual_and_b32 v51, 56, v1
	v_mov_b32_e32 v30, v25
	v_xor_b32_e32 v59, v3, v4
	v_lshl_or_b32 v60, v57, 5, v5
	v_lshl_or_b32 v61, v61, 8, v61
	v_lshl_or_b32 v62, v62, 8, v62
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v68, 16, v63
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v69, 8, v63
	v_mul_lo_u32 v70, s30, v63
	v_mul_lo_u32 v67, s30, v67
	v_dual_mov_b32 v37, s24 :: v_dual_lshlrev_b32 v58, 4, v0
	v_dual_mov_b32 v34, s21 :: v_dual_mov_b32 v31, v25
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v72, 0x760076, v62
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v71, 0x540054, v61
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s30, v51
	v_xor_b32_e32 v51, 8, v59
	v_xor_b32_e32 v64, 8, v60
	v_xor_b32_e32 v65, 16, v60
	v_xor_b32_e32 v66, 24, v60
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s0, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v68, s30, v68
	v_mul_lo_u32 v69, s30, v69
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s1, s17, 0x200
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v62, 0, v64
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s1, s1, 31
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v64, 0, v66
	v_dual_mov_b32 v23, v25 :: v_dual_lshlrev_b32 v66, 1, v67
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v61, 0, v51
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v63, 0, v65
	v_dual_mov_b32 v16, v25 :: v_dual_lshlrev_b32 v65, 1, v70
	v_lshl_or_b32 v51, v71, 4, v71
	v_lshl_or_b32 v70, v72, 4, v72
	.loc	1 811 34 is_stmt 0              ; attention.py:811:34
	s_ashr_i32 s12, s1, 31
	v_lshl_add_u32 v56, v57, 1, 0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshl_or_b32 v57, s3, 10, v8
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s3, s12, 27
	v_dual_mov_b32 v35, s22 :: v_dual_mov_b32 v26, v25
	v_dual_mov_b32 v33, s20 :: v_dual_mov_b32 v28, v25
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v60, 0, v60
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v59, 0, v59
	v_mov_b32_e32 v11, v25
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v69, 1, v69
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v73, v25
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
	v_mov_b32_e32 v18, v25
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v68, 1, v68
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[0:1], null, s6, v9, v[49:50]
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v50, 16, v50
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v49, 0, v3
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v1, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v67, s0, v50
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v3, v25
	v_dual_mov_b32 v8, v25 :: v_dual_mov_b32 v71, v67
	v_and_b32_e32 v50, 0x5040504, v51
	v_and_b32_e32 v51, 0x7060706, v70
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v70, v67
	v_mov_b32_e32 v72, v67
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v75, 0x80000000, v0, s4
	v_dual_mov_b32 v82, v73 :: v_dual_add_nc_u32 v79, v68, v58
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v80, v66, v58
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v81, s20, v54
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[83:86], v75, s[36:39], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v87, 0x80000000, v79, vcc_lo
	v_dual_cndmask_b32 v88, 0x80000000, v80 :: v_dual_add_nc_u32 v77, v65, v58
	v_add_nc_u32_e32 v78, v69, v58
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v79, 26, v81
	v_add_nc_u32_e32 v80, 24, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v73, 0x80000000, v77, vcc_lo
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v77, 30, v81
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v75, 0x80000000, v78 :: v_dual_add_nc_u32 v78, 28, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v89, 22, v81
	v_add_nc_u32_e32 v90, 20, v81
	v_add_nc_u32_e32 v91, 18, v81
	v_add_nc_u32_e32 v92, 16, v81
	v_add_nc_u32_e32 v93, 14, v81
	v_add_nc_u32_e32 v94, 12, v81
	v_add_nc_u32_e32 v95, 10, v81
	v_add_nc_u32_e32 v96, 8, v81
	v_add_nc_u32_e32 v97, 6, v81
	v_add_nc_u32_e32 v98, 4, v81
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s0, v81, v55
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v81, 2, v81
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v77, v55
	v_cmp_le_i32_e64 s3, v78, v55
	v_cmp_le_i32_e64 s6, v79, v55
	v_cmp_le_i32_e64 s7, v80, v55
	v_cmp_le_i32_e64 s18, v81, v55
	v_cmp_le_i32_e64 s8, v89, v55
	v_cmp_le_i32_e64 s9, v90, v55
	v_cmp_le_i32_e64 s10, v91, v55
	v_cmp_le_i32_e64 s11, v92, v55
	v_cmp_le_i32_e64 s12, v93, v55
	v_cmp_le_i32_e64 s13, v94, v55
	v_cmp_le_i32_e64 s14, v95, v55
	v_cmp_le_i32_e64 s15, v96, v55
	v_cmp_le_i32_e64 s16, v97, v55
	v_cmp_le_i32_e64 s17, v98, v55
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s10, s2, s10
	s_and_b32 s0, s2, s0
	s_and_b32 s18, s2, s18
	s_and_b32 s12, s2, s12
	s_and_b32 s3, s2, s3
	s_and_b32 s6, s2, s6
	s_and_b32 s17, s2, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v76.h, 0
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s14, s2, s14
	s_and_b32 s15, s2, s15
	s_and_b32 s16, s2, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.h, v76.h
	v_mov_b16_e32 v126.h, v76.h
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s2, s13
	s_and_b32 s11, s2, s11
	s_and_b32 s1, s2, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v74
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v128.h, v76.h
	v_mov_b16_e64 v130.h, v76.h
	v_mov_b16_e32 v123.h, v76.h
	v_mov_b16_e32 v125.h, v76.h
	v_mov_b16_e32 v127.h, v76.h
	v_mov_b16_e64 v129.h, v76.h
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s20, s20, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v59, v[83:84]
	ds_store_b64 v61, v[85:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[77:80], v73, s[24:27], 0 offen
	buffer_load_b128 v[99:102], v75, s[24:27], 0 offen
	buffer_load_b128 v[103:106], v87, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v88, s[24:27], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v73, v57, s[40:43], 0 offen
	buffer_load_u16 v75, v57, s[40:43], 0 offen offset:4
	buffer_load_u16 v81, v57, s[40:43], 0 offen offset:12
	buffer_load_u16 v131, v57, s[40:43], 0 offen offset:8
	buffer_load_u16 v132, v57, s[40:43], 0 offen offset:24
	buffer_load_u16 v133, v57, s[40:43], 0 offen offset:28
	buffer_load_u16 v134, v57, s[40:43], 0 offen offset:16
	buffer_load_u16 v135, v57, s[40:43], 0 offen offset:20
	buffer_load_u16 v136, v57, s[40:43], 0 offen offset:36
	buffer_load_u16 v137, v57, s[40:43], 0 offen offset:40
	buffer_load_u16 v138, v57, s[40:43], 0 offen offset:44
	buffer_load_u16 v139, v57, s[40:43], 0 offen offset:48
	buffer_load_u16 v140, v57, s[40:43], 0 offen offset:52
	buffer_load_u16 v141, v57, s[40:43], 0 offen offset:56
	buffer_load_u16 v142, v57, s[40:43], 0 offen offset:60
	buffer_load_u16 v143, v57, s[40:43], 0 offen offset:32
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[111:114], v60 offset1:1
	ds_load_2addr_stride64_b64 v[115:118], v62 offset1:1
	ds_load_2addr_stride64_b64 v[119:122], v63 offset1:1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s20, s21
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[111:112], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[113:114], v[47:48], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[111:114], v64 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[115:116], v[45:46], v[83:90] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[91:98], v[117:118], v[45:46], v[91:98] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_waitcnt vmcnt(19)
	ds_store_b128 v49, v[77:80]
	s_waitcnt vmcnt(18)
	ds_store_b128 v49, v[99:102] offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b128 v49, v[103:106] offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b128 v49, v[107:110] offset:3072
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[91:98], v[121:122], v[43:44], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[119:120], v[43:44], v[83:90] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v75, 16, v75
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v78, 16, v131
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[91:98], v[113:114], v[41:42], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[111:112], v[41:42], v[83:90] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v99, 16, v135
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v100, 16, v136
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v107, 16, v137
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v90, v90
	v_mul_f32_e32 v117, v67, v92
	v_dual_mul_f32 v93, v70, v93 :: v_dual_add_nc_u32 v58, s31, v58
	v_mul_f32_e32 v83, v67, v83
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_mul_f32_e32 v84, v70, v84
	v_mul_f32_e32 v112, v71, v85
	v_mul_f32_e32 v114, v72, v90
	v_dual_mul_f32 v93, v93, v107 :: v_dual_lshlrev_b32 v80, 16, v133
	v_dual_mul_f32 v100, v117, v100 :: v_dual_lshlrev_b32 v73, 16, v73
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_dual_mul_f32 v113, v71, v89 :: v_dual_mul_f32 v120, v70, v96
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v121, v71, v97 :: v_dual_lshlrev_b32 v108, 16, v138
	v_dual_mul_f32 v75, v84, v75 :: v_dual_mul_f32 v80, v114, v80
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v73, v83, v73 :: v_dual_lshlrev_b32 v110, 16, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v100, s10
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v131, 16, v141
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v111, v72, v86 :: v_dual_add_nc_u32 v0, s33, v0
	v_dual_mul_f32 v78, v112, v78 :: v_dual_add_nc_u32 v57, 64, v57
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v91, v91
	v_dual_mul_f32 v115, v67, v87 :: v_dual_mul_f32 v116, v70, v88
	v_dual_mul_f32 v118, v71, v94 :: v_dual_mul_f32 v119, v72, v95
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v109, 16, v139
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v84, v121, v131
	v_mul_f32_e32 v110, v120, v110
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v75, s18
	v_cndmask_b32_e64 v73, 0xff800000, v73, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v77, 16, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v80, s12
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v81, 16, v134
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v91, v67, v91 :: v_dual_mul_f32 v122, v72, v98
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v133, 16, v143
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v83, v118, v108
	v_mul_f32_e32 v99, v116, v99
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v81, v115, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v110, s6
	v_cndmask_b32_e64 v78, 0xff800000, v78, s17
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v114, v73, v75 :: v_dual_lshlrev_b32 v79, 16, v132
.Ltmp2:
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v77, v111, v77 :: v_dual_lshlrev_b32 v132, 16, v142
	v_mul_f32_e32 v111, v119, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v113, v79
	v_mul_f32_e32 v91, v91, v133
	v_mul_f32_e32 v107, v122, v132
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v83, s8
	v_cndmask_b32_e64 v111, 0xff800000, v111, s7
	v_cndmask_b32_e64 v93, 0xff800000, v93, s9
	v_cndmask_b32_e64 v99, 0xff800000, v99, s14
	v_cndmask_b32_e64 v81, 0xff800000, v81, s15
	v_cndmask_b32_e64 v77, 0xff800000, v77, s16
	v_cndmask_b32_e64 v107, 0xff800000, v107, s1
	v_cndmask_b32_e64 v91, 0xff800000, v91, s11
	v_cndmask_b32_e64 v79, 0xff800000, v79, s13
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v112, v100, v93, v83
	v_max3_f32 v113, v111, v110, v84
	v_max3_f32 v115, v77, v81, v99
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v116, v79, v80, v91
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v85, v56 offset:512
	ds_load_u16_d16 v92, v56 offset:288
	ds_load_u16_d16 v98, v56 offset:1824
	ds_load_u16_d16 v101, v56 offset:576
	ds_load_u16_d16 v86, v56 offset:768
	ds_load_u16_d16 v102, v56 offset:832
	ds_load_u16_d16 v87, v56 offset:1024
	ds_load_u16_d16 v94, v56 offset:800
	ds_load_u16_d16 v103, v56 offset:1088
	ds_load_u16_d16 v88, v56 offset:1280
	ds_load_u16_d16 v95, v56 offset:1056
	ds_load_u16_d16 v104, v56 offset:1344
	ds_load_u16_d16 v89, v56 offset:1536
	ds_load_u16_d16 v96, v56 offset:1312
	ds_load_u16_d16 v105, v56 offset:1600
	ds_load_u16_d16 v90, v56 offset:1792
	ds_load_u16_d16 v97, v56 offset:1568
	ds_load_u16_d16 v106, v56 offset:1856
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v112, v112, v113, v107
	v_max3_f32 v113, v114, v78, v115
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v109, v56 offset:608
	ds_load_u16_d16 v108, v56 offset:352
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v112, v113, v116, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v113, v112, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v139, v74, v112, v113
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v93, v139
	v_sub_f32_e32 v83, v83, v139
	v_sub_f32_e32 v78, v78, v139
	v_sub_f32_e32 v81, v81, v139
	v_sub_f32_e32 v99, v99, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v83, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v139
	v_sub_f32_e32 v80, v80, v139
	v_sub_f32_e32 v91, v91, v139
	v_sub_f32_e32 v100, v100, v139
	v_sub_f32_e32 v84, v84, v139
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v112, v74, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v80, v80
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v93, 0, v93, s9
	v_cndmask_b32_e64 v83, 0, v83, s8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v84, v84
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v139
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v135, v112
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v93, v83
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s13
	v_cndmask_b32_e64 v80, 0, v80, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v128.l, v93.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v74, v75
	v_exp_f32_e32 v75, v78
	v_exp_f32_e32 v78, v81
	v_exp_f32_e32 v81, v99
	v_exp_f32_e32 v99, v100
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s11
	v_cndmask_b32_e64 v84, 0, v84, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v100, v111
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v79, v80
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v139
	v_sub_f32_e32 v107, v107, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.l, v84.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s15
	v_cndmask_b32_e64 v81, 0, v81, s14
	v_cndmask_b32_e64 v99, 0, v99, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v77, v77, v139 :: v_dual_and_b32 v122, 1, v130
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v78, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v113, v91, v99
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v107, v107
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s18
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v111, v111, v112 :: v_dual_add_f32 v112, v113, v114
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v114, 1, v128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s17
	v_cndmask_b32_e64 v140, 0, v110, s6
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v76.l, v74.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s16
	v_cndmask_b32_e64 v141, 0, v107, s1
	v_cndmask_b32_e64 v100, 0, v100, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v74, v74
	v_mov_b16_e32 v124.l, v75.h
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v75, v77
.Ltmp21:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s0
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v84, v141
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v77, v77
	v_mov_b16_e32 v125.l, v78.h
	v_cmp_o_f32_e64 s3, v84, v84
	v_mov_b16_e32 v123.l, v73.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v73, v74
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v73, v73
	v_and_b32_e32 v118, 1, v124
	v_add3_u32 v144, v84, v122, 0x7fff
	v_and_b32_e32 v117, 1, v123
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v107, v107, v110 :: v_dual_and_b32 v110, 1, v76
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v76.l, v77.h
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v100, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v73, v73, v117, 0x7fff
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v107, v111
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v74, v74, v110, 0x7fff
	v_and_b32_e32 v110, 1, v76
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v115, v116
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s7
	v_mov_b16_e32 v76.l, v81.h
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s6
	v_add3_u32 v73, v77, v110, 0x7fff
	v_cmp_o_f32_e64 s9, v75, v75
	v_cmp_o_f32_e64 s0, v93, v93
	v_and_b32_e32 v119, 1, v125
	v_permlanex16_b32 v77, v74, s22, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v75, v75, v118, 0x7fff
	v_add3_u32 v142, v93, v114, 0x7fff
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v112, v115
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v78, v78
	v_perm_b32 v115, v77, v74, v50
	v_perm_b32 v116, v77, v74, v51
	v_and_b32_e32 v77, 1, v76
	v_mov_b16_e32 v76.l, v80.h
	v_add3_u32 v78, v78, v119, 0x7fff
	v_cmp_o_f32_e64 s7, v81, v81
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s9
	v_cndmask_b16 v75.h, 0x7fff, v73.h, s8
	v_and_b32_e32 v73, 1, v76
	v_add3_u32 v77, v81, v77, 0x7fff
	v_mov_b16_e32 v76.l, v99.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v84, v93
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s10
	v_permlanex16_b32 v84, v75, s22, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v78.h, 0x7fff, v77.h, s7
	v_and_b32_e32 v77, 1, v76
	v_mov_b16_e32 v76.l, v83.h
	v_mov_b16_e32 v127.l, v91.h
	v_cmp_o_f32_e64 s14, v99, v99
	v_perm_b32 v117, v84, v75, v50
	v_perm_b32 v118, v84, v75, v51
	v_add3_u32 v75, v99, v77, 0x7fff
	v_and_b32_e32 v77, 1, v76
	v_mov_b16_e64 v129.l, v100.h
	v_mov_b16_e32 v126.l, v79.h
	v_cmp_o_f32_e64 s12, v91, v91
	v_cndmask_b16 v145.h, 0x7fff, v75.h, s14
	v_add3_u32 v75, v83, v77, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v77, 0, v135, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v113, 1, v127
	v_and_b32_e32 v121, 1, v129
	v_cmp_o_f32_e64 s1, v100, v100
	v_and_b32_e32 v120, 1, v126
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v91, v91, v113, 0x7fff
	v_add3_u32 v143, v100, v121, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v123, v56 offset:2112
	ds_load_u16_d16 v124, v56 offset:2368
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v83, v83
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v132, v56 offset:2304
	ds_load_u16_d16 v133, v56 offset:2560
	ds_load_u16_d16 v125, v56 offset:2624
	ds_load_u16_d16 v134, v56 offset:2816
	ds_load_u16_d16 v126, v56 offset:2880
	ds_load_u16_d16 v84, v56 offset:256
	ds_load_u16_d16 v83, v56
	ds_load_u16_d16 v91, v56 offset:32
	ds_load_u16_d16 v99, v56 offset:64
	ds_load_u16_d16 v100, v56 offset:320
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v108, v56 offset:480
	ds_load_u16_d16_hi v101, v56 offset:704
	ds_load_u16_d16 v93, v56 offset:544
	ds_load_u16_d16 v107, v56 offset:96
	ds_load_u16_d16_hi v86, v56 offset:896
	ds_load_u16_d16_hi v102, v56 offset:960
	ds_load_u16_d16 v110, v56 offset:864
	ds_load_u16_d16_hi v87, v56 offset:1152
	ds_load_u16_d16_hi v103, v56 offset:1216
	ds_load_u16_d16 v111, v56 offset:1120
	ds_load_u16_d16_hi v88, v56 offset:1408
	ds_load_u16_d16_hi v104, v56 offset:1472
	ds_load_u16_d16 v112, v56 offset:1376
	ds_load_u16_d16_hi v89, v56 offset:1664
	ds_load_u16_d16_hi v105, v56 offset:1728
	ds_load_u16_d16 v113, v56 offset:1632
	ds_load_u16_d16_hi v90, v56 offset:1920
	ds_load_u16_d16_hi v106, v56 offset:1984
	ds_load_u16_d16 v131, v56 offset:2048
	ds_load_u16_d16 v114, v56 offset:1888
	ds_load_u16_d16_hi v85, v56 offset:640
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v79, v79
	v_add3_u32 v79, v79, v120, 0x7fff
	v_cmp_o_f32_e64 s13, v80, v80
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v80, v80, v73, 0x7fff
	s_waitcnt lgkmcnt(23)
	v_cndmask_b16 v145.l, 0x7fff, v91.h, s12
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v77
	v_mul_f32_e32 v14, v14, v77
	v_mul_f32_e32 v6, v6, v77
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v84, v56 offset:384
	ds_load_u16_d16_hi v83, v56 offset:128
	ds_load_u16_d16_hi v91, v56 offset:160
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v99, v56 offset:192
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v107, v56 offset:224
	ds_load_u16_d16_hi v92, v56 offset:416
	ds_load_u16_d16_hi v100, v56 offset:448
	ds_load_u16_d16_hi v93, v56 offset:672
	ds_load_u16_d16_hi v109, v56 offset:736
	ds_load_u16_d16_hi v94, v56 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v110, v56 offset:992
	ds_load_u16_d16_hi v95, v56 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v111, v56 offset:1248
	ds_load_u16_d16_hi v96, v56 offset:1440
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v112, v56 offset:1504
	ds_load_u16_d16_hi v97, v56 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v113, v56 offset:1760
	ds_load_u16_d16_hi v98, v56 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v114, v56 offset:2016
	ds_load_u16_d16_hi v131, v56 offset:2176
	ds_load_u16_d16_hi v123, v56 offset:2240
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s11
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v81, v74, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s13
	v_mov_b16_e64 v76.l, v140.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v77
	v_mul_f32_e32 v27, v27, v77
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v74, v81
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v74, v78, s22, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v79, s22, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v77
	v_mul_f32_e32 v29, v29, v77
	v_mul_f32_e32 v30, v30, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v119, v74, v78, v50
	v_perm_b32 v120, v74, v78, v51
	v_perm_b32 v121, v80, v79, v50
	v_perm_b32 v122, v80, v79, v51
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v77
	v_mul_f32_e32 v32, v32, v77
	v_mul_f32_e32 v17, v17, v77
	v_mul_f32_e32 v18, v18, v77
	v_mul_f32_e32 v19, v19, v77
	v_mul_f32_e32 v20, v20, v77
	v_mul_f32_e32 v21, v21, v77
	v_mul_f32_e32 v22, v22, v77
	v_mul_f32_e32 v23, v23, v77
	v_mul_f32_e32 v24, v24, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v80, 1, v76
	v_mov_b16_e64 v76.l, v141.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v77
	v_mul_f32_e32 v9, v9, v77
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[91:98], v[115:122], v[17:24]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v76, 1, v76
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[83:90], v[115:122], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v91, v56 offset:2144
	ds_load_u16_d16 v135, v56 offset:3072
	ds_load_u16_d16 v127, v56 offset:3136
	ds_load_u16_d16 v136, v56 offset:3328
	ds_load_u16_d16 v128, v56 offset:3392
	ds_load_u16_d16 v137, v56 offset:3584
	ds_load_u16_d16 v129, v56 offset:3648
	ds_load_u16_d16 v138, v56 offset:3840
	ds_load_u16_d16 v130, v56 offset:3904
	ds_load_u16_d16 v93, v56 offset:2656
	ds_load_u16_d16 v94, v56 offset:2912
	ds_load_u16_d16 v92, v56 offset:2400
	ds_load_u16_d16_hi v132, v56 offset:2432
	ds_load_u16_d16_hi v124, v56 offset:2496
	ds_load_u16_d16 v84, v56 offset:2336
	ds_load_u16_d16_hi v133, v56 offset:2688
	ds_load_u16_d16_hi v125, v56 offset:2752
	ds_load_u16_d16 v85, v56 offset:2592
	ds_load_u16_d16_hi v134, v56 offset:2944
	ds_load_u16_d16_hi v126, v56 offset:3008
	ds_load_u16_d16 v86, v56 offset:2848
	ds_load_u16_d16 v83, v56 offset:2080
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v135, v56 offset:3200
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v127, v56 offset:3264
	ds_load_u16_d16 v95, v56 offset:3168
	ds_load_u16_d16 v87, v56 offset:3104
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v136, v56 offset:3456
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v128, v56 offset:3520
	ds_load_u16_d16 v96, v56 offset:3424
	ds_load_u16_d16 v88, v56 offset:3360
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v137, v56 offset:3712
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v129, v56 offset:3776
	ds_load_u16_d16 v97, v56 offset:3680
	ds_load_u16_d16 v89, v56 offset:3616
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v138, v56 offset:3968
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v130, v56 offset:4032
	ds_load_u16_d16 v98, v56 offset:3936
	ds_load_u16_d16 v90, v56 offset:3872
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v77
	v_mul_f32_e32 v13, v13, v77
	v_mul_f32_e32 v15, v15, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v140, v140
	v_cmp_o_f32_e64 s8, v141, v141
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v83, v56 offset:2208
	ds_load_u16_d16_hi v91, v56 offset:2272
	ds_load_u16_d16_hi v84, v56 offset:2464
	ds_load_u16_d16_hi v92, v56 offset:2528
	ds_load_u16_d16_hi v85, v56 offset:2720
	ds_load_u16_d16_hi v93, v56 offset:2784
	ds_load_u16_d16_hi v86, v56 offset:2976
	ds_load_u16_d16_hi v94, v56 offset:3040
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v87, v56 offset:3232
	ds_load_u16_d16_hi v95, v56 offset:3296
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v88, v56 offset:3488
	ds_load_u16_d16_hi v96, v56 offset:3552
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v89, v56 offset:3744
	ds_load_u16_d16_hi v97, v56 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v90, v56 offset:4000
	ds_load_u16_d16_hi v98, v56 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v75.l, 0x7fff, v142.h, s0
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s6
	v_add3_u32 v80, v140, v80, 0x7fff
	v_add3_u32 v76, v141, v76, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v143.h, s1
	v_cndmask_b16 v79.l, 0x7fff, v144.h, s3
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[99:106], v[115:122], v[9:16]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v102, v75, s22, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v78.h, 0x7fff, v80.h, s7
	v_cndmask_b16 v79.h, 0x7fff, v76.h, s8
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v77
	v_mul_f32_e32 v2, v2, v77
	v_mul_f32_e32 v3, v3, v77
	v_mul_f32_e32 v5, v5, v77
	v_mul_f32_e32 v7, v7, v77
	v_mul_f32_e32 v8, v8, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v81, v145, s22, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v102, v75, v50
	v_permlanex16_b32 v76, v78, s22, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v102, v102, v75, v51
	v_permlanex16_b32 v75, v79, s22, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[107:114], v[115:122], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v99, v81, v145, v50
	v_perm_b32 v100, v81, v145, v51
	v_perm_b32 v103, v76, v78, v50
	v_perm_b32 v104, v76, v78, v51
	v_perm_b32 v105, v75, v79, v50
	v_perm_b32 v106, v75, v79, v51
	v_dual_mov_b32 v74, v139 :: v_dual_fmac_f32 v73, v82, v77
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[131:138], v[99:106], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[83:90], v[99:106], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[123:130], v[99:106], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[91:98], v[99:106], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v53
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v73, v73, v25
	v_div_scale_f32 v34, null, v73, v73, v26
	v_div_scale_f32 v35, null, v73, v73, v27
	v_rcp_f32_e32 v36, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v73, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v73, v26
	v_div_scale_f32 v43, null, v73, v73, v28
	v_div_scale_f32 v49, s3, v28, v73, v28
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
	v_div_scale_f32 v41, s1, v27, v73, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	v_rcp_f32_e32 v42, v43
	s_mov_b32 s31, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v73, v73, v29
	v_fma_f32 v53, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v0, v44, v39
	v_fma_f32 v34, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v73, v73, v30
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v73
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v73, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v73, v26
	v_div_scale_f32 v34, s4, v29, v73, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v73, v73, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v54, -v35, v46, v41
	v_rcp_f32_e32 v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v54, v38
	v_fma_f32 v26, -v35, v46, v41
	v_dual_mul_f32 v41, v34, v39 :: v_dual_fmac_f32 v42, v53, v42
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v38, v46
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v36, v49, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v26, v73, v27
	v_fma_f32 v37, -v43, v36, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v73, v73, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v43, v36, v49
	v_div_scale_f32 v43, s1, v30, v73, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v36, v73, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v73, v73, v17
	v_div_scale_f32 v36, s3, v31, v73, v31
	v_fma_f32 v34, -v47, v41, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v28, -v40, v42, v43
	v_fma_f32 v46, -v37, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v42, v28, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	v_fma_f32 v34, -v40, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s6, v32, v73, v32
	v_div_scale_f32 v43, null, v73, v73, v18
	v_fma_f32 v39, -v37, v47, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v73, v17
	v_div_fixup_f32 v28, v28, v73, v29
	v_div_fixup_f32 v29, v34, v73, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v73, v73, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v73, v73, v20
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v73, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v73, v31
	v_div_fixup_f32 v31, v35, v73, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v73, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v73, v73, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v73, v20
	v_div_scale_f32 v47, null, v73, v73, v22
	v_div_fixup_f32 v17, v32, v73, v17
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
	v_div_scale_f32 v42, s3, v21, v73, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v73, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v73, v73, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s6, v22, v73, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v73, v73, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v73, v19
	v_div_fixup_f32 v20, v34, v73, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v73, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v73, v73, v9
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v73, v24
	v_div_scale_f32 v46, null, v73, v73, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v73, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v73, v73, v11
	v_div_fixup_f32 v21, v32, v73, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v73, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v73, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v73, v73, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s6, v11, v73, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v53, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v73, v23
	v_div_fixup_f32 v24, v36, v73, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v73, v73, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, s3, v12, v73, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v73, v73, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v53
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v73, v13
	v_div_fixup_f32 v9, v32, v73, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v53
	v_div_fixup_f32 v10, v35, v73, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v73, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v73, v73, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v73, v14
	v_div_fmas_f32 v36, v36, v53, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v73, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v73, v73, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v73, v73, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v73, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v73, v73, v2
	v_div_fixup_f32 v13, v32, v73, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v73, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v73, v73, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v73, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v53, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v54, v48, v37 :: v_dual_fmac_f32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v73, v2
	v_div_fixup_f32 v14, v35, v73, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v54, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v53, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v54, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v53, v39, v53
	v_div_scale_f32 v39, s1, v3, v73, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v73, v73, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v54, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v53
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v73, v15
	v_div_fmas_f32 v34, v34, v37, v54
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v16, v32, v73, v16
	v_div_fixup_f32 v1, v34, v73, v1
	v_div_scale_f32 v34, null, v73, v73, v5
	v_fmac_f32_e32 v36, v41, v53
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v73, v73, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v73, v73, v6
	v_div_fixup_f32 v2, v37, v73, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v53, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v73, v73, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v73, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v73, v3
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
	v_div_scale_f32 v32, s1, v5, v73, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v73, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v73, v7
	v_fma_f32 v53, -v44, v46, 1.0
	v_dual_fmac_f32 v43, v47, v42 :: v_dual_mul_f32 v54, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v48, v41 :: v_dual_fmac_f32 v46, v53, v46
	v_div_scale_f32 v53, s6, v8, v73, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v54, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v55, v48
	v_mul_f32_e32 v56, v53, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v54, v40, v39
	v_fma_f32 v32, -v34, v49, v32
	v_fmac_f32_e32 v55, v47, v41
	v_fma_f32 v34, -v44, v56, v53
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v54, v45
	v_div_fmas_f32 v32, v32, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v34, v46
	v_fma_f32 v34, -v37, v55, v48
	v_div_fmas_f32 v35, v35, v39, v54
	v_div_fixup_f32 v4, v38, v73, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v55
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
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
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v30, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v18, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v18, v18
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s4
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s4
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
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
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
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v56, v53
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
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
	v_div_fmas_f32 v36, v36, v46, v56
	v_div_fixup_f32 v5, v32, v73, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v73, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v73, v7
	v_div_fixup_f32 v8, v36, v73, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
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
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v4, v4
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
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v27, v0, s5
	v_cndmask_b32_e64 v0, v0, v27, s5
	v_cndmask_b32_e64 v6, v17, v25, s5
	v_cndmask_b32_e64 v7, v25, v17, s5
	v_cndmask_b32_e64 v13, v28, v20, s5
	v_cndmask_b32_e64 v15, v18, v19, s5
	v_cndmask_b32_e64 v16, v12, v9, s5
	v_cndmask_b32_e64 v9, v9, v12, s5
	v_cndmask_b32_e64 v12, v11, v10, s5
	v_cndmask_b32_e64 v10, v10, v11, s5
	v_cndmask_b32_e64 v17, v3, v1, s5
	v_cndmask_b32_e64 v1, v1, v3, s5
	v_cndmask_b32_e64 v14, v19, v18, s5
	v_cndmask_b32_e64 v18, v4, v2, s5
	v_cndmask_b32_e64 v2, v2, v4, s5
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v20, v28, s5
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
	v_perm_b32 v0, v3, v5, v50
	v_perm_b32 v1, v3, v5, v51
	v_perm_b32 v2, v4, v6, v50
	v_perm_b32 v3, v4, v6, v51
	v_perm_b32 v4, v7, v8, v50
	v_perm_b32 v5, v7, v8, v51
	v_perm_b32 v6, v11, v14, v50
	v_perm_b32 v7, v11, v14, v51
	v_perm_b32 v10, v13, v12, v50
	v_perm_b32 v11, v13, v12, v51
	v_perm_b32 v12, v15, v17, v50
	v_perm_b32 v13, v15, v17, v51
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v50
	v_perm_b32 v9, v9, v16, v51
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s30, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v50
	v_perm_b32 v15, v19, v18, v51
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
.Ltmp42:
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
		.amdhsa_next_free_vgpr 146
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 146
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
; codeLenInByte = 10076
; TotalNumSgprs: 46
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 46
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
