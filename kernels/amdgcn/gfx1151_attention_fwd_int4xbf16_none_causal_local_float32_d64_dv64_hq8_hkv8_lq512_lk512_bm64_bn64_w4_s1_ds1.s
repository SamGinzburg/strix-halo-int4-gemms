	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x88
	s_load_b32 s78, s[0:1], 0x60
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_lshlrev_b32_e32 v43, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v7, 1, v0
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x80
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v43
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s79, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s4, v7
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s4, s79
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v92, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v42, 15, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s14, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[68:69], null, s78, v7, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s3, s78, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, 64
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s7, s6, s13
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s78, s5, v[68:69]
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s7, s7, 0x200
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s6, s6, 0x200
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s7, s7, 63
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s6, s6, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v2, v7, 48, v42
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[3:6], v1, s[8:11], 0 offen
	v_and_or_b32 v1, v44, 30, v92
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s8, s7, 31
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s9, s6, 31
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s8, s8, 26
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v45, s4, v2
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v7, 2, v1
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s4, s12
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s9, s9, 26
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s14
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s7, s7, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v8, 4, v7
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s6, s6, s9
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s7, s7, 63
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v45
	v_or_b32_e32 v111, s5, v2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s92, s4, 0x7fffffc0
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s93, s7, s6
	s_mov_b32 s4, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s92, s93
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v7, v3
	ds_bpermute_b32 v35, v7, v4
	ds_bpermute_b32 v37, v7, v5
	ds_bpermute_b32 v39, v7, v6
	ds_bpermute_b32 v36, v8, v3
	ds_bpermute_b32 v38, v8, v4
	ds_bpermute_b32 v40, v8, v5
	ds_bpermute_b32 v41, v8, v6
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s5, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention.py:0:24
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow325
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s67, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v110, 2, v92
	v_or_b32_e32 v109, 4, v92
	v_or_b32_e32 v108, 6, v92
	v_or_b32_e32 v107, 8, v92
	v_or_b32_e32 v106, 10, v92
	v_or_b32_e32 v105, 12, v92
	v_or_b32_e32 v104, 14, v92
	v_or_b32_e32 v103, 16, v92
	v_or_b32_e32 v102, 18, v92
	v_or_b32_e32 v101, 20, v92
	v_or_b32_e32 v100, 22, v92
	v_or_b32_e32 v99, 24, v92
	v_or_b32_e32 v98, 26, v92
	v_or_b32_e32 v97, 28, v92
	v_or_b32_e32 v96, 30, v92
	v_or_b32_e32 v95, 32, v92
	v_or_b32_e32 v94, 34, v92
	v_or_b32_e32 v93, 36, v92
	v_or_b32_e32 v91, 38, v92
	v_or_b32_e32 v90, 40, v92
	v_or_b32_e32 v89, 42, v92
	v_or_b32_e32 v88, 44, v92
	v_or_b32_e32 v87, 46, v92
	v_or_b32_e32 v86, 48, v92
	v_or_b32_e32 v85, 50, v92
	v_or_b32_e32 v84, 52, v92
	v_or_b32_e32 v81, 54, v92
	v_or_b32_e32 v79, 56, v92
	v_or_b32_e32 v83, 58, v92
	v_or_b32_e32 v82, 60, v92
	v_or_b32_e32 v80, 62, v1
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
	v_mov_b32_e32 v78, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v1, 1, v111
	v_dual_mov_b32 v51, 0xff800000 :: v_dual_and_b32 v4, 24, v44
	v_mov_b32_e32 v44, 0x7632
	s_mov_b32 s83, 0x31027000
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s82, 0x7ffffffe
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v112, 0x7f0, v43
	v_and_b32_e32 v3, 24, v0
	s_load_b32 s1, s[0:1], 0x68
	v_dual_mov_b32 v43, 0x5410 :: v_dual_lshlrev_b32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v30, v25
	v_xor_b32_e32 v121, v112, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v47, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v33, 56, v2
	v_lshl_or_b32 v122, v42, 5, v4
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	v_mov_b32_e32 v26, v25
	buffer_load_u16 v46, v1, s[80:83], 0 offen
	v_and_b32_e32 v1, 16, v0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v33
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v45, s14, v45
	v_mov_b32_e32 v24, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v1
	v_lshl_add_u32 v0, v42, 1, 0
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v48, s13, v45
	v_or_b32_e32 v113, s79, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v73, v34, v36, s0
	v_cndmask_b32_e64 v75, v36, v34, s0
	v_xor_b32_e32 v34, 8, v121
	v_cndmask_b32_e64 v36, 0x3276, v44, s0
	v_cndmask_b32_e64 v74, v35, v38, s0
	v_cndmask_b32_e64 v76, v38, v35, s0
	v_xor_b32_e32 v35, 8, v122
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[77:78], null, s67, v47, v[33:34]
	v_cndmask_b32_e64 v33, 0x1054, v43, s0
	v_lshl_or_b32 v36, v36, 8, v36
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v124, 0, v34
	v_mov_b32_e32 v17, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v33, v33, 8, v33
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v125, 0, v35
	v_mov_b32_e32 v22, v25
	v_and_b32_e32 v34, 0x760076, v36
	v_and_b32_e32 v33, 0x540054, v33
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v70, v39, v41, s0
	v_cndmask_b32_e64 v69, v37, v40, s0
	v_cndmask_b32_e64 v72, v41, v39, s0
	v_cndmask_b32_e64 v71, v40, v37, s0
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s1, 0x3fb8aa3b
	v_xor_b32_e32 v37, 16, v122
	v_xor_b32_e32 v38, 24, v122
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	v_or_b32_e32 v114, s79, v85
	v_or_b32_e32 v115, s79, v84
	v_or_b32_e32 v116, s79, v81
	v_or_b32_e32 v117, s79, v79
	v_or_b32_e32 v118, s79, v83
	v_or_b32_e32 v119, s79, v82
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v120, s12, v45
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v126, 0, v37
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v127, 0, v38
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v130, 0x7060706, v34
	v_mov_b32_e32 v9, v25
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v129, 0x5040504, v33
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v13, v25
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
	v_min_i32_e32 v123, v45, v48
	v_mov_b32_e32 v78, v25
	s_mov_b32 s68, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s94, s67, 4
	s_lshl_b32 s95, s67, 5
	s_mul_i32 s96, s67, 48
	s_mov_b32 s97, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s90, s82
	s_mov_b32 s91, s83
	s_and_b32 s89, s7, 0xffff
	s_mov_b32 s84, s10
	s_mov_b32 s88, s6
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s85, s11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v19, v25 :: v_dual_mul_f32 v128, s0, v35
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v12, v25
	v_dual_mov_b32 v14, v25 :: v_dual_mov_b32 v133, v128
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v131, v128
	v_mov_b32_e32 v132, v128
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s92, s79
	v_or_b32_e32 v56, s79, v92
	v_mad_u64_u32 v[43:44], null, s0, s78, v[68:69]
	v_or_b32_e32 v57, s79, v110
	v_or_b32_e32 v58, s79, v109
	v_or_b32_e32 v59, s79, v108
	v_or_b32_e32 v63, s79, v107
	v_or_b32_e32 v64, s79, v106
	v_or_b32_e32 v65, s79, v105
	v_or_b32_e32 v66, s79, v104
	v_or_b32_e32 v67, s79, v103
	v_or_b32_e32 v139, s79, v98
	v_or_b32_e32 v140, s79, v97
	v_or_b32_e32 v141, s79, v96
	v_or_b32_e32 v142, s79, v95
	v_or_b32_e32 v143, s79, v94
	v_or_b32_e32 v144, s79, v93
	v_or_b32_e32 v145, s79, v91
	v_or_b32_e32 v146, s79, v90
	v_or_b32_e32 v147, s79, v89
	v_or_b32_e32 v148, s79, v88
	v_or_b32_e32 v149, s79, v87
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v60, v56, s92, 1
	v_add_lshl_u32 v61, v57, s92, 1
	v_add_lshl_u32 v44, v58, s92, 1
	v_add_lshl_u32 v62, v59, s92, 1
	v_add_lshl_u32 v57, v63, s92, 1
	v_add_lshl_u32 v58, v64, s92, 1
	v_add_lshl_u32 v56, v65, s92, 1
	v_add_lshl_u32 v63, v66, s92, 1
	v_add_lshl_u32 v59, v67, s92, 1
	v_add_lshl_u32 v64, v139, s92, 1
	v_add_lshl_u32 v65, v140, s92, 1
	v_add_lshl_u32 v139, v141, s92, 1
	v_add_lshl_u32 v66, v142, s92, 1
	v_add_lshl_u32 v67, v143, s92, 1
	v_add_lshl_u32 v140, v144, s92, 1
	v_add_lshl_u32 v141, v145, s92, 1
	v_add_lshl_u32 v142, v146, s92, 1
	v_add_lshl_u32 v143, v147, s92, 1
	v_add_lshl_u32 v144, v148, s92, 1
	v_add_lshl_u32 v145, v149, s92, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[146:149], v43, s[80:83], 0 offen
	v_add_nc_u32_e32 v45, 0, v121
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s68 :: v_dual_add_nc_u32 v46, 0, v122
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v154, s92, v88
	v_or_b32_e32 v155, s92, v89
	v_or_b32_e32 v156, s92, v90
	v_or_b32_e32 v157, s92, v91
	v_or_b32_e32 v181, s92, v81
	v_mad_u64_u32 v[41:42], null, s0, s67, v[77:78]
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v34, s69
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v42, s0, v80, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v154, v120
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s1, v123, v154
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v155, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s6, v123, v155
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v156, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s7, v123, v156
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v157, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s10, v123, v157
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s65, v181, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s66, v123, v181
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v150, s92, v84
	v_or_b32_e32 v151, s92, v85
	v_or_b32_e32 v152, s92, v86
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v35, s70 :: v_dual_mov_b32 v36, s71
	v_dual_mov_b32 v37, s72 :: v_dual_mov_b32 v38, s73
	v_dual_mov_b32 v39, s74 :: v_dual_mov_b32 v40, s75
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v153, s92, v87
	v_or_b32_e32 v158, s92, v93
	v_or_b32_e32 v159, s92, v94
	v_or_b32_e32 v165, s92, v100
	v_or_b32_e32 v166, s92, v101
	v_or_b32_e32 v167, s92, v102
	v_or_b32_e32 v168, s92, v103
	v_or_b32_e32 v169, s92, v104
	v_or_b32_e32 v170, s92, v105
	v_or_b32_e32 v171, s92, v106
	v_or_b32_e32 v172, s92, v107
	v_or_b32_e32 v173, s92, v108
	v_or_b32_e32 v174, s92, v109
	v_or_b32_e32 v175, s92, v110
	v_or_b32_e32 v176, s92, v92
	v_or_b32_e32 v177, s92, v80
	v_or_b32_e32 v178, s92, v82
	v_or_b32_e32 v179, s92, v83
	v_or_b32_e32 v180, s92, v79
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v150, v120
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s39, v123, v150
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v151, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s44, v123, v151
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s43, v152, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s48, v123, v152
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v151, v41, s94, 1
	v_add_lshl_u32 v152, v41, s95, 1
	v_lshlrev_b32_e32 v150, 1, v41
	v_add_nc_u32_e32 v55, 0, v112
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s49, v153, v120
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s54, v123, v153
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v158, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s11, v123, v158
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v159, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v123, v159
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v165, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v123, v165
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v166, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s34, v123, v166
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s35, v167, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s36, v123, v167
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v168, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v123, v168
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v169, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s27, v123, v169
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v170, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v123, v170
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v171, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s42, v123, v171
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s41, v172, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s45, v123, v172
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v173, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s51, v123, v173
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v174, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s55, v123, v174
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s56, v175, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s60, v123, v175
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s59, v176, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s63, v123, v176
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s47, v177, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s53, v123, v177
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s52, v178, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s57, v123, v178
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s58, v179, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s62, v123, v179
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s61, v180, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s64, v123, v180
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_dual_cndmask_b32 v158, 0x80000000, v151 :: v_dual_cndmask_b32 v159, 0x80000000, v152
	v_cndmask_b32_e32 v43, 0x80000000, v150, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, s92, v95
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v41, v41, s96, 1
	v_or_b32_e32 v135, s79, v102
	v_or_b32_e32 v136, s79, v101
	v_or_b32_e32 v137, s79, v100
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v160, v120
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s15, v123, v160
	v_or_b32_e32 v138, s79, v99
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_add_lshl_u32 v52, v113, s92, 1
	v_add_lshl_u32 v53, v114, s92, 1
	v_add_lshl_u32 v54, v115, s92, 1
	v_add_lshl_u32 v48, v116, s92, 1
	v_add_lshl_u32 v49, v117, s92, 1
	v_add_lshl_u32 v47, v118, s92, 1
	v_add_lshl_u32 v50, v119, s92, 1
	v_add_lshl_u32 v135, v135, s92, 1
	v_add_lshl_u32 v136, v136, s92, 1
	v_add_lshl_u32 v137, v137, s92, 1
	v_add_lshl_u32 v138, v138, s92, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s92, v97
	v_or_b32_e32 v163, s92, v98
	v_or_b32_e32 v164, s92, v99
	v_or_b32_e32 v161, s92, v96
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s39, s39, s37
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v162, v120
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v123, v162
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v163, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s25, v123, v163
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v164, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v123, v164
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v161, v120
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v123, v161
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s37, s44, s40
	s_and_b32 s40, s48, s43
	s_and_b32 s43, s54, s49
	s_and_b32 s44, s20, s17
	s_and_b32 s20, s25, s21
	s_and_b32 s21, s28, s24
	s_and_b32 s24, s33, s29
	s_and_b32 s49, s34, s31
	s_and_b32 s34, s51, s46
	s_and_b32 s31, s60, s56
	s_and_b32 s33, s63, s59
	s_and_b32 s48, s1, s0
	s_and_b32 s29, s27, s23
	s_and_b32 s1, s2, s40
	s_and_b32 s27, s2, s34
	s_and_b32 s31, s2, s31
	s_and_b32 s33, s2, s33
	s_and_b32 s6, s6, s4
	s_and_b32 s7, s7, s5
	s_and_b32 s8, s10, s8
	s_and_b32 s9, s11, s9
	s_and_b32 s10, s14, s12
	s_and_b32 s11, s15, s13
	s_and_b32 s18, s18, s16
	s_and_b32 s54, s36, s35
	s_and_b32 s13, s42, s38
	s_and_b32 s36, s45, s41
	s_and_b32 s25, s30, s26
	s_and_b32 s14, s64, s61
	s_and_b32 s16, s66, s65
	s_and_b32 s12, s22, s19
	s_and_b32 s4, s2, s43
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	s_and_b32 s18, s2, s18
	s_and_b32 s19, s2, s20
	s_and_b32 s20, s2, s21
	s_and_b32 s22, s2, s24
	s_and_b32 s23, s2, s49
	s_and_b32 s24, s2, s54
	s_and_b32 s21, s2, s44
	s_and_b32 s26, s2, s36
	s_and_b32 s30, s2, s13
	s_and_b32 s34, s2, s25
	s_and_b32 s14, s2, s14
	s_and_b32 s16, s2, s16
	s_and_b32 s28, s55, s50
	s_and_b32 s17, s53, s47
	s_and_b32 s15, s57, s52
	s_and_b32 s0, s2, s39
	s_and_b32 s5, s2, s48
	s_and_b32 s28, s2, s28
	s_and_b32 s29, s2, s29
	s_and_b32 s25, s2, s12
	s_and_b32 s12, s2, s17
	s_and_b32 s15, s2, s15
	s_and_b32 s17, s2, s37
	s_and_b32 s35, s62, s58
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.h, 0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s2, s35
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s35, 0xff800000, v51
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s92, s92, 64
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v45, v[146:147]
	ds_store_b64 v124, v[148:149]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[154:157], v46 offset1:1
	ds_load_2addr_stride64_b64 v[181:184], v46 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[189:192], v125 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[193:196], v125 offset1:1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.h, v134.h
	v_mov_b16_e64 v163.h, v134.h
	v_mov_b16_e64 v162.h, v134.h
	v_mov_b16_e64 v164.h, v134.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s92, s93
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[75:76], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[183:184], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[181:182], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[156:157], v[75:76], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v126 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v126 offset1:1
	ds_load_2addr_stride64_b64 v[154:157], v127 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[191:192], v[71:72], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[189:190], v[71:72], v[173:180] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[193:194], v[71:72], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[195:196], v[71:72], v[181:188] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[35:36], v[73:74], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[33:34], v[73:74], v[173:180] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v127 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[37:38], v[73:74], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[39:40], v[73:74], v[181:188] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[156:157], v[69:70], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[154:155], v[69:70], v[173:180] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[154:157], v158, s[88:91], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v160, v165
	v_cvt_f32_i32_e32 v165, v166
	v_cvt_f32_i32_e32 v166, v168
	v_cvt_f32_i32_e32 v168, v169
	v_cvt_f32_i32_e32 v169, v171
	v_mul_f32_e32 v160, v132, v160
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[37:40], v43, s[88:91], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v171, v172
	v_cvt_f32_i32_e32 v172, v173
	v_cvt_f32_i32_e32 v173, v175
	v_cvt_f32_i32_e32 v175, v176
	v_cvt_f32_i32_e32 v176, v177
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[33:34], v[69:70], v[146:153] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v177, v178
	v_cvt_f32_i32_e32 v178, v179
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[181:188], v[35:36], v[69:70], v[181:188] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v146
	v_cvt_f32_i32_e32 v45, v147
	v_cvt_f32_i32_e32 v46, v149
	v_cvt_f32_i32_e32 v158, v148
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[33:36], v159, s[88:91], 0 offen
	buffer_load_b128 v[146:149], v41, s[88:91], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v41, v140, s[84:87], 0 offen
	buffer_load_u16 v140, v141, s[84:87], 0 offen
	buffer_load_u16 v141, v142, s[84:87], 0 offen
	buffer_load_u16 v142, v143, s[84:87], 0 offen
	buffer_load_u16 v143, v144, s[84:87], 0 offen
	buffer_load_u16 v144, v145, s[84:87], 0 offen
	buffer_load_u16 v52, v52, s[84:87], 0 offen
	buffer_load_u16 v53, v53, s[84:87], 0 offen
	buffer_load_u16 v54, v54, s[84:87], 0 offen
	buffer_load_u16 v135, v135, s[84:87], 0 offen
	buffer_load_u16 v136, v136, s[84:87], 0 offen
	buffer_load_u16 v137, v137, s[84:87], 0 offen
	buffer_load_u16 v138, v138, s[84:87], 0 offen
	buffer_load_u16 v139, v139, s[84:87], 0 offen
	buffer_load_u16 v64, v64, s[84:87], 0 offen
	buffer_load_u16 v65, v65, s[84:87], 0 offen
	buffer_load_u16 v66, v66, s[84:87], 0 offen
	buffer_load_u16 v67, v67, s[84:87], 0 offen
	buffer_load_u16 v60, v60, s[84:87], 0 offen
	buffer_load_u16 v61, v61, s[84:87], 0 offen
	buffer_load_u16 v62, v62, s[84:87], 0 offen
	buffer_load_u16 v63, v63, s[84:87], 0 offen
	buffer_load_u16 v57, v57, s[84:87], 0 offen
	buffer_load_u16 v58, v58, s[84:87], 0 offen
	buffer_load_u16 v44, v44, s[84:87], 0 offen
	buffer_load_u16 v56, v56, s[84:87], 0 offen
	buffer_load_u16 v59, v59, s[84:87], 0 offen
	buffer_load_u16 v48, v48, s[84:87], 0 offen
	buffer_load_u16 v49, v49, s[84:87], 0 offen
	buffer_load_u16 v50, v50, s[84:87], 0 offen
	buffer_load_u16 v42, v42, s[84:87], 0 offen
	buffer_load_u16 v47, v47, s[84:87], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v179, v180
	v_cvt_f32_i32_e32 v180, v182
	v_cvt_f32_i32_e32 v182, v183
	v_cvt_f32_i32_e32 v183, v184
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v184, v185
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, v128, v173
	v_mul_f32_e32 v159, v131, v175
	v_dual_mul_f32 v173, v132, v176 :: v_dual_mul_f32 v174, v131, v174
	v_dual_mul_f32 v175, v133, v177 :: v_dual_mul_f32 v176, v128, v178
	v_mul_f32_e32 v178, v128, v180
	v_dual_mul_f32 v180, v132, v183 :: v_dual_mul_f32 v169, v133, v169
	v_dual_mul_f32 v177, v131, v179 :: v_dual_mul_f32 v172, v133, v172
	v_mul_f32_e32 v165, v133, v165
	v_dual_mul_f32 v179, v131, v182 :: v_dual_mul_f32 v182, v133, v184
	v_mul_f32_e32 v184, v128, v186
	v_mul_f32_e32 v181, v128, v181
	v_mul_f32_e32 v189, v128, v166
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v185, v188
	v_cvt_f32_i32_e32 v187, v187
	v_mul_f32_e32 v171, v133, v171
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v151, v151
	v_dual_mul_f32 v167, v132, v167 :: v_dual_mul_f32 v188, v133, v46
	v_dual_mul_f32 v183, v132, v185 :: v_dual_mul_f32 v168, v131, v168
	v_dual_mul_f32 v185, v131, v187 :: v_dual_mul_f32 v158, v132, v158
	v_dual_mul_f32 v186, v128, v43 :: v_dual_mul_f32 v187, v131, v45
	v_dual_mul_f32 v152, v132, v152 :: v_dual_mul_f32 v153, v133, v153
	v_mul_f32_e32 v150, v128, v150
	v_cvt_f32_i32_e32 v170, v170
	v_mul_f32_e32 v151, v131, v151
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(34)
	ds_store_b128 v55, v[37:40]
	ds_store_b128 v55, v[154:157] offset:2048
	s_waitcnt vmcnt(33)
	ds_store_b128 v55, v[33:36] offset:4096
	s_waitcnt vmcnt(32)
	ds_store_b128 v55, v[146:149] offset:6144
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v36, 16, v142
	v_lshlrev_b32_e32 v35, 16, v141
	v_lshlrev_b32_e32 v34, 16, v140
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v38, 16, v143
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v154, v175, v36 :: v_dual_lshlrev_b32 v33, 16, v41
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v35, v173, v35 :: v_dual_lshlrev_b32 v140, 16, v53
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v135, 16, v135
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v38, v176, v38 :: v_dual_lshlrev_b32 v39, 16, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v159, v34
	v_dual_mul_f32 v33, v145, v33 :: v_dual_lshlrev_b32 v136, 16, v136
	v_mul_f32_e32 v140, v165, v140
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v135, v178, v135 :: v_dual_lshlrev_b32 v64, 16, v64
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v52, v160, v52 :: v_dual_lshlrev_b32 v141, 16, v54
	v_dual_mul_f32 v136, v179, v136 :: v_dual_lshlrev_b32 v137, 16, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v141, v167, v141 :: v_dual_lshlrev_b32 v66, 16, v66
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v155, v180, v137 :: v_dual_lshlrev_b32 v142, 16, v60
	v_mul_f32_e32 v145, v177, v39
	v_dual_mul_f32 v156, v182, v138 :: v_dual_lshlrev_b32 v139, 16, v139
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v62, 16, v62
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v184, v64
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v67, v174, v67 :: v_dual_lshlrev_b32 v146, 16, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v66, v172, v66 :: v_dual_lshlrev_b32 v65, 16, v65
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v144, 16, v56
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v159, v186, v142 :: v_dual_lshlrev_b32 v148, 16, v59
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v157, v183, v139
	v_dual_mul_f32 v62, v188, v62 :: v_dual_lshlrev_b32 v143, 16, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v147, 16, v58
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v150, v150, v146
	v_dual_mul_f32 v61, v187, v61 :: v_dual_lshlrev_b32 v48, 16, v48
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v170, v132, v170 :: v_dual_lshlrev_b32 v47, 16, v47
	v_mul_f32_e32 v65, v185, v65
	v_dual_mul_f32 v152, v152, v144 :: v_dual_lshlrev_b32 v63, 16, v63
	v_mul_f32_e32 v158, v158, v143
	v_dual_mul_f32 v151, v151, v147 :: v_dual_lshlrev_b32 v50, 16, v50
	v_mul_f32_e32 v148, v181, v148
	v_mul_f32_e32 v48, v189, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v52, s1
	v_cndmask_b32_e64 v52, 0xff800000, v61, s31
	v_cndmask_b32_e64 v61, 0xff800000, v159, s33
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v149, 16, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v62, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v168, v49 :: v_dual_mul_f32 v50, v169, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v145, s4
	v_cndmask_b32_e64 v142, 0xff800000, v35, s7
	v_cndmask_b32_e64 v144, 0xff800000, v34, s8
	v_cndmask_b32_e64 v145, 0xff800000, v33, s9
	v_cndmask_b32_e64 v143, 0xff800000, v154, s6
	v_cndmask_b32_e64 v34, 0xff800000, v65, s21
	v_cndmask_b32_e64 v64, 0xff800000, v64, s19
	v_cndmask_b32_e64 v146, 0xff800000, v66, s11
	v_cndmask_b32_e64 v65, 0xff800000, v157, s18
	v_cndmask_b32_e64 v147, 0xff800000, v67, s10
	v_cndmask_b32_e64 v66, 0xff800000, v155, s22
	v_cndmask_b32_e64 v67, 0xff800000, v136, s23
	v_cndmask_b32_e64 v189, 0xff800000, v135, s24
	v_cndmask_b32_e64 v190, 0xff800000, v156, s20
	v_cndmask_b32_e64 v33, 0xff800000, v151, s30
	v_cndmask_b32_e64 v35, 0xff800000, v150, s26
	v_cndmask_b32_e64 v150, 0xff800000, v49, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v63, v153, v63
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v152, s34
	v_cndmask_b32_e64 v152, 0xff800000, v48, s16
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v154, v61, v52 :: v_dual_mul_f32 v149, v171, v149
.Ltmp2:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v170, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v140, s17
	v_cndmask_b32_e64 v140, 0xff800000, v38, s5
	v_cndmask_b32_e64 v141, 0xff800000, v141, s0
	v_cndmask_b32_e64 v135, 0xff800000, v158, s28
	v_cndmask_b32_e64 v191, 0xff800000, v148, s25
	v_cndmask_b32_e64 v148, 0xff800000, v50, s15
	v_cndmask_b32_e64 v149, 0xff800000, v149, s12
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v65, v146, v147
	v_max3_f32 v50, v189, v67, v66
	v_max3_f32 v136, v190, v64, v34
	v_max3_f32 v155, v62, v35, v33
	v_max_f32_e32 v156, v152, v150
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v63, s29
	v_cndmask_b32_e64 v151, 0xff800000, v47, s13
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v145, v144, v142
	v_max3_f32 v47, v143, v140, v139
	v_max3_f32 v48, v138, v137, v141
	v_max_f32_e32 v157, v148, v149
	v_max3_f32 v158, v153, v63, v191
	v_max3_f32 v49, v50, v136, v49
	v_max3_f32 v50, v154, v135, v155
	v_max3_f32 v47, v38, v47, v48
	v_max3_f32 v48, v156, v151, v157
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v50, v158, v49
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v167, v0 offset:608
	ds_load_u16_d16 v166, v0 offset:352
	ds_load_u16_d16 v42, v0 offset:768
	ds_load_u16_d16 v41, v0 offset:512
	ds_load_u16_d16 v37, v0 offset:288
	ds_load_u16_d16 v56, v0 offset:832
	ds_load_u16_d16 v43, v0 offset:1024
	ds_load_u16_d16 v57, v0 offset:1088
	ds_load_u16_d16 v44, v0 offset:1280
	ds_load_u16_d16 v58, v0 offset:1344
	ds_load_u16_d16 v45, v0 offset:1536
	ds_load_u16_d16 v59, v0 offset:1600
	ds_load_u16_d16 v46, v0 offset:1792
	ds_load_u16_d16 v60, v0 offset:1856
	ds_load_u16_d16 v40, v0 offset:256
	ds_load_u16_d16 v39, v0
	ds_load_u16_d16 v36, v0 offset:32
	ds_load_u16_d16 v55, v0 offset:576
	ds_load_u16_d16 v53, v0 offset:64
	ds_load_u16_d16 v54, v0 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v166, v0 offset:480
	ds_load_u16_d16 v165, v0 offset:96
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v40, v0 offset:384
	ds_load_u16_d16_hi v41, v0 offset:640
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v55, v0 offset:704
	ds_load_u16_d16 v38, v0 offset:544
	ds_load_u16_d16_hi v42, v0 offset:896
	ds_load_u16_d16_hi v56, v0 offset:960
	ds_load_u16_d16 v168, v0 offset:864
	ds_load_u16_d16_hi v43, v0 offset:1152
	ds_load_u16_d16_hi v57, v0 offset:1216
	ds_load_u16_d16 v169, v0 offset:1120
	ds_load_u16_d16_hi v44, v0 offset:1408
	ds_load_u16_d16_hi v58, v0 offset:1472
	ds_load_u16_d16 v170, v0 offset:1376
	ds_load_u16_d16_hi v45, v0 offset:1664
	ds_load_u16_d16_hi v59, v0 offset:1728
	ds_load_u16_d16 v171, v0 offset:1632
	ds_load_u16_d16_hi v46, v0 offset:1920
	ds_load_u16_d16_hi v60, v0 offset:1984
	ds_load_u16_d16 v173, v0 offset:2048
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v49, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v48, v47, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v136, v51, v47, v48
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v61, v136
	v_sub_f32_e32 v50, v62, v136
	v_sub_f32_e32 v49, v135, v136
	v_sub_f32_e32 v34, v34, v136
	v_sub_f32_e32 v138, v138, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v138, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v48, s33
	v_cndmask_b32_e64 v158, 0, v50, s27
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v157, 0, v49, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v67, v136
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v161.l, v156.h
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v62, v51, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v156, v156
	v_mov_b16_e64 v162.l, v157.h
	v_cmp_o_f32_e64 s28, v158, v158
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v66, v136
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v62, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v51, v51
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v135, 0, v62, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v136
	v_sub_f32_e32 v33, v33, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v61, v63, v136 :: v_dual_mul_f32 v30, v30, v135
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v135
	v_mul_f32_e32 v20, v20, v135
	v_mul_f32_e32 v24, v24, v135
	v_mul_f32_e32 v22, v22, v135
	v_mul_f32_e32 v25, v25, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v35, s26
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v33, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v61, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.l, v159.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v52, v136
	v_sub_f32_e32 v52, v153, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v156, v33, 0x7fff
	v_cmp_o_f32_e64 s29, v157, v157
	v_and_b32_e32 v48, 1, v163
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v52, v52
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v160, v160
	v_cmp_o_f32_e64 s33, v154, v154
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v135
	v_mul_f32_e32 v31, v31, v135
	v_mul_f32_e32 v9, v9, v135
	v_mul_f32_e32 v10, v10, v135
	v_mul_f32_e32 v11, v11, v135
	v_mul_f32_e32 v12, v12, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v47, s31
	v_cndmask_b32_e64 v153, 0, v52, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v162
	v_cmp_o_f32_e64 s31, v159, v159
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v155.h
	v_cmp_o_f32_e64 s26, v155, v155
	v_mov_b16_e64 v164.l, v153.h
	v_cmp_o_f32_e64 s34, v153, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v14, v14, v135 :: v_dual_and_b32 v35, 1, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v158.h
	v_and_b32_e32 v49, 1, v164
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v135
	v_mul_f32_e32 v16, v16, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v155, v35, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v33.h, s27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v50, s23
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v135
	v_mul_f32_e32 v3, v3, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s26
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v135
	v_mul_f32_e32 v8, v8, v135
	v_mul_f32_e32 v17, v17, v135
	v_mul_f32_e32 v19, v19, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v33, v35, s97, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v135
	v_mul_f32_e32 v23, v23, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v51, s22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v181, v33, v35, v129
	v_perm_b32 v182, v33, v35, v130
	v_and_b32_e32 v33, 1, v134
	v_mov_b16_e64 v134.l, v160.h
	v_add3_u32 v35, v157, v47, 0x7fff
	v_add3_u32 v47, v159, v48, 0x7fff
	v_add3_u32 v48, v153, v49, 0x7fff
	v_add3_u32 v33, v158, v33, 0x7fff
	v_and_b32_e32 v49, 1, v134
	v_mov_b16_e64 v134.l, v154.h
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s29
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s34
	v_cndmask_b16 v35.l, 0x7fff, v47.h, s31
	v_add3_u32 v49, v160, v49, 0x7fff
	v_and_b32_e32 v48, 1, v134
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v35.h, 0x7fff, v49.h, s30
	v_add3_u32 v48, v154, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v49, v33, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v47.h, 0x7fff, v48.h, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v48, v35, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v183, v49, v33, v129
	v_perm_b32 v184, v49, v33, v130
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v189, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v33, v47, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v185, v48, v35, v129
	v_perm_b32 v186, v48, v35, v130
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v35, v0 offset:2112
	ds_load_u16_d16 v172, v0 offset:1888
	ds_load_u16_d16_hi v39, v0 offset:128
	ds_load_u16_d16_hi v36, v0 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v53, v0 offset:192
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v165, v0 offset:224
	ds_load_u16_d16_hi v37, v0 offset:416
	ds_load_u16_d16_hi v54, v0 offset:448
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v191, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v187, v33, v47, v129
	v_perm_b32 v188, v33, v47, v130
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v47.h, v134.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v33, v0 offset:4096
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v35, v0 offset:2240
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v49, s24
	v_cndmask_b32_e64 v161, 0, v48, s25
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v135
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v162.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[53:60], v[181:188], v[9:16]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v54, v64, v136
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[39:46], v[181:188], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v39, v0 offset:800
	ds_load_u16_d16 v40, v0 offset:1056
	ds_load_u16_d16 v41, v0 offset:1312
	ds_load_u16_d16 v42, v0 offset:1568
	ds_load_u16_d16 v43, v0 offset:1824
	ds_load_u16_d16_hi v38, v0 offset:672
	ds_load_u16_d16_hi v167, v0 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v39, v0 offset:928
	ds_load_u16_d16_hi v168, v0 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v40, v0 offset:1184
	ds_load_u16_d16_hi v169, v0 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v41, v0 offset:1440
	ds_load_u16_d16_hi v170, v0 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v42, v0 offset:1696
	ds_load_u16_d16_hi v171, v0 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v43, v0 offset:1952
	ds_load_u16_d16_hi v172, v0 offset:2016
	ds_load_u16_d16 v174, v0 offset:2304
	ds_load_u16_d16_hi v173, v0 offset:2176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v190, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.h, v134.h
	v_mov_b16_e64 v46.h, v134.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v135
	v_mul_f32_e32 v6, v6, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.l, v163.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v135 :: v_dual_sub_f32 v55, v65, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v52, v0 offset:2080
	ds_load_u16_d16 v44, v0 offset:2144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[36:43], v[181:188], v[17:24]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[165:172], v[181:188], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v53, s20
	v_cndmask_b32_e64 v167, 0, v34, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v43.h, v134.h
	v_mov_b16_e64 v43.l, v161.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v54, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v46.l, v165.h
	v_mov_b16_e64 v47.l, v167.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v168, 0, v55, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v43
	v_and_b32_e32 v43, 1, v45
	v_and_b32_e32 v45, 1, v46
	v_and_b32_e32 v46, 1, v47
	v_and_b32_e32 v47, 1, v134
	v_cmp_o_f32_e64 s18, v162, v162
	v_cmp_o_f32_e64 s19, v161, v161
	v_add3_u32 v34, v161, v34, 0x7fff
	v_mov_b16_e64 v134.l, v164.h
	v_add3_u32 v47, v162, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v164, v164
	v_cmp_o_f32_e64 s21, v163, v163
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_add3_u32 v43, v163, v43, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v47.h, s18
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v41, v0 offset:3648
	ds_load_u16_d16 v180, v0 offset:3840
	ds_load_u16_d16 v42, v0 offset:3904
	ds_load_u16_d16 v36, v0 offset:2368
	ds_load_u16_d16 v175, v0 offset:2560
	ds_load_u16_d16 v37, v0 offset:2624
	ds_load_u16_d16 v176, v0 offset:2816
	ds_load_u16_d16 v38, v0 offset:2880
	ds_load_u16_d16 v177, v0 offset:3072
	ds_load_u16_d16 v39, v0 offset:3136
	ds_load_u16_d16 v178, v0 offset:3328
	ds_load_u16_d16 v40, v0 offset:3392
	ds_load_u16_d16 v179, v0 offset:3584
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v166, v166
	v_cmp_o_f32_e64 s23, v165, v165
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s21
	v_permlanex16_b32 v47, v34, s97, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s24, v168, v168
	v_cmp_o_f32_e64 s25, v167, v167
	v_add3_u32 v45, v165, v45, 0x7fff
	v_add3_u32 v46, v167, v46, 0x7fff
	v_perm_b32 v60, v47, v34, v129
	v_perm_b32 v61, v47, v34, v130
	v_and_b32_e32 v34, 1, v134
	v_mov_b16_e64 v134.l, v166.h
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s23
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s25
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v41, v0 offset:3776
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v180, v0 offset:3968
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v42, v0 offset:4032
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v164, v34, 0x7fff
	v_and_b32_e32 v47, 1, v134
	v_mov_b16_e64 v134.l, v168.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v43.h, 0x7fff, v34.h, s20
	v_add3_u32 v47, v166, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v34, 1, v134
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v168, v34, 0x7fff
	v_permlanex16_b32 v47, v43, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.h, 0x7fff, v34.h, s24
	v_perm_b32 v62, v47, v43, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v34, v45, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v63, v47, v43, v130
	v_permlanex16_b32 v43, v46, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v64, v34, v45, v129
	v_perm_b32 v65, v34, v45, v130
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v59, v0 offset:3872
	ds_load_u16_d16 v34, v0 offset:4352
	ds_load_u16_d16 v53, v0 offset:2336
	ds_load_u16_d16 v54, v0 offset:2592
	ds_load_u16_d16 v55, v0 offset:2848
	ds_load_u16_d16 v56, v0 offset:3104
	ds_load_u16_d16 v57, v0 offset:3360
	ds_load_u16_d16 v58, v0 offset:3616
	ds_load_u16_d16_hi v52, v0 offset:2208
	ds_load_u16_d16_hi v44, v0 offset:2272
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v66, v43, v46, v129
	v_perm_b32 v67, v43, v46, v130
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v0 offset:4160
	ds_load_u16_d16 v51, v0 offset:3936
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v36, v0 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v175, v0 offset:2688
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v37, v0 offset:2752
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v176, v0 offset:2944
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v38, v0 offset:3008
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v177, v0 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v39, v0 offset:3264
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v178, v0 offset:3456
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v40, v0 offset:3520
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v179, v0 offset:3712
	ds_load_u16_d16_hi v174, v0 offset:2432
	ds_load_u16_d16 v45, v0 offset:2400
	ds_load_u16_d16 v46, v0 offset:2656
	ds_load_u16_d16 v47, v0 offset:2912
	ds_load_u16_d16 v48, v0 offset:3168
	ds_load_u16_d16 v49, v0 offset:3424
	ds_load_u16_d16 v50, v0 offset:3680
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[35:42], v[60:67], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v42.h, v134.h
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[173:180], v[60:67], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v53, v0 offset:2464
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v45, v0 offset:2528
	ds_load_u16_d16_hi v54, v0 offset:2720
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v0 offset:2784
	ds_load_u16_d16_hi v55, v0 offset:2976
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v47, v0 offset:3040
	ds_load_u16_d16_hi v56, v0 offset:3232
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v48, v0 offset:3296
	ds_load_u16_d16_hi v57, v0 offset:3488
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v49, v0 offset:3552
	ds_load_u16_d16_hi v58, v0 offset:3744
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v50, v0 offset:3808
	ds_load_u16_d16_hi v59, v0 offset:4000
	ds_load_u16_d16_hi v51, v0 offset:4064
	ds_load_u16_d16_hi v33, v0 offset:4224
	ds_load_u16_d16 v169, v0 offset:4128
	ds_load_u16_d16 v177, v0 offset:4192
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v179.h, v134.h
	v_mov_b32_e32 v41, v78
	v_mov_b16_e64 v78.h, v134.h
	v_mov_b16_e64 v178.h, v134.h
	v_mov_b16_e64 v180.h, v134.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[52:59], v[60:67], v[17:24]
.Ltmp12:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v56, v156, v155 :: v_dual_sub_f32 v59, v146, v136
.Ltmp13:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[44:51], v[60:67], v[1:8]
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v58, v159, v160
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v140, v136
	v_sub_f32_e32 v67, v139, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v152, v136
	v_sub_f32_e32 v63, v144, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v52.h, v134.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v149, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v140, v140
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v157, v158 :: v_dual_sub_f32 v60, v147, v136
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v142, v136
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s11
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v151, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v64, v64
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v59.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v141, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v140, s16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v51.h, v134.h
	v_and_b32_e32 v42, 1, v42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v187, 0, v144, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v55.h, v134.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v44, v0 offset:4416
	ds_load_u16_d16 v35, v0 offset:4608
	ds_load_u16_d16 v170, v0 offset:4384
	ds_load_u16_d16 v45, v0 offset:4672
	ds_load_u16_d16 v36, v0 offset:4864
	ds_load_u16_d16 v171, v0 offset:4640
	ds_load_u16_d16 v46, v0 offset:4928
	ds_load_u16_d16 v37, v0 offset:5120
	ds_load_u16_d16 v172, v0 offset:4896
	ds_load_u16_d16 v47, v0 offset:5184
	ds_load_u16_d16 v38, v0 offset:5376
	ds_load_u16_d16 v173, v0 offset:5152
	ds_load_u16_d16 v48, v0 offset:5440
	ds_load_u16_d16 v39, v0 offset:5632
	ds_load_u16_d16 v174, v0 offset:5408
	ds_load_u16_d16 v49, v0 offset:5696
	ds_load_u16_d16 v40, v0 offset:5888
	ds_load_u16_d16 v175, v0 offset:5664
	ds_load_u16_d16 v50, v0 offset:5952
	ds_load_u16_d16 v53, v0 offset:6464
	ds_load_u16_d16 v62, v0 offset:6656
	ds_load_u16_d16 v54, v0 offset:6720
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v59, v42, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v186, 0, v142, s13
	v_cndmask_b32_e64 v152, 0, v139, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v65, v143, v136
	v_sub_f32_e32 v143, v148, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v66, s5
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v165, v166
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v51.l, v152.h
	v_cmp_o_f32_e64 s11, v152, v152
	v_mov_b16_e64 v78.l, v148.h
	v_cmp_o_f32_e64 s0, v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v51, 1, v51
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v63, s8
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v63, v153, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v166, v148, v78, 0x7fff
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v154, v58, v63
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v67, s4
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v167, v168
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v145, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v60, s10
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v148, v149
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v158, v66, v67
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v61, v61
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v56, v57
	v_add_f32_e32 v56, v152, v185
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v152, v152, v51, 0x7fff
	v_mov_b16_e64 v134.l, v145.h
	v_cmp_o_f32_e64 s5, v145, v145
	v_cmp_o_f32_e64 s8, v149, v149
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v143, s15
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v137, v137, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v61, s9
	v_cndmask_b32_e64 v61, 0, v64, s7
	v_cndmask_b32_e64 v147, 0, v65, s6
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v58, v156, v187 :: v_dual_sub_f32 v141, v150, v136
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v138, s1
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v64, v161, v162 :: v_dual_add_f32 v65, v163, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v139, v61, v147 :: v_dual_add_f32 v138, v60, v146
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v148, v148
	v_mov_b16_e32 v55.l, v61.h
	v_mov_b16_e32 v52.l, v60.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v137, s17
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v139, v140
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v60, v60
	v_cmp_o_f32_e64 s4, v61, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v141, s14
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v141, v150, v151 :: v_dual_and_b32 v52, 1, v52
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v146, v146
	v_mov_b16_e64 v178.l, v150.h
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v57, v155, v186
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v161, v141, v56
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v52, v60, v52, 0x7fff
	v_mov_b16_e64 v179.l, v155.h
	v_mov_b16_e64 v180.l, v156.h
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v162, v57, v58 :: v_dual_add_f32 v157, v64, v65
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v147, v147
	v_and_b32_e32 v163, 1, v178
	v_and_b32_e32 v164, 1, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v148, v157, v158 :: v_dual_and_b32 v165, 1, v180
	v_dual_add_f32 v137, v59, v145 :: v_dual_add_f32 v78, v153, v154
	v_add_f32_e32 v154, v161, v162
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v150, v150
	v_cmp_o_f32_e64 s12, v155, v155
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v137, v138
	v_add_f32_e32 v51, v78, v148
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v148.l, 0x7fff, v52.h, s1
	v_cmp_o_f32_e64 s13, v156, v156
	v_add3_u32 v150, v150, v163, 0x7fff
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v159, v160
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v155, v155, v164, 0x7fff
	v_add3_u32 v156, v156, v165, 0x7fff
	v_cndmask_b16 v162.l, 0x7fff, v152.h, s11
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v153, v154
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v137, v61, v55, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v137, v0 offset:6240
	ds_load_u16_d16 v61, v0 offset:6400
	ds_load_u16_d16 v63, v0 offset:6912
	ds_load_u16_d16 v55, v0 offset:6976
	ds_load_u16_d16 v139, v0 offset:6752
	ds_load_u16_d16 v64, v0 offset:7168
	ds_load_u16_d16 v56, v0 offset:7232
	ds_load_u16_d16 v140, v0 offset:7008
	ds_load_u16_d16 v65, v0 offset:7424
	ds_load_u16_d16 v57, v0 offset:7488
	ds_load_u16_d16 v141, v0 offset:7264
	ds_load_u16_d16 v66, v0 offset:7680
	ds_load_u16_d16 v58, v0 offset:7744
	ds_load_u16_d16 v142, v0 offset:7520
	ds_load_u16_d16 v67, v0 offset:7936
	ds_load_u16_d16 v59, v0 offset:8000
	ds_load_u16_d16 v143, v0 offset:7776
	ds_load_u16_d16 v144, v0 offset:8032
	ds_load_u16_d16 v176, v0 offset:5920
	ds_load_u16_d16 v52, v0 offset:6208
	ds_load_u16_d16 v60, v0 offset:6144
	ds_load_u16_d16 v138, v0 offset:6496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v53, v0 offset:6592
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v62, v0 offset:6784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v54, v0 offset:6848
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v151, v151
	v_cmp_o_f32_e64 s1, v185, v185
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v78
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v163.l, 0x7fff, v155.h, s12
	v_cndmask_b16 v164.l, 0x7fff, v156.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v51, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v51, v78
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v51, 1, v134
	v_mov_b16_e64 v134.l, v146.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v78, v41, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v51, v145, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v153, 1, v134
	v_mov_b16_e64 v134.l, v147.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v155, v0 offset:6688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v63, v0 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v55, v0 offset:7104
	ds_load_u16_d16 v156, v0 offset:6944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v64, v0 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v56, v0 offset:7360
	ds_load_u16_d16 v157, v0 offset:7200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v65, v0 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v57, v0 offset:7616
	ds_load_u16_d16 v158, v0 offset:7456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v66, v0 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v58, v0 offset:7872
	ds_load_u16_d16 v159, v0 offset:7712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v67, v0 offset:8064
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v59, v0 offset:8128
	ds_load_u16_d16 v160, v0 offset:7968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v52, v0 offset:6336
	ds_load_u16_d16_hi v61, v0 offset:6528
	ds_load_u16_d16 v154, v0 offset:6432
	ds_load_u16_d16_hi v43, v0 offset:4288
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.h, 0x7fff, v51.h, s5
	v_add3_u32 v145, v146, v153, 0x7fff
	v_and_b32_e32 v51, 1, v134
	v_mov_b16_e64 v134.l, v149.h
	v_cmp_o_f32_e64 s5, v186, v186
	v_permlanex16_b32 v146, v42, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v148.h, 0x7fff, v145.h, s6
	v_add3_u32 v161, v147, v51, 0x7fff
	v_and_b32_e32 v51, 1, v134
	v_mov_b16_e64 v134.l, v151.h
	v_perm_b32 v145, v146, v42, v129
	v_permlanex16_b32 v153, v148, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v146, v146, v42, v130
	v_add3_u32 v42, v149, v51, 0x7fff
	v_mov_b32_e32 v51, v136
	v_cndmask_b16 v136.l, 0x7fff, v137.h, s4
	v_perm_b32 v147, v153, v148, v129
	v_perm_b32 v148, v153, v148, v130
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v34, v0 offset:4480
	ds_load_u16_d16_hi v44, v0 offset:4544
	ds_load_u16_d16 v178, v0 offset:4448
	ds_load_u16_d16_hi v35, v0 offset:4736
	ds_load_u16_d16_hi v45, v0 offset:4800
	ds_load_u16_d16 v179, v0 offset:4704
	ds_load_u16_d16_hi v36, v0 offset:4992
	ds_load_u16_d16_hi v46, v0 offset:5056
	ds_load_u16_d16 v180, v0 offset:4960
	ds_load_u16_d16_hi v37, v0 offset:5248
	ds_load_u16_d16_hi v47, v0 offset:5312
	ds_load_u16_d16 v181, v0 offset:5216
	ds_load_u16_d16_hi v38, v0 offset:5504
	ds_load_u16_d16_hi v48, v0 offset:5568
	ds_load_u16_d16 v182, v0 offset:5472
	ds_load_u16_d16_hi v39, v0 offset:5760
	ds_load_u16_d16_hi v49, v0 offset:5824
	ds_load_u16_d16 v183, v0 offset:5728
	ds_load_u16_d16_hi v40, v0 offset:6016
	ds_load_u16_d16_hi v50, v0 offset:6080
	ds_load_u16_d16 v184, v0 offset:5984
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v60, v0 offset:6272
	ds_load_u16_d16 v153, v0 offset:6176
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.h, 0x7fff, v161.h, s7
	v_and_b32_e32 v149, 1, v134
	v_mov_b16_e64 v134.l, v185.h
	v_cndmask_b16 v42.l, 0x7fff, v166.h, s9
	v_cndmask_b16 v161.l, 0x7fff, v150.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s8
	v_permlanex16_b32 v150, v136, s97, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v152, 1, v134
	v_mov_b16_e64 v134.l, v186.h
	v_add3_u32 v151, v151, v149, 0x7fff
	v_cmp_o_f32_e64 s6, v187, v187
	v_perm_b32 v149, v150, v136, v129
	v_perm_b32 v150, v150, v136, v130
	v_permlanex16_b32 v136, v42, s97, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v165, 1, v134
	v_mov_b16_e64 v134.l, v187.h
	v_cndmask_b16 v161.h, 0x7fff, v151.h, s0
	v_add3_u32 v166, v185, v152, 0x7fff
	v_perm_b32 v151, v136, v42, v129
	v_perm_b32 v152, v136, v42, v130
	v_and_b32_e32 v42, 1, v134
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v169, v0 offset:4256
	ds_load_u16_d16_hi v177, v0 offset:4320
	ds_load_u16_d16_hi v170, v0 offset:4512
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v178, v0 offset:4576
	ds_load_u16_d16_hi v171, v0 offset:4768
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v179, v0 offset:4832
	ds_load_u16_d16_hi v172, v0 offset:5024
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v180, v0 offset:5088
	ds_load_u16_d16_hi v173, v0 offset:5280
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v181, v0 offset:5344
	ds_load_u16_d16_hi v174, v0 offset:5536
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v182, v0 offset:5600
	ds_load_u16_d16_hi v175, v0 offset:5792
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v183, v0 offset:5856
	ds_load_u16_d16_hi v176, v0 offset:6048
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v184, v0 offset:6112
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v153, v0 offset:6304
	ds_load_u16_d16_hi v137, v0 offset:6368
	ds_load_u16_d16_hi v154, v0 offset:6560
	ds_load_u16_d16_hi v138, v0 offset:6624
	ds_load_u16_d16_hi v155, v0 offset:6816
	ds_load_u16_d16_hi v139, v0 offset:6880
	ds_load_u16_d16_hi v156, v0 offset:7072
	ds_load_u16_d16_hi v140, v0 offset:7136
	ds_load_u16_d16_hi v157, v0 offset:7328
	ds_load_u16_d16_hi v141, v0 offset:7392
	ds_load_u16_d16_hi v158, v0 offset:7584
	ds_load_u16_d16_hi v142, v0 offset:7648
	ds_load_u16_d16_hi v159, v0 offset:7840
	ds_load_u16_d16_hi v143, v0 offset:7904
	ds_load_u16_d16_hi v160, v0 offset:8096
	ds_load_u16_d16_hi v144, v0 offset:8160
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v136, v186, v165, 0x7fff
	v_cndmask_b16 v162.h, 0x7fff, v166.h, s1
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[145:152], v[25:32]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v187, v42, 0x7fff
	v_permlanex16_b32 v134, v161, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v163.h, 0x7fff, v136.h, s5
	v_permlanex16_b32 v36, v162, s97, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[169:176], v[145:152], v[17:24]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v164.h, 0x7fff, v35.h, s6
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[43:50], v[145:152], v[9:16]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v38, v163, s97, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[177:184], v[145:152], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v134, v161, v129
	v_permlanex16_b32 v40, v164, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v134, v161, v130
	v_perm_b32 v35, v36, v162, v129
	v_perm_b32 v36, v36, v162, v130
	v_perm_b32 v37, v38, v163, v129
	v_perm_b32 v38, v38, v163, v130
	v_perm_b32 v39, v40, v164, v129
	v_perm_b32 v40, v40, v164, v130
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[60:67], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[153:160], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[52:59], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[137:144], v[33:40], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v111
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v78, v78, v25
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v78, v78, v26
	v_div_scale_f32 v35, null, v78, v78, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v78, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v78, v26
	v_div_scale_f32 v43, null, v78, v78, v28
	v_div_scale_f32 v49, s3, v28, v78, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	s_mov_b32 s79, 0x31027000
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v78, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s78, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v78, v78, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v78, v78, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v78, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v78, v26
	v_div_scale_f32 v34, s4, v29, v78, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v78, v78, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v78, v78, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v78
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
	v_div_scale_f32 v43, s1, v30, v78, v30
	v_div_fixup_f32 v26, v26, v78, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v78, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v78, v78, v17
	v_div_scale_f32 v36, s3, v31, v78, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	v_div_scale_f32 v46, s5, v32, v78, v32
	v_div_scale_f32 v43, null, v78, v78, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v78, v17
	v_div_fixup_f32 v28, v28, v78, v29
	v_div_fixup_f32 v29, v34, v78, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v78, v78, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v78, v78, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v78, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v78, v31
	v_div_fixup_f32 v31, v35, v78, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v78, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v78, v78, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v78, v20
	v_div_scale_f32 v47, null, v78, v78, v22
	v_div_fixup_f32 v17, v32, v78, v17
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
	v_div_scale_f32 v42, s3, v21, v78, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v78, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v78, v78, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v78, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v78, v78, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v78, v19
	v_div_fixup_f32 v20, v34, v78, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v78, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v78, v78, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v78, v24
	v_div_scale_f32 v46, null, v78, v78, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v78, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v78, v78, v11
	v_div_fixup_f32 v21, v32, v78, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v78, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v78, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v78, v78, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v78, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v78, v23
	v_div_fixup_f32 v24, v36, v78, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v78, v78, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v78, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v78, v78, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v78, v13
	v_div_fixup_f32 v9, v32, v78, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v78, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v78, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v78, v78, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v78, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v78, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v78, v78, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v78, v78, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v78, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v78, v78, v2
	v_div_fixup_f32 v13, v32, v78, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v78, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v78, v78, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v78, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v78, v2
	v_div_fixup_f32 v14, v35, v78, v14
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
	v_div_scale_f32 v39, s1, v3, v78, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v78, v78, v4
	v_div_fmas_f32 v32, v32, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v78, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v32, v78, v16
	v_div_fixup_f32 v1, v34, v78, v1
	v_div_scale_f32 v34, null, v78, v78, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v78, v78, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v78, v2
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v78, v78, v6
	v_div_scale_f32 v37, null, v78, v78, v7
	v_div_scale_f32 v38, vcc_lo, v4, v78, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v78, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v32, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v78, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v32, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v78, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v78, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v32
	v_div_scale_f32 v50, s5, v8, v78, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v32, -v34, v49, v32
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v47, v41
	v_div_fmas_f32 v32, v32, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v37, v52, v48
	v_div_fixup_f32 v5, v32, v78, v5
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s67, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v38, v78, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v78, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s67, v92
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v92, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v78, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v34, v32, v110, 2
	v_add_lshl_u32 v35, v32, v109, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v36, v78, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v0, v33, s[76:79], 0 offen
	buffer_store_b32 v25, v34, s[76:79], 0 offen
	buffer_store_b32 v26, v35, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v108, 2
	v_add_lshl_u32 v25, v32, v107, 2
	v_add_lshl_u32 v26, v32, v106, 2
	v_add_lshl_u32 v33, v32, v105, 2
	v_add_lshl_u32 v34, v32, v104, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s67, v103
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v27, v0, s[76:79], 0 offen
	buffer_store_b32 v28, v25, s[76:79], 0 offen
	buffer_store_b32 v29, v26, s[76:79], 0 offen
	buffer_store_b32 v30, v33, s[76:79], 0 offen
	buffer_store_b32 v31, v34, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v103, 2
	v_add_lshl_u32 v25, v32, v102, 2
	v_add_lshl_u32 v26, v32, v101, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v100, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v99, 2
	s_clause 0x2
	buffer_store_b32 v17, v0, s[76:79], 0 offen
	buffer_store_b32 v18, v25, s[76:79], 0 offen
	buffer_store_b32 v19, v26, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v98, 2
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v0, 0x80000000, v28
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s67, v95
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v18, v32, v97, 2
	v_add_lshl_u32 v19, v32, v96, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[76:79], 0 offen
	buffer_store_b32 v21, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v95, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v17, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v94, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[76:79], 0 offen
	buffer_store_b32 v24, v19, s[76:79], 0 offen
	buffer_store_b32 v9, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v93, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v91, 2
	v_add_lshl_u32 v18, v32, v90, 2
	v_add_lshl_u32 v19, v32, v89, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b32 v10, v9, s[76:79], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s67, v86
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v88, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[76:79], 0 offen
	buffer_store_b32 v13, v10, s[76:79], 0 offen
	buffer_store_b32 v14, v17, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v87, 2
	v_add_lshl_u32 v10, v32, v86, 2
	v_add_lshl_u32 v11, v32, v85, 2
	v_add_lshl_u32 v12, v32, v84, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v0, s[76:79], 0 offen
	buffer_store_b32 v16, v9, s[76:79], 0 offen
	buffer_store_b32 v1, v10, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v81, 2
	v_add_lshl_u32 v1, v32, v79, 2
	v_add_lshl_u32 v2, v32, v83, 2
	v_add_lshl_u32 v3, v32, v82, 2
	v_add_lshl_u32 v9, v32, v80, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[76:79], 0 offen
	buffer_store_b32 v5, v1, s[76:79], 0 offen
	buffer_store_b32 v6, v2, s[76:79], 0 offen
	buffer_store_b32 v7, v3, s[76:79], 0 offen
	buffer_store_b32 v8, v9, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp57:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 197
		.amdhsa_next_free_sgpr 98
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 197
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 98
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13632
; TotalNumSgprs: 100
; NumVgprs: 197
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 100
; NumVGPRsForWavesPerEU: 197
; Occupancy: 7
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     100
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     197
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
