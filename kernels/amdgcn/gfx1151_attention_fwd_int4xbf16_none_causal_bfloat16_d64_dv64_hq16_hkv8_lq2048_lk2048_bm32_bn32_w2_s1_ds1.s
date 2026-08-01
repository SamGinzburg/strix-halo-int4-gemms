	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s31, s[0:1], 0x60
	s_load_b32 s5, s[0:1], 0x88
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s15, 0x31027000
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v35
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s6, s2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v87, v0, 4, 1
	v_and_b32_e32 v34, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v84, 16, v0
	s_mov_b32 s7, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[73:74], null, s31, v5, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s31, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	v_cmp_eq_u32_e64 s18, 0, v84
	v_and_or_b32 v6, v36, 30, v87
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s31, s8, v[73:74]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v6, 2, v6
	v_xor_b32_e32 v7, 4, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v37, v6, v1
	ds_bpermute_b32 v38, v6, v2
	ds_bpermute_b32 v39, v6, v3
	ds_bpermute_b32 v41, v6, v4
	ds_bpermute_b32 v40, v7, v1
	ds_bpermute_b32 v42, v7, v2
	ds_bpermute_b32 v43, v7, v3
	ds_bpermute_b32 v44, v7, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v5, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v45, s6, v1
	.loc	1 810 48 is_stmt 1              ; attention.py:810:48
	s_add_i32 s6, s6, s5
	v_or_b32_e32 v86, s8, v1
	s_add_i32 s6, s6, 32
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v45
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s18
	v_cndmask_b32_e64 v3, 0x3276, v3, s18
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
	v_and_b32_e32 v83, 0x5040504, v2
	v_and_b32_e32 v85, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow182
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x38
	s_load_b32 s30, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
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
	v_mov_b32_e32 v131, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v86
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_load_b32 s0, s[0:1], 0x68
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v104, 0x3f0, v35
	v_dual_mov_b32 v5, 0x7632 :: v_dual_and_b32 v2, 24, v0
	v_and_b32_e32 v3, 24, v36
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s3, 31
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_add_nc_u32 v103, s5, v45
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s5, s6, 0x800
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s1, s1, 28
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v77, v38, v42, s18
	v_cndmask_b32_e64 v76, v37, v40, s18
	v_cndmask_b32_e64 v81, v42, v38, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v80, v40, v37, s18
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v46, v1, s[36:39], 0 offen
	v_dual_mov_b32 v26, v25 :: v_dual_lshlrev_b32 v1, 3, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 3, v0
	v_lshl_add_u32 v0, v34, 1, 0
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s5, s5, 31
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v33, 56, v1
	v_cndmask_b32_e64 v36, 0x1054, v4, s18
	v_cndmask_b32_e64 v38, 0x3276, v5, s18
	v_mov_b32_e32 v28, v25
	v_lshl_or_b32 v34, v34, 5, v3
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s6, s5, 31
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s7, s1, 0xfff0
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s6, s6, 27
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s7
	v_xor_b32_e32 v35, v104, v2
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s30, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[82:83], null, s30, v37, v[33:34]
	v_lshl_or_b32 v33, v36, 8, v36
	v_lshl_or_b32 v36, v38, 8, v38
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s48, s5, s6
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s5, s3, 0x10007
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v75, v41, v44, s18
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s3, s3, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v74, v39, v43, s18
	v_cndmask_b32_e64 v79, v44, v41, s18
	v_cndmask_b32_e64 v78, v43, v39, s18
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v106, 0, v34
	v_mov_b32_e32 v29, v25
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v105, 0, v35
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v33, 0x540054, v33
	v_mov_b32_e32 v24, v25
	v_xor_b32_e32 v39, 8, v35
	v_xor_b32_e32 v40, 8, v34
	v_xor_b32_e32 v41, 16, v34
	v_xor_b32_e32 v42, 24, v34
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s3, s3, 0x80000
	v_and_b32_e32 v34, 0x760076, v36
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s0, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s3, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	s_lshl_b32 s3, s3, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v88, 2, v87
	v_or_b32_e32 v89, 4, v87
	v_or_b32_e32 v90, 6, v87
	v_or_b32_e32 v91, 8, v87
	v_or_b32_e32 v92, 10, v87
	v_or_b32_e32 v93, 12, v87
	v_or_b32_e32 v94, 14, v87
	v_or_b32_e32 v95, 16, v87
	v_or_b32_e32 v96, 18, v87
	v_or_b32_e32 v97, 20, v87
	v_or_b32_e32 v98, 22, v87
	v_or_b32_e32 v99, 24, v87
	v_or_b32_e32 v100, 26, v87
	v_or_b32_e32 v101, 28, v87
	v_or_b32_e32 v102, 30, v87
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s1, s1, 0xffffc000
	s_and_b32 s49, s3, 0xfffff800
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v108, 0, v40
	s_add_i32 s49, s49, s1
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v110, 0, v42
	v_mov_b32_e32 v19, v25
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v107, 0, v39
	v_mov_b32_e32 v21, v25
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v109, 0, v41
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_dual_mov_b32 v12, v25 :: v_dual_and_b32 v83, 0x5040504, v33
	v_mov_b32_e32 v13, v25
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v85, 0x7060706, v34
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_or_b32_e32 v111, s49, v87
	v_or_b32_e32 v112, s49, v88
	v_or_b32_e32 v113, s49, v89
	v_or_b32_e32 v114, s49, v90
	v_or_b32_e32 v115, s49, v91
	v_or_b32_e32 v116, s49, v92
	v_or_b32_e32 v117, s49, v93
	v_or_b32_e32 v118, s49, v94
	v_or_b32_e32 v119, s49, v95
	v_or_b32_e32 v120, s49, v96
	v_or_b32_e32 v121, s49, v97
	v_or_b32_e32 v122, s49, v98
	v_or_b32_e32 v123, s49, v99
	v_or_b32_e32 v124, s49, v100
	v_or_b32_e32 v126, s49, v101
	v_or_b32_e32 v127, s49, v102
	v_mov_b32_e32 v131, v25
	s_mov_b32 s20, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s33, s30, 3
	s_lshl_b32 s34, s30, 4
	s_mul_i32 s35, s30, 24
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s46, s38
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s48, s48, 31
	s_and_b32 s45, s11, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s44, s10
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s41, s15
	s_mov_b32 s47, s39
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s51, s20
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v10, v25 :: v_dual_lshlrev_b32 v35, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v125, s0, v35
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v128, v125
	v_mov_b32_e32 v129, v125
	v_mov_b32_e32 v130, v125
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s51, s49
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v40, s27 :: v_dual_mov_b32 v39, s26
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[41:42], null, s0, s31, v[73:74]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v38, s25 :: v_dual_mov_b32 v37, s24
	v_dual_mov_b32 v36, s23 :: v_dual_mov_b32 v35, s22
	v_dual_mov_b32 v34, s21 :: v_dual_mov_b32 v33, s20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v66, v111, s51, 1
	v_add_lshl_u32 v67, v112, s51, 1
	v_add_lshl_u32 v68, v113, s51, 1
	v_add_lshl_u32 v69, v114, s51, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[41:44], v41, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v71, v115, s51, 1
	v_add_lshl_u32 v133, v117, s51, 1
	v_add_lshl_u32 v134, v118, s51, 1
	v_add_lshl_u32 v135, v119, s51, 1
	v_add_lshl_u32 v136, v120, s51, 1
	v_add_lshl_u32 v137, v121, s51, 1
	v_add_lshl_u32 v138, v122, s51, 1
	v_add_lshl_u32 v139, v123, s51, 1
	v_add_lshl_u32 v140, v124, s51, 1
	v_add_lshl_u32 v141, v126, s51, 1
	v_add_lshl_u32 v142, v127, s51, 1
	v_add_lshl_u32 v72, v116, s51, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v105, v[41:42]
	ds_store_b64 v107, v[43:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[49:52], v106 offset1:1
	ds_load_2addr_stride64_b64 v[62:65], v108 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[51:52], v[80:81], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v109 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v110 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[62:63], v[78:79], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[64:65], v[78:79], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_mad_u64_u32 v[33:34], null, s0, s30, v[82:83]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[35:36], v[76:77], v[54:61] neg_lo:[1,1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v132
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[74:75], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[39:40], v[74:75], v[54:61] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, v33, s33, 1
	v_lshlrev_b32_e32 v34, 1, v33
	v_add_lshl_u32 v36, v33, s34, 1
	v_add_lshl_u32 v33, v33, s35, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v42
	v_cvt_f32_i32_e32 v38, v44
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v42, v45
	v_cvt_f32_i32_e32 v44, v55
	v_cvt_f32_i32_e32 v45, v56
	v_cvt_f32_i32_e32 v48, v59
	v_cvt_f32_i32_e32 v49, v60
	v_cvt_f32_i32_e32 v50, v61
	v_cvt_f32_i32_e32 v51, v54
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v70, v66, s[40:43], 0 offen
	buffer_load_u16 v59, v67, s[40:43], 0 offen
	buffer_load_u16 v56, v68, s[40:43], 0 offen
	buffer_load_u16 v60, v69, s[40:43], 0 offen
	buffer_load_u16 v54, v71, s[40:43], 0 offen
	buffer_load_u16 v55, v72, s[40:43], 0 offen
	buffer_load_u16 v68, v133, s[40:43], 0 offen
	buffer_load_u16 v69, v134, s[40:43], 0 offen
	buffer_load_u16 v52, v135, s[40:43], 0 offen
	buffer_load_u16 v61, v136, s[40:43], 0 offen
	buffer_load_u16 v62, v137, s[40:43], 0 offen
	buffer_load_u16 v63, v138, s[40:43], 0 offen
	buffer_load_u16 v64, v139, s[40:43], 0 offen
	buffer_load_u16 v65, v140, s[40:43], 0 offen
	buffer_load_u16 v66, v141, s[40:43], 0 offen
	buffer_load_u16 v67, v142, s[40:43], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[133:136], v34, s[44:47], 0 offen
	buffer_load_b128 v[137:140], v35, s[44:47], 0 offen
	buffer_load_b128 v[141:144], v36, s[44:47], 0 offen
	buffer_load_b128 v[33:36], v33, s[44:47], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v47
	v_cvt_f32_i32_e32 v47, v58
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v58, s51, v101
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v71, 0, v104
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v46, v57
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v58, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v58, s51, v98
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v72, s51, v100
	v_or_b32_e32 v57, s51, v102
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v58, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v58, s51, v95
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s2, s7
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v72, v103
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v72, s51, v97
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v57, v103
	v_cmp_le_i32_e64 s11, v58, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v58, s51, v92
	v_or_b32_e32 v57, s51, v99
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v72, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v72, s51, v94
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s2, s5
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v58, v103
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v58, s51, v89
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v57, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v57, s51, v96
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v72, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v72, s51, v91
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v58, v103
	v_mov_b32_e32 v58, v131
	v_cmp_le_i32_e64 s10, v57, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v57, s51, v93
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v72, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v72, s51, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s2, s6
	s_and_b32 s8, s2, s8
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v57, v103
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v57, s51, v90
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s3, v72, v103
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	s_and_b32 s15, s2, s15
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v57, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s2, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v57.h, 0
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s2, s14
	s_and_b32 s1, s2, s1
	s_and_b32 s16, s2, s16
	s_and_b32 s17, s2, s17
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s2, s13
	s_and_b32 s11, s2, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v72.h, v57.h
	v_mov_b16_e64 v131.h, v57.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v71, v[133:136]
	s_waitcnt vmcnt(2)
	ds_store_b128 v71, v[137:140] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v71, v[141:144] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v71, v[33:36] offset:3072
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v125, v53 :: v_dual_lshlrev_b32 v35, 16, v70
	v_mul_f32_e32 v36, v130, v38
	v_mul_f32_e32 v38, v129, v40
	v_mul_f32_e32 v40, v125, v42
	v_mul_f32_e32 v42, v125, v44
	v_dual_mul_f32 v34, v34, v35 :: v_dual_mul_f32 v35, v128, v37
	v_mul_f32_e32 v37, v129, v39
	v_mul_f32_e32 v39, v130, v41
	v_mul_f32_e32 v41, v128, v43
	v_dual_mul_f32 v43, v128, v45 :: v_dual_mul_f32 v44, v129, v46
	v_dual_mul_f32 v45, v130, v47 :: v_dual_mul_f32 v46, v128, v48
	v_dual_mul_f32 v47, v129, v49 :: v_dual_mul_f32 v48, v130, v50
	v_mul_f32_e32 v49, v125, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v51, 16, v60
	v_lshlrev_b32_e32 v53, 16, v56
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v133, s51, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.h, v57.h
	v_mov_b16_e64 v135.h, v57.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v36, v51
	v_dual_mul_f32 v37, v37, v53 :: v_dual_lshlrev_b32 v50, 16, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v56, 16, v68
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v133, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s16
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v35, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v38, v38, v56 :: v_dual_lshlrev_b32 v59, 16, v69
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s2, s19
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v39, v59
	v_dual_mul_f32 v40, v40, v54 :: v_dual_lshlrev_b32 v55, 16, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v61
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v41, v41, v55 :: v_dual_lshlrev_b32 v52, 16, v52
	v_dual_mul_f32 v42, v42, v60 :: v_dual_lshlrev_b32 v61, 16, v62
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v62, 16, v63
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v41, 0xff800000, v41, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v43, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v44, v44, v62 :: v_dual_lshlrev_b32 v63, 16, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v64, 16, v65
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v42, s10
	v_cndmask_b32_e64 v54, 0xff800000, v43, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v45, v63
	v_dual_mul_f32 v46, v46, v64 :: v_dual_lshlrev_b32 v65, 16, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v66, 16, v67
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v43, v34, v35 :: v_dual_mul_f32 v56, v49, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp2:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v47, v65
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v46, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v48, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v44, s8
	v_cndmask_b32_e64 v53, 0xff800000, v45, s6
	v_cndmask_b32_e64 v49, 0xff800000, v47, s7
	v_cndmask_b32_e64 v37, 0xff800000, v37, s17
	v_cndmask_b32_e64 v51, 0xff800000, v48, s1
	v_cndmask_b32_e64 v64, 0xff800000, v56, s11
	v_cndmask_b32_e64 v39, 0xff800000, v39, s12
	v_cndmask_b32_e64 v59, 0xff800000, v38, s13
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v55, v54, v52
	v_max3_f32 v42, v53, v50, v49
	v_max3_f32 v44, v36, v40, v41
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v57.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v45, v59, v39, v64
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.h, v57.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v38, v42, v51
	v_max3_f32 v42, v43, v37, v44
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.h, v57.h
	v_mov_b16_e32 v71.h, v57.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v42, v45, v38
.Ltmp10:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s51, s51, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s51, s48
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v42, v38, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v133, v132, v38, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v133
	v_sub_f32_e32 v34, v34, v133
	v_sub_f32_e32 v36, v36, v133
	v_sub_f32_e32 v38, v40, v133
	v_sub_f32_e32 v37, v37, v133
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v41, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v35, s3
	v_cndmask_b32_e64 v60, 0, v34, s19
	v_cndmask_b32_e64 v62, 0, v36, s16
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v63, 0, v38, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v57.l, v56.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v37, s17
	v_cndmask_b32_e64 v65, 0, v40, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v60.h
	v_mov_b16_e32 v33.l, v63.h
	v_and_b32_e32 v34, 1, v57
	v_mov_b16_e32 v57.l, v62.h
	v_mov_b16_e64 v135.l, v61.h
	v_and_b32_e32 v35, 1, v134
	v_and_b32_e32 v33, 1, v33
	v_cmp_o_f32_e64 s14, v60, v60
	v_and_b32_e32 v37, 1, v57
	v_mov_b16_e32 v57.l, v65.h
	v_cmp_o_f32_e64 s19, v63, v63
	v_and_b32_e32 v36, 1, v135
	v_add3_u32 v35, v60, v35, 0x7fff
	v_add3_u32 v33, v63, v33, 0x7fff
	v_and_b32_e32 v38, 1, v57
	v_add3_u32 v34, v56, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v56, v56
	v_cmp_o_f32_e64 s15, v62, v62
	v_cmp_o_f32_e64 s16, v61, v61
	v_cmp_o_f32_e64 s17, v65, v65
	v_add3_u32 v36, v61, v36, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s14
	v_add3_u32 v35, v62, v37, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v33.h, s19
	v_add3_u32 v33, v65, v38, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s16
	v_cndmask_b16 v36.h, 0x7fff, v35.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v40.h, 0x7fff, v33.h, s17
	v_permlanex16_b32 v37, v34, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v38, v36, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v40, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v33, v37, v34, v83
	v_perm_b32 v34, v37, v34, v85
	v_perm_b32 v35, v38, v36, v83
	v_perm_b32 v36, v38, v36, v85
	v_perm_b32 v37, v41, v40, v83
	v_perm_b32 v38, v41, v40, v85
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v59, v133
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v59, v132, v133
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v0 offset:256
	ds_load_u16_d16 v43, v0 offset:512
	ds_load_u16_d16 v44, v0 offset:768
	ds_load_u16_d16 v45, v0 offset:1024
	ds_load_u16_d16 v46, v0 offset:1280
	ds_load_u16_d16 v47, v0 offset:1536
	ds_load_u16_d16 v48, v0 offset:1792
	ds_load_u16_d16 v41, v0
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v0 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v0 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v0 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v0 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v0 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v0 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v0 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v0 offset:128
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v59, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v59, 0, v59, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v133
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v40, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v59
	v_mul_f32_e32 v26, v26, v59
	v_mul_f32_e32 v27, v27, v59
	v_mul_f32_e32 v28, v28, v59
	v_mul_f32_e32 v29, v29, v59
	v_mul_f32_e32 v31, v31, v59
	v_mul_f32_e32 v17, v17, v59
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v39, s12
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v59 :: v_dual_and_b32 v39, 1, v136
	v_mul_f32_e32 v19, v19, v59
	v_mul_f32_e32 v20, v20, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v57.l, v67.h
	v_add3_u32 v39, v66, v39, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v59
	v_mul_f32_e32 v22, v22, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v39, 1, v57
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v59
	v_mul_f32_e32 v24, v24, v59
	v_mul_f32_e32 v9, v9, v59
	v_mul_f32_e32 v10, v10, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v67, v39, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v59
	v_mul_f32_e32 v12, v12, v59
	v_mul_f32_e32 v13, v13, v59
	v_mul_f32_e32 v14, v14, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v39.h, s0
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v59
	v_mul_f32_e32 v16, v16, v59
	v_mul_f32_e32 v1, v1, v59
	v_mul_f32_e32 v2, v2, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v68, v40, s50, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v59
	v_mul_f32_e32 v4, v4, v59
	v_mul_f32_e32 v5, v5, v59
	v_mul_f32_e32 v6, v6, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v39, v68, v40, v83
	v_perm_b32 v40, v68, v40, v85
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v59
	v_mul_f32_e32 v8, v8, v59
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v41, v0 offset:32
	ds_load_u16_d16 v42, v0 offset:288
	ds_load_u16_d16 v43, v0 offset:544
	ds_load_u16_d16 v44, v0 offset:800
	ds_load_u16_d16 v45, v0 offset:1056
	ds_load_u16_d16 v46, v0 offset:1312
	ds_load_u16_d16 v47, v0 offset:1568
	ds_load_u16_d16 v48, v0 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v0 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v0 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v0 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v0 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v0 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v0 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v0 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v0 offset:1952
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v0 offset:576
	ds_load_u16_d16 v44, v0 offset:832
	ds_load_u16_d16 v45, v0 offset:1088
	ds_load_u16_d16 v46, v0 offset:1344
	ds_load_u16_d16 v47, v0 offset:1600
	ds_load_u16_d16 v48, v0 offset:1856
	ds_load_u16_d16 v41, v0 offset:64
	ds_load_u16_d16 v42, v0 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v0 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v0 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v0 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v0 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v0 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v0 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v0 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v0 offset:448
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v0 offset:352
	ds_load_u16_d16 v41, v0 offset:96
	ds_load_u16_d16 v43, v0 offset:608
	ds_load_u16_d16 v44, v0 offset:864
	ds_load_u16_d16 v45, v0 offset:1120
	ds_load_u16_d16 v46, v0 offset:1376
	ds_load_u16_d16 v47, v0 offset:1632
	ds_load_u16_d16 v48, v0 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v0 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v0 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v0 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v0 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v0 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v0 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v0 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v0 offset:2016
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v55, v133
	v_sub_f32_e32 v37, v54, v133
	v_sub_f32_e32 v38, v52, v133
	v_sub_f32_e32 v39, v53, v133
	v_sub_f32_e32 v40, v50, v133
	v_sub_f32_e32 v35, v64, v133
	v_sub_f32_e32 v42, v49, v133
	v_sub_f32_e32 v43, v51, v133
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v43, v43
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v33, v0 offset:2112
	ds_load_u16_d16 v34, v0 offset:2368
	ds_load_u16_d16 v41, v0 offset:2144
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v36, s10
	v_cndmask_b32_e64 v36, 0, v37, s9
	v_cndmask_b32_e64 v68, 0, v38, s8
	v_cndmask_b32_e64 v69, 0, v39, s6
	v_cndmask_b32_e64 v132, 0, v40, s5
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v60, v56 :: v_dual_add_f32 v38, v61, v62
	v_dual_add_f32 v39, v63, v65 :: v_dual_add_f32 v40, v66, v67
.Ltmp14:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s11
	v_cndmask_b32_e64 v134, 0, v42, s7
	v_cndmask_b32_e64 v135, 0, v43, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v60, v37, v38 :: v_dual_add_f32 v61, v39, v40
	v_add_f32_e32 v42, v35, v64
	v_add_f32_e32 v43, v36, v68
	v_add_f32_e32 v44, v69, v132
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v57.l, v64.h
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v60, v60, v61 :: v_dual_add_f32 v45, v134, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v62, v42, v43
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.l, v36.h
	v_and_b32_e32 v67, 1, v57
	v_mov_b16_e32 v57.l, v68.h
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v63, v44, v45
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v72.l, v35.h
	v_and_b32_e32 v47, 1, v131
	v_mov_b16_e32 v71.l, v69.h
	v_mov_b16_e64 v70.l, v134.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v61, v62, v63 :: v_dual_and_b32 v46, 1, v72
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v35, v35
	v_cmp_o_f32_e64 s3, v64, v64
	v_cmp_o_f32_e64 s5, v68, v68
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v61
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v35, v46, 0x7fff
	v_and_b32_e32 v65, 1, v71
	v_and_b32_e32 v66, 1, v70
	v_cmp_o_f32_e64 s1, v36, v36
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v61, v60, s50, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v132, v132
	v_cmp_o_f32_e64 s7, v69, v69
	v_cmp_o_f32_e64 s8, v135, v135
	v_cmp_o_f32_e64 s9, v134, v134
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v60, v61
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v60, 1, v57
	v_mov_b16_e64 v57.l, v132.h
	v_add3_u32 v61, v64, v67, 0x7fff
	v_add3_u32 v65, v69, v65, 0x7fff
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v131, v58, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v59, v68, v60, 0x7fff
	v_and_b32_e32 v58, 1, v57
	v_mov_b16_e64 v57.l, v135.h
	v_add3_u32 v66, v134, v66, 0x7fff
	v_cndmask_b16 v62.l, 0x7fff, v35.h, s0
	v_cndmask_b16 v62.h, 0x7fff, v61.h, s3
	v_add3_u32 v58, v132, v58, 0x7fff
	v_dual_mov_b32 v132, v133 :: v_dual_and_b32 v57, 1, v57
	v_add3_u32 v36, v36, v47, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v49, v0 offset:2048
	ds_load_u16_d16 v51, v0 offset:2560
	ds_load_u16_d16 v35, v0 offset:2624
	ds_load_u16_d16 v52, v0 offset:2816
	ds_load_u16_d16 v36, v0 offset:2880
	ds_load_u16_d16 v53, v0 offset:3072
	ds_load_u16_d16 v37, v0 offset:3136
	ds_load_u16_d16 v54, v0 offset:3328
	ds_load_u16_d16 v38, v0 offset:3392
	ds_load_u16_d16 v55, v0 offset:3584
	ds_load_u16_d16 v39, v0 offset:3648
	ds_load_u16_d16 v56, v0 offset:3840
	ds_load_u16_d16 v50, v0 offset:2304
	ds_load_u16_d16 v40, v0 offset:3904
	ds_load_u16_d16 v42, v0 offset:2400
	ds_load_u16_d16 v43, v0 offset:2656
	ds_load_u16_d16 v44, v0 offset:2912
	ds_load_u16_d16 v45, v0 offset:3168
	ds_load_u16_d16 v46, v0 offset:3424
	ds_load_u16_d16 v47, v0 offset:3680
	ds_load_u16_d16 v48, v0 offset:3936
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v63.h, 0x7fff, v59.h, s5
	v_add3_u32 v59, v135, v57, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s7
	s_waitcnt lgkmcnt(16)
	v_cndmask_b16 v63.l, 0x7fff, v36.h, s1
	v_cndmask_b16 v66.l, 0x7fff, v66.h, s9
	v_permlanex16_b32 v60, v62, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v65.h, 0x7fff, v58.h, s6
	v_cndmask_b16 v66.h, 0x7fff, v59.h, s8
	v_permlanex16_b32 v61, v63, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v57, v60, v62, v83
	v_perm_b32 v58, v60, v62, v85
	v_permlanex16_b32 v62, v65, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v64, v66, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v59, v61, v63, v83
	v_perm_b32 v60, v61, v63, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v61, v62, v65, v83
	v_perm_b32 v62, v62, v65, v85
	v_perm_b32 v63, v64, v66, v83
	v_perm_b32 v64, v64, v66, v85
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v65, v0 offset:2080
	ds_load_u16_d16 v66, v0 offset:2336
	ds_load_u16_d16 v67, v0 offset:2592
	ds_load_u16_d16 v68, v0 offset:2848
	ds_load_u16_d16 v69, v0 offset:3104
	ds_load_u16_d16 v70, v0 offset:3360
	ds_load_u16_d16 v71, v0 offset:3616
	ds_load_u16_d16 v72, v0 offset:3872
	ds_load_u16_d16_hi v33, v0 offset:2240
	ds_load_u16_d16_hi v49, v0 offset:2176
	ds_load_u16_d16_hi v34, v0 offset:2496
	ds_load_u16_d16_hi v51, v0 offset:2688
	ds_load_u16_d16_hi v35, v0 offset:2752
	ds_load_u16_d16_hi v52, v0 offset:2944
	ds_load_u16_d16_hi v36, v0 offset:3008
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v53, v0 offset:3200
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v37, v0 offset:3264
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v54, v0 offset:3456
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v38, v0 offset:3520
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v55, v0 offset:3712
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v39, v0 offset:3776
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v56, v0 offset:3968
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v50, v0 offset:2432
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v40, v0 offset:4032
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v65, v0 offset:2208
	ds_load_u16_d16_hi v41, v0 offset:2272
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v66, v0 offset:2464
	ds_load_u16_d16_hi v42, v0 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v67, v0 offset:2720
	ds_load_u16_d16_hi v43, v0 offset:2784
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v68, v0 offset:2976
	ds_load_u16_d16_hi v44, v0 offset:3040
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v69, v0 offset:3232
	ds_load_u16_d16_hi v45, v0 offset:3296
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v70, v0 offset:3488
	ds_load_u16_d16_hi v46, v0 offset:3552
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v71, v0 offset:3744
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v72, v0 offset:4000
	ds_load_u16_d16_hi v47, v0 offset:3808
	ds_load_u16_d16_hi v48, v0 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[57:64], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[57:64], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[57:64], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[57:64], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v86
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v131, v131, v25
	v_div_scale_f32 v34, null, v131, v131, v26
	v_div_scale_f32 v35, null, v131, v131, v27
	v_rcp_f32_e32 v36, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v131, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v131, v26
	v_div_scale_f32 v43, null, v131, v131, v28
	v_div_scale_f32 v49, s3, v28, v131, v28
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
	v_div_scale_f32 v41, s1, v27, v131, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s31, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v131, v131, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v131, v131, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v131, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v131, v26
	v_div_scale_f32 v34, s4, v29, v131, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v131, v131, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v131, v131, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v131
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
	v_div_scale_f32 v43, s1, v30, v131, v30
	v_div_fixup_f32 v26, v26, v131, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v131, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v131, v131, v17
	v_div_scale_f32 v36, s3, v31, v131, v31
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
	v_div_scale_f32 v46, s5, v32, v131, v32
	v_div_scale_f32 v43, null, v131, v131, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v131, v17
	v_div_fixup_f32 v28, v28, v131, v29
	v_div_fixup_f32 v29, v34, v131, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v131, v131, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v131, v131, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v131, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v131, v31
	v_div_fixup_f32 v31, v35, v131, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v131, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v131, v131, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v131, v20
	v_div_scale_f32 v47, null, v131, v131, v22
	v_div_fixup_f32 v17, v32, v131, v17
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
	v_div_scale_f32 v42, s3, v21, v131, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v131, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v131, v131, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v131, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v131, v131, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v131, v19
	v_div_fixup_f32 v20, v34, v131, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v131, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v131, v131, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v131, v24
	v_div_scale_f32 v46, null, v131, v131, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v131, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v131, v131, v11
	v_div_fixup_f32 v21, v32, v131, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v131, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v131, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v131, v131, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v131, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v131, v23
	v_div_fixup_f32 v24, v36, v131, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v131, v131, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v131, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v131, v131, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v131, v13
	v_div_fixup_f32 v9, v32, v131, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v131, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v131, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v131, v131, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v131, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v131, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v131, v131, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v131, v131, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v131, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v131, v131, v2
	v_div_fixup_f32 v13, v32, v131, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v131, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v131, v131, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v131, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v131, v2
	v_div_fixup_f32 v14, v35, v131, v14
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
	v_div_scale_f32 v39, s1, v3, v131, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v131, v131, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v131, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v32, v131, v16
	v_div_fixup_f32 v1, v34, v131, v1
	v_div_scale_f32 v34, null, v131, v131, v5
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v131, v131, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v131, v131, v6
	v_div_fixup_f32 v2, v37, v131, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v131, v131, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v131, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v131, v3
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
	v_div_scale_f32 v32, s1, v5, v131, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v131, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v131, v7
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v47, v42
	v_mul_f32_e32 v51, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	v_mul_f32_e32 v52, v48, v41
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v131, v8
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
	v_div_fixup_f32 v4, v38, v131, v4
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
	v_div_fixup_f32 v5, v32, v131, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v131, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v131, v7
	v_div_fixup_f32 v8, v36, v131, v8
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
	v_lshrrev_b32_e32 v32, 1, v84
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v27, v0, s18
	v_cndmask_b32_e64 v0, v0, v27, s18
	v_cndmask_b32_e64 v6, v17, v25, s18
	v_cndmask_b32_e64 v7, v25, v17, s18
	v_cndmask_b32_e64 v13, v28, v20, s18
	v_cndmask_b32_e64 v15, v18, v19, s18
	v_cndmask_b32_e64 v16, v12, v9, s18
	v_cndmask_b32_e64 v9, v9, v12, s18
	v_cndmask_b32_e64 v12, v11, v10, s18
	v_cndmask_b32_e64 v10, v10, v11, s18
	v_cndmask_b32_e64 v17, v3, v1, s18
	v_cndmask_b32_e64 v1, v1, v3, s18
	v_cndmask_b32_e64 v14, v19, v18, s18
	v_cndmask_b32_e64 v18, v4, v2, s18
	v_cndmask_b32_e64 v2, v2, v4, s18
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v20, v28, s18
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
	v_perm_b32 v0, v3, v5, v83
	v_perm_b32 v1, v3, v5, v85
	v_perm_b32 v2, v4, v6, v83
	v_perm_b32 v3, v4, v6, v85
	v_perm_b32 v4, v7, v8, v83
	v_perm_b32 v5, v7, v8, v85
	v_perm_b32 v6, v11, v14, v83
	v_perm_b32 v7, v11, v14, v85
	v_perm_b32 v10, v13, v12, v83
	v_perm_b32 v11, v13, v12, v85
	v_perm_b32 v12, v15, v17, v83
	v_perm_b32 v13, v15, v17, v85
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v83
	v_perm_b32 v9, v9, v16, v85
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s30, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v83
	v_perm_b32 v15, v19, v18, v85
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
.Ltmp29:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 145
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 145
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10520
; TotalNumSgprs: 54
; NumVgprs: 145
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 145
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     145
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
