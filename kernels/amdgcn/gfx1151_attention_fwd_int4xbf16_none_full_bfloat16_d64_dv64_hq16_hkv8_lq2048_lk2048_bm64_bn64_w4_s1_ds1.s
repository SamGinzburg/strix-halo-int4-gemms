	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x60
	s_load_b64 s[36:37], s[0:1], 0x20
	v_dual_mov_b32 v38, 0x7632 :: v_dual_lshlrev_b32 v39, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 1, v0
	v_mov_b32_e32 v16, 0
	s_clause 0x2
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s4, s[0:1], 0x68
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v39
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s5, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s6, s5, s2
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_and_b32 v41, 15, v0
	s_mov_b32 s31, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v43, v0, 4, 1
	v_dual_mov_b32 v21, v16 :: v_dual_and_b32 v46, 7, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[44:45], null, s26, v4, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	v_dual_mov_b32 v20, v16 :: v_dual_and_b32 v47, 24, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s26, s6, v[44:45]
	v_dual_mov_b32 v18, v16 :: v_dual_lshlrev_b32 v45, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v17, v16 :: v_dual_and_b32 v42, 0x78, v0
	s_add_i32 s0, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_bfe_i32 v48, v0, 3, 1
	v_mov_b32_e32 v22, v16
	v_mov_b32_e32 v24, v16
	v_and_or_b32 v50, v45, 30, v43
	buffer_load_b128 v[32:35], v1, s[28:31], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v4, 48, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	v_xor_b32_e32 v64, v39, v47
	v_and_b32_e32 v39, 24, v45
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v59, s6, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s5, v1
	v_lshlrev_b32_e32 v45, 4, v46
	v_mov_b32_e32 v37, 0x5410
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v59
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v25, v16 :: v_dual_lshlrev_b32 v50, 2, v50
	v_dual_mov_b32 v26, v16 :: v_dual_and_b32 v47, 0x410, v48
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	v_mul_u32_u24_e32 v48, 0x90, v46
	v_lshl_or_b32 v65, v41, 5, v39
	v_xor_b32_e32 v39, v45, v42
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v36, v1, s[28:31], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s3
	v_dual_mov_b32 v23, v16 :: v_dual_lshlrev_b32 v40, 3, v46
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v49, 1, v42
	v_xor_b32_e32 v66, v48, v47
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v41, 4, v50
	v_lshl_or_b32 v67, v46, 10, v39
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v19, v16 :: v_dual_and_b32 v62, 16, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	v_xor_b32_e32 v39, 16, v66
	s_and_b32 s35, s1, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s27, v40
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[45:46], null, s27, v49, v[40:41]
	v_xor_b32_e32 v40, 0x90, v67
	v_dual_mov_b32 v31, v16 :: v_dual_add_nc_u32 v72, 0, v39
	v_xor_b32_e32 v39, 0x3f0, v67
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v101, 0, v40
	s_and_b32 s0, s0, 0xffffc000
	v_xor_b32_e32 v42, 8, v65
	s_add_i32 s35, s35, s0
	v_add_nc_u32_e32 v107, 0, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v28, v16 :: v_dual_add_nc_u32 v69, 0, v42
	v_or_b32_e32 v100, s35, v43
	v_xor_b32_e32 v47, 16, v65
	v_cndmask_b32_e64 v37, 0x1054, v37, s0
	v_cndmask_b32_e64 v38, 0x3276, v38, s0
	v_xor_b32_e32 v46, 0x120, v67
	v_xor_b32_e32 v94, 0x1870, v66
	v_xor_b32_e32 v49, 0x1b0, v67
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v38, v38, 8, v38
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s4, 0x3fb8aa3b
	v_dual_mov_b32 v29, v16 :: v_dual_add_nc_u32 v70, 0, v47
	v_add_nc_u32_e32 v102, 0, v46
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[46:47], null, s27, 3, v[45:46]
	v_xor_b32_e32 v51, 8, v64
	v_xor_b32_e32 v48, 24, v65
	v_add_nc_u32_e32 v103, 0, v49
	v_mov_b32_e32 v27, v16
	v_mov_b32_e32 v30, v16
	v_xor_b32_e32 v52, 32, v66
	v_xor_b32_e32 v53, 48, v66
	v_xor_b32_e32 v54, 64, v66
	v_xor_b32_e32 v55, 0x50, v66
	v_xor_b32_e32 v56, 0x60, v66
	v_xor_b32_e32 v57, 0x70, v66
	v_xor_b32_e32 v58, 0x820, v66
	v_xor_b32_e32 v60, 0x830, v66
	v_xor_b32_e32 v61, 0x810, v66
	v_xor_b32_e32 v82, 0x860, v66
	v_xor_b32_e32 v83, 0x870, v66
	v_xor_b32_e32 v84, 0x840, v66
	v_xor_b32_e32 v85, 0x850, v66
	v_xor_b32_e32 v86, 0x1040, v66
	v_xor_b32_e32 v87, 0x1050, v66
	v_xor_b32_e32 v88, 0x1060, v66
	v_xor_b32_e32 v89, 0x1070, v66
	v_xor_b32_e32 v90, 0x1010, v66
	v_xor_b32_e32 v91, 0x1020, v66
	v_xor_b32_e32 v92, 0x1030, v66
	v_xor_b32_e32 v93, 0x1860, v66
	v_xor_b32_e32 v95, 0x1840, v66
	v_xor_b32_e32 v96, 0x1850, v66
	v_xor_b32_e32 v97, 0x1820, v66
	v_xor_b32_e32 v98, 0x1830, v66
	v_xor_b32_e32 v99, 0x1810, v66
	v_add_nc_u32_e32 v68, 0, v51
	v_xor_b32_e32 v51, 0x240, v67
	v_xor_b32_e32 v105, 0x2d0, v67
	v_xor_b32_e32 v106, 0x360, v67
	v_dual_mov_b32 v8, v16 :: v_dual_add_nc_u32 v71, 0, v48
	v_add_nc_u32_e32 v73, 0, v52
	v_dual_mov_b32 v9, v16 :: v_dual_add_nc_u32 v74, 0, v53
	v_dual_mov_b32 v10, v16 :: v_dual_add_nc_u32 v75, 0, v54
	v_dual_mov_b32 v11, v16 :: v_dual_add_nc_u32 v76, 0, v55
	v_dual_mov_b32 v12, v16 :: v_dual_add_nc_u32 v77, 0, v56
	v_dual_mov_b32 v13, v16 :: v_dual_add_nc_u32 v78, 0, v57
	v_dual_mov_b32 v14, v16 :: v_dual_add_nc_u32 v79, 0, v58
	v_dual_mov_b32 v15, v16 :: v_dual_add_nc_u32 v80, 0, v60
	v_dual_mov_b32 v0, v16 :: v_dual_add_nc_u32 v81, 0, v61
	v_dual_mov_b32 v1, v16 :: v_dual_add_nc_u32 v82, 0, v82
	v_dual_mov_b32 v2, v16 :: v_dual_add_nc_u32 v83, 0, v83
	v_dual_mov_b32 v3, v16 :: v_dual_add_nc_u32 v84, 0, v84
	v_dual_mov_b32 v4, v16 :: v_dual_add_nc_u32 v85, 0, v85
	v_dual_mov_b32 v5, v16 :: v_dual_add_nc_u32 v86, 0, v86
	v_dual_mov_b32 v6, v16 :: v_dual_add_nc_u32 v87, 0, v87
	v_dual_mov_b32 v7, v16 :: v_dual_add_nc_u32 v88, 0, v88
	v_dual_mov_b32 v63, v16 :: v_dual_add_nc_u32 v90, 0, v90
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v97, 0, v97
	v_add_nc_u32_e32 v98, 0, v98
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v104, 0, v51
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v106, 0, v106
	v_or_b32_e32 v108, 40, v100
	v_or_b32_e32 v109, 42, v100
	v_or_b32_e32 v110, 44, v100
	v_or_b32_e32 v111, 46, v100
	v_or_b32_e32 v112, 48, v100
	v_or_b32_e32 v113, 50, v100
	v_or_b32_e32 v114, 52, v100
	v_or_b32_e32 v115, 54, v100
	v_or_b32_e32 v116, 56, v100
	v_or_b32_e32 v117, 58, v100
	v_or_b32_e32 v118, 60, v100
	v_or_b32_e32 v120, 62, v100
	s_mov_b32 s16, 0
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s34, s16
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	s_mov_b32 s28, s10
	s_mov_b32 s29, s11
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v40, v50, v32
	ds_bpermute_b32 v32, v41, v32
	ds_bpermute_b32 v39, v50, v33
	ds_bpermute_b32 v33, v41, v33
	ds_bpermute_b32 v42, v50, v34
	ds_bpermute_b32 v34, v41, v34
	ds_bpermute_b32 v43, v50, v35
	ds_bpermute_b32 v35, v41, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v47, v32, v40, s0
	v_cndmask_b32_e64 v49, v40, v32, s0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	v_add_nc_u32_e32 v94, 0, v94
	v_and_b32_e32 v32, 0x540054, v37
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v48, v33, v39, s0
	v_cndmask_b32_e64 v50, v39, v33, s0
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v119, s3, v36 :: v_dual_and_b32 v36, 0x760076, v38
	v_lshl_or_b32 v32, v32, 4, v32
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v51, v34, v42, s0
	v_cndmask_b32_e64 v53, v42, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v52, v35, v43, s0
	v_lshl_or_b32 v33, v36, 4, v36
	v_cndmask_b32_e64 v54, v43, v35, s0
	v_and_b32_e32 v60, 0x5040504, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v61, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s34, s35
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v43, s27, v45
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[41:42], null, s3, s26, v[44:45]
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v56, s27, 1, v45
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s4, s3, s27
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v39, s23 :: v_dual_add_nc_u32 v40, 0, v64
	v_dual_mov_b32 v38, s22 :: v_dual_add_nc_u32 v55, 0, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v42, s4, v45, 1
	v_add_lshl_u32 v57, s4, v46, 1
	v_add_lshl_u32 v43, s4, v43, 1
	v_add_lshl_u32 v56, s4, v56, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[123:126], v41, s[28:31], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v151, 0x80000000, v42, s1
	v_cndmask_b32_e64 v42, 0x80000000, v57, s1
	v_cndmask_b32_e64 v185, 0x80000000, v43, s1
	v_cndmask_b32_e64 v43, 0x80000000, v56, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v37, s21 :: v_dual_mov_b32 v36, s20
	v_dual_mov_b32 v35, s19 :: v_dual_mov_b32 v34, s18
	v_dual_mov_b32 v33, s17 :: v_dual_mov_b32 v32, s16
	v_or_b32_e32 v121, 18, v100
	v_or_b32_e32 v169, 20, v100
	v_or_b32_e32 v170, 22, v100
	v_or_b32_e32 v171, 24, v100
	v_or_b32_e32 v172, 26, v100
	v_or_b32_e32 v173, 28, v100
	v_or_b32_e32 v174, 30, v100
	v_or_b32_e32 v175, 32, v100
	v_or_b32_e32 v176, 34, v100
	v_or_b32_e32 v177, 36, v100
	v_or_b32_e32 v178, 38, v100
	v_or_b32_e32 v180, 2, v100
	v_or_b32_e32 v181, 4, v100
	v_or_b32_e32 v182, 6, v100
	v_or_b32_e32 v183, 8, v100
	v_or_b32_e32 v184, 10, v100
	v_or_b32_e32 v194, 12, v100
	v_or_b32_e32 v195, 14, v100
	v_or_b32_e32 v196, 16, v100
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v121, s34, v121, 1
	v_add_lshl_u32 v179, s34, v108, 1
	v_add_lshl_u32 v187, s34, v109, 1
	v_add_lshl_u32 v188, s34, v110, 1
	v_add_lshl_u32 v189, s34, v111, 1
	v_add_lshl_u32 v190, s34, v112, 1
	v_add_lshl_u32 v191, s34, v113, 1
	v_add_lshl_u32 v192, s34, v114, 1
	v_add_lshl_u32 v193, s34, v100, 1
	v_add_lshl_u32 v197, s34, v115, 1
	v_add_lshl_u32 v198, s34, v116, 1
	v_add_lshl_u32 v199, s34, v118, 1
	v_add_lshl_u32 v200, s34, v120, 1
	v_add_lshl_u32 v201, s34, v184, 1
	v_add_lshl_u32 v194, s34, v194, 1
	v_add_lshl_u32 v195, s34, v195, 1
	v_add_lshl_u32 v196, s34, v196, 1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v122
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v40, v[123:124]
	ds_store_b64 v68, v[125:126]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[137:140], v55 offset1:1
	ds_load_2addr_stride64_b64 v[55:58], v55 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[147:150], v69 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[161:164], v43, s[12:15], 0 offen
	buffer_load_b128 v[40:43], v42, s[12:15], 0 offen
	buffer_load_b128 v[165:168], v151, s[12:15], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[137:138], v[47:48], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[139:140], v[47:48], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[55:56], v[47:48], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[57:58], v[47:48], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v69 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[36:39], v70 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[147:148], v[51:52], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[149:150], v[51:52], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[32:33], v[51:52], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[34:35], v[51:52], v[153:160] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v70 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[36:37], v[49:50], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[38:39], v[49:50], v[131:138] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[36:39], v71 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[32:33], v[49:50], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[34:35], v[49:50], v[153:160] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v71 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[38:39], v[53:54], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[36:37], v[53:54], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v149, v136
	v_cvt_f32_i32_e32 v136, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v137, v138
	v_cvt_f32_i32_e32 v36, v123
	v_cvt_f32_i32_e32 v39, v124
	v_cvt_f32_i32_e32 v124, v125
	v_cvt_f32_i32_e32 v125, v126
	v_cvt_f32_i32_e32 v126, v127
	v_cvt_f32_i32_e32 v127, v128
	v_cvt_f32_i32_e32 v128, v129
	v_cvt_f32_i32_e32 v129, v130
	v_cvt_f32_i32_e32 v130, v131
	v_cvt_f32_i32_e32 v123, v132
	v_cvt_f32_i32_e32 v152, v133
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[32:33], v[53:54], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[34:35], v[53:54], v[153:160] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[32:35], v185, s[12:15], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v151, v134
	v_cvt_f32_i32_e32 v150, v135
	v_cvt_f32_i32_e32 v138, v139
	v_cvt_f32_i32_e32 v139, v140
	v_cvt_f32_i32_e32 v140, v141
	v_cvt_f32_i32_e32 v141, v142
	v_cvt_f32_i32_e32 v142, v143
	v_cvt_f32_i32_e32 v143, v144
	v_cvt_f32_i32_e32 v144, v145
	v_cvt_f32_i32_e32 v145, v146
	v_cvt_f32_i32_e32 v146, v153
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v153, s34, v169, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v147, v154
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v154, s34, v170, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v148, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v155, s34, v171, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v132, v156
	v_cvt_f32_i32_e32 v133, v157
	v_cvt_f32_i32_e32 v131, v158
	v_cvt_f32_i32_e32 v134, v159
	v_cvt_f32_i32_e32 v135, v160
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v156, s34, v172, 1
	v_add_lshl_u32 v157, s34, v173, 1
	v_add_lshl_u32 v158, s34, v174, 1
	v_add_lshl_u32 v159, s34, v175, 1
	v_add_lshl_u32 v160, s34, v176, 1
	v_add_lshl_u32 v175, s34, v180, 1
	v_add_lshl_u32 v176, s34, v181, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v152, v119, v152
	v_mul_f32_e32 v150, v119, v150
	v_mul_f32_e32 v136, v119, v136
	v_mul_f32_e32 v138, v119, v138
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v186.l, v161.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v186.h, v40.l
	v_mov_b16_e64 v40.l, v161.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v55.l, v167.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v161, s34, v177, 1
	v_add_lshl_u32 v177, s34, v182, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v58.l, v162.l
	v_mov_b16_e32 v58.h, v41.l
	v_mov_b16_e64 v41.l, v162.h
	v_mov_b16_e64 v56.l, v163.l
	v_mov_b16_e32 v56.h, v42.l
	v_mov_b16_e32 v38.h, v43.l
	v_mov_b16_e64 v43.l, v164.h
	v_mov_b16_e64 v42.l, v163.h
	v_mov_b16_e64 v38.l, v164.l
	v_mov_b16_e64 v185.l, v165.l
	v_mov_b16_e64 v57.l, v166.l
	v_mov_b16_e64 v37.l, v168.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v55.h, v34.l
	v_mov_b16_e64 v34.l, v167.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v167, s34, v178, 1
	v_add_lshl_u32 v178, s34, v183, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v185.h, v32.l
	v_mov_b16_e64 v32.l, v165.h
	v_mov_b16_e32 v57.h, v33.l
	v_mov_b16_e64 v33.l, v166.h
	v_mov_b16_e32 v37.h, v35.l
	v_mov_b16_e64 v35.l, v168.h
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1e
	buffer_load_u16 v184, v121, s[36:39], 0 offen
	buffer_load_u16 v183, v153, s[36:39], 0 offen
	buffer_load_u16 v182, v154, s[36:39], 0 offen
	buffer_load_u16 v181, v155, s[36:39], 0 offen
	buffer_load_u16 v180, v156, s[36:39], 0 offen
	buffer_load_u16 v162, v157, s[36:39], 0 offen
	buffer_load_u16 v163, v158, s[36:39], 0 offen
	buffer_load_u16 v164, v159, s[36:39], 0 offen
	buffer_load_u16 v165, v160, s[36:39], 0 offen
	buffer_load_u16 v166, v161, s[36:39], 0 offen
	buffer_load_u16 v167, v167, s[36:39], 0 offen
	buffer_load_u16 v168, v179, s[36:39], 0 offen
	buffer_load_u16 v169, v187, s[36:39], 0 offen
	buffer_load_u16 v170, v188, s[36:39], 0 offen
	buffer_load_u16 v171, v189, s[36:39], 0 offen
	buffer_load_u16 v172, v190, s[36:39], 0 offen
	buffer_load_u16 v173, v191, s[36:39], 0 offen
	buffer_load_u16 v174, v192, s[36:39], 0 offen
	buffer_load_u16 v153, v193, s[36:39], 0 offen
	buffer_load_u16 v154, v175, s[36:39], 0 offen
	buffer_load_u16 v155, v176, s[36:39], 0 offen
	buffer_load_u16 v156, v177, s[36:39], 0 offen
	buffer_load_u16 v157, v178, s[36:39], 0 offen
	buffer_load_u16 v158, v201, s[36:39], 0 offen
	buffer_load_u16 v159, v194, s[36:39], 0 offen
	buffer_load_u16 v160, v195, s[36:39], 0 offen
	buffer_load_u16 v161, v196, s[36:39], 0 offen
	buffer_load_u16 v175, v197, s[36:39], 0 offen
	buffer_load_u16 v176, v198, s[36:39], 0 offen
	buffer_load_u16 v177, v199, s[36:39], 0 offen
	buffer_load_u16 v178, v200, s[36:39], 0 offen
	v_add_lshl_u32 v121, s34, v117, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v123, v119, v123
	v_mul_f32_e32 v151, v119, v151
	v_mul_f32_e32 v149, v119, v149
	v_mul_f32_e32 v137, v119, v137
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v179, v121, s[36:39], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v121, 0, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v139, v119, v139
	v_mul_f32_e32 v140, v119, v140
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v121, v[185:186]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v119, v141
	v_mul_f32_e32 v142, v119, v142
	v_mul_f32_e32 v143, v119, v143
	v_mul_f32_e32 v144, v119, v144
	v_mul_f32_e32 v145, v119, v145
	v_mul_f32_e32 v146, v119, v146
	v_mul_f32_e32 v147, v119, v147
	v_mul_f32_e32 v148, v119, v148
	v_mul_f32_e32 v36, v119, v36
	v_mul_f32_e32 v185, v119, v39
	v_mul_f32_e32 v124, v119, v124
	v_mul_f32_e32 v125, v119, v125
	v_mul_f32_e32 v126, v119, v126
	v_mul_f32_e32 v127, v119, v127
	v_mul_f32_e32 v128, v119, v128
	v_mul_f32_e32 v129, v119, v129
	v_mul_f32_e32 v130, v119, v130
	v_mul_f32_e32 v132, v119, v132
	v_mul_f32_e32 v134, v119, v134
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v121.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v193.h, v121.h
	v_mov_b16_e64 v192.h, v121.h
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v183, 16, v183
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v183, v152, v183 :: v_dual_lshlrev_b32 v162, 16, v162
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v151, v151, v182 :: v_dual_lshlrev_b32 v164, 16, v164
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v149, v149, v180 :: v_dual_lshlrev_b32 v166, 16, v166
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v184, v123, v184 :: v_dual_lshlrev_b32 v173, 16, v173
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v150, v150, v181 :: v_dual_add_nc_u32 v123, 0, v66
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v133, v119, v133 :: v_dual_lshlrev_b32 v158, 16, v158
	v_dual_mul_f32 v135, v119, v135 :: v_dual_lshlrev_b32 v168, 16, v168
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v174, 16, v174
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v160, 16, v160
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v39, v32 :: v_dual_lshlrev_b32 v178, 16, v178
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v146, v146, v172
	v_mul_f32_e32 v32, v136, v162
	v_mul_f32_e32 v136, v137, v163
	v_dual_mul_f32 v162, v138, v164 :: v_dual_mul_f32 v163, v139, v165
	v_dual_mul_f32 v144, v144, v170 :: v_dual_mul_f32 v165, v141, v167
	v_dual_mul_f32 v148, v148, v174 :: v_dual_mul_f32 v143, v143, v169
	v_mul_f32_e32 v154, v185, v154
	v_dual_mul_f32 v145, v145, v171 :: v_dual_mul_f32 v158, v127, v158
	v_dual_mul_f32 v147, v147, v173 :: v_dual_mul_f32 v156, v125, v156
	v_dual_mul_f32 v153, v36, v153 :: v_dual_mul_f32 v160, v129, v160
	v_dual_mul_f32 v157, v126, v157 :: v_dual_mul_f32 v132, v132, v175
	v_dual_mul_f32 v131, v119, v131 :: v_dual_mul_f32 v164, v140, v166
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v142, v142, v168 :: v_dual_lshlrev_b32 v179, 16, v179
	v_dual_mul_f32 v155, v124, v155 :: v_dual_mul_f32 v130, v130, v161
	v_dual_mul_f32 v159, v128, v159 :: v_dual_mul_f32 v134, v134, v177
	v_dual_mul_f32 v133, v133, v176 :: v_dual_mov_b32 v36, v43
	v_mul_f32_e32 v161, v135, v178
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v101, v[39:40]
	ds_store_b64 v102, v[57:58]
	v_mov_b32_e32 v40, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v184, s2
	v_cndmask_b32_e64 v139, 0xff800000, v183, s2
	v_cndmask_b32_e64 v140, 0xff800000, v151, s2
	v_cndmask_b32_e64 v137, 0xff800000, v150, s2
	v_cndmask_b32_e64 v138, 0xff800000, v149, s2
	v_cndmask_b32_e64 v135, 0xff800000, v32, s2
	v_cndmask_b32_e64 v136, 0xff800000, v136, s2
	v_cndmask_b32_e64 v32, 0xff800000, v162, s2
	v_cndmask_b32_e64 v33, 0xff800000, v163, s2
	v_cndmask_b32_e64 v57, 0xff800000, v165, s2
	v_cndmask_b32_e64 v39, 0xff800000, v153, s2
	v_cndmask_b32_e64 v151, 0xff800000, v154, s2
	v_cndmask_b32_e64 v165, 0xff800000, v156, s2
	v_cndmask_b32_e64 v167, 0xff800000, v157, s2
	v_cndmask_b32_e64 v168, 0xff800000, v158, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v166, v131, v179
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v164, s2
	v_cndmask_b32_e64 v58, 0xff800000, v142, s2
	v_cndmask_b32_e64 v124, 0xff800000, v143, s2
	v_cndmask_b32_e64 v125, 0xff800000, v144, s2
	v_cndmask_b32_e64 v126, 0xff800000, v145, s2
	v_cndmask_b32_e64 v127, 0xff800000, v146, s2
	v_cndmask_b32_e64 v128, 0xff800000, v147, s2
	v_cndmask_b32_e64 v129, 0xff800000, v148, s2
	v_cndmask_b32_e64 v177, 0xff800000, v155, s2
	v_cndmask_b32_e64 v178, 0xff800000, v159, s2
	v_cndmask_b32_e64 v179, 0xff800000, v160, s2
	v_cndmask_b32_e64 v142, 0xff800000, v130, s2
	v_cndmask_b32_e64 v132, 0xff800000, v132, s2
	v_cndmask_b32_e64 v133, 0xff800000, v133, s2
	v_cndmask_b32_e64 v130, 0xff800000, v134, s2
	v_cndmask_b32_e64 v131, 0xff800000, v161, s2
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v103, v[40:41]
	ds_store_b64 v104, v[55:56]
	v_mov_b32_e32 v41, v34
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v141, v139, v140
	v_max3_f32 v40, v137, v138, v135
	v_max3_f32 v55, v136, v32, v33
	v_max_f32_e32 v145, v39, v151
	v_max3_f32 v146, v165, v167, v168
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v166, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v56, v43, v57, v58
	v_max3_f32 v143, v124, v125, v126
	v_max3_f32 v144, v127, v128, v129
	v_dual_max_f32 v147, v132, v133 :: v_dual_max_f32 v148, v130, v131
	v_max3_f32 v166, v178, v179, v142
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v105, v[41:42]
	ds_store_b64 v106, v[37:38]
	ds_store_b64 v107, v[35:36]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v34, v40, v55
	v_max3_f32 v35, v145, v177, v146
	v_max3_f32 v36, v56, v143, v144
	v_max3_f32 v37, v147, v134, v148
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.h, v121.h
	v_mov_b16_e64 v152.h, v121.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v35, v166, v34
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.h, v121.h
	v_mov_b16_e64 v182.h, v121.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v34, v36, v37
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[143:146], v79
	ds_load_b128 v[157:160], v72
	ds_load_b128 v[161:164], v73
	ds_load_b128 v[153:156], v123
	ds_load_b128 v[169:172], v123 offset:2048
	ds_load_b128 v[147:150], v80
	ds_load_b128 v[173:176], v81
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v41, v122, v34, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v178, v41
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v55, v122, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v177, v41
	v_sub_f32_e32 v141, v141, v41
	v_sub_f32_e32 v142, v142, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v55, v55
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v41
	v_sub_f32_e32 v136, v136, v41
	v_sub_f32_e32 v32, v32, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v141, v141
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v137, v41
	v_sub_f32_e32 v135, v135, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v191, 0, v40, s2
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v40, 0, v55, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v151, v41
	v_sub_f32_e32 v35, v39, v41
	v_sub_f32_e32 v37, v165, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v38, v167, v41 :: v_dual_mul_f32 v21, v21, v40
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v39, v168, v41 :: v_dual_mul_f32 v22, v22, v40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v42, v179, v41 :: v_dual_mul_f32 v25, v25, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s2
	v_cndmask_b32_e64 v56, 0, v36, s2
	v_cndmask_b32_e64 v122, 0, v37, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v152.l, v35.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v121.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s4, v35, v35
	v_and_b32_e32 v36, 1, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v40 :: v_dual_and_b32 v37, 1, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v189, 0, v38, s2
	v_cndmask_b32_e64 v190, 0, v39, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v35, v36, 0x7fff
	v_mov_b16_e64 v180.l, v191.h
	v_add3_u32 v37, v34, v37, 0x7fff
	v_mov_b16_e32 v121.l, v122.h
	v_mov_b16_e64 v181.l, v189.h
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s4
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s3
	v_mov_b16_e64 v182.l, v56.h
	v_and_b32_e32 v55, 1, v180
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v28, v28, v40 :: v_dual_and_b32 v151, 1, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v121.l, v190.h
	v_permlanex16_b32 v36, v37, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v26, v26, v40 :: v_dual_and_b32 v39, 1, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v191, v191
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v19, v19, v40 :: v_dual_and_b32 v38, 1, v182
	v_mul_f32_e32 v23, v23, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v55, v191, v55, 0x7fff
	v_perm_b32 v177, v36, v37, v60
	v_perm_b32 v178, v36, v37, v61
	v_and_b32_e32 v36, 1, v121
	v_mov_b16_e32 v121.l, v42.h
	v_add3_u32 v39, v189, v39, 0x7fff
	v_cmp_o_f32_e64 s5, v122, v122
	v_cmp_o_f32_e64 s6, v56, v56
	v_add3_u32 v38, v56, v38, 0x7fff
	v_add3_u32 v37, v122, v151, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v55.h, s10
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v40 :: v_dual_and_b32 v55, 1, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v190, v190
	v_cmp_o_f32_e64 s8, v189, v189
	v_cmp_o_f32_e64 s9, v42, v42
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s6
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s5
	v_add3_u32 v36, v190, v36, 0x7fff
	v_add3_u32 v55, v42, v55, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s8
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v151, v37, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v38.h, 0x7fff, v36.h, s7
	v_cndmask_b16 v39.h, 0x7fff, v55.h, s9
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v40
	v_mul_f32_e32 v31, v31, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v179, v151, v37, v60
	v_permlanex16_b32 v36, v38, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v180, v151, v37, v61
	v_permlanex16_b32 v37, v39, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v40
	v_mul_f32_e32 v10, v10, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v181, v36, v38, v60
	v_perm_b32 v182, v36, v38, v61
	v_perm_b32 v183, v37, v39, v60
	v_perm_b32 v184, v37, v39, v61
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v40
	v_mul_f32_e32 v12, v12, v40
	v_dual_mul_f32 v13, v13, v40 :: v_dual_add_f32 v34, v35, v34
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[143:150], v[177:184], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[143:146], v86
	ds_load_b128 v[147:150], v87
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v40
	v_mul_f32_e32 v15, v15, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v55.h, v121.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v40
	v_mul_f32_e32 v20, v20, v40
	v_mul_f32_e32 v0, v0, v40
	v_mul_f32_e32 v1, v1, v40
	v_mul_f32_e32 v2, v2, v40
	v_mul_f32_e32 v3, v3, v40
	v_mul_f32_e32 v4, v4, v40
	v_mul_f32_e32 v5, v5, v40
	v_mul_f32_e32 v6, v6, v40
	v_mul_f32_e32 v7, v7, v40
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[153:160], v[177:184], v[16:23]
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v56, v122 :: v_dual_sub_f32 v56, v57, v41
.Ltmp14:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v58, v41
	v_sub_f32_e32 v58, v124, v41
	v_sub_f32_e32 v122, v125, v41
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[143:150], v[177:184], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[143:146], v93
	ds_load_b128 v[147:150], v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v126, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v136, v136
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v126, v128, v41
	v_dual_sub_f32 v33, v33, v41 :: v_dual_add_f32 v42, v191, v42
	v_sub_f32_e32 v43, v43, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v124, v124
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[151:154], v95
	ds_load_b128 v[185:188], v92
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[36:39], v78
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[143:150], v[177:184], v[0:7]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v142, s2
	v_cndmask_b32_e64 v178, 0, v141, s2
	v_cndmask_b32_e64 v179, 0, v138, s2
	v_cndmask_b32_e64 v180, 0, v135, s2
	v_cndmask_b32_e64 v181, 0, v136, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v55.l, v177.h
	v_mov_b16_e64 v121.l, v178.h
	v_cmp_o_f32_e64 s3, v178, v178
	v_cmp_o_f32_e64 s4, v177, v177
	v_mov_b16_e64 v135.h, v121.h
	v_and_b32_e32 v55, 1, v55
	v_and_b32_e32 v141, 1, v121
	v_mov_b16_e64 v135.l, v180.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v194, 0, v126, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v125, v127, v41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v55, v177, v55, 0x7fff
	v_add3_u32 v141, v178, v141, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v128, v132, v41 :: v_dual_and_b32 v135, 1, v135
	v_sub_f32_e32 v132, v134, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s4
	v_cndmask_b16 v55.h, 0x7fff, v141.h, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v135, v180, v135, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v127, v129, v41
	v_sub_f32_e32 v129, v133, v41
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v33, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v142, v55, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v43, s2
	v_cndmask_b32_e64 v43, 0, v56, s2
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v125, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v141, v142, v55, v60
	v_perm_b32 v142, v142, v55, v61
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v139, v41
	v_sub_f32_e32 v139, v140, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.h, v121.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v133, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v139, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v198, 0, v132, s2
	v_cndmask_b32_e64 v134, 0, v125, s2
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v177, v178
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v134, v194
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v134, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v139, 0, v139, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v130, v130, v41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v140.l, v55.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v121.l, v139.h
	v_cmp_o_f32_e64 s3, v139, v139
	v_cmp_o_f32_e64 s4, v55, v55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v196, 0, v128, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v140, 1, v140
	v_and_b32_e32 v143, 1, v121
	v_mov_b16_e64 v121.l, v179.h
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v32, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v55, v140, 0x7fff
	v_add3_u32 v143, v139, v143, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v138, 1, v121
	v_mov_b16_e64 v121.l, v181.h
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v55, v139
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v140.l, 0x7fff, v140.h, s4
	v_cndmask_b16 v140.h, 0x7fff, v143.h, s3
	v_cmp_o_f32_e64 s3, v179, v179
	v_add3_u32 v138, v179, v138, 0x7fff
	v_and_b32_e32 v136, 1, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v144, v140, s33, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v121.l, v133.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v136, v181, v136, 0x7fff
	v_perm_b32 v143, v144, v140, v60
	v_perm_b32 v144, v144, v140, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v137, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v121.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v199, 0, v130, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.l, v140.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s4, v140, v140
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v140, v179
.Ltmp24:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v193.l, v199.h
	v_and_b32_e32 v137, 1, v137
	v_add3_u32 v137, v140, v137, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v57, s2
	v_cndmask_b32_e64 v57, 0, v58, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v137.l, 0x7fff, v137.h, s4
	v_cndmask_b16 v137.h, 0x7fff, v138.h, s3
	v_cmp_o_f32_e64 s3, v181, v181
	v_cmp_o_f32_e64 s4, v180, v180
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v122, s2
	v_cndmask_b32_e64 v122, 0, v124, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v138, v137, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v124, v189, v190
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v135.l, 0x7fff, v135.h, s4
	v_cndmask_b16 v135.h, 0x7fff, v136.h, s3
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v56, v57
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v145, v138, v137, v60
	v_perm_b32 v146, v138, v137, v61
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v124, v42
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v136, v135, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v56, v56
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s3, v32, v32
	v_perm_b32 v147, v136, v135, v60
	v_perm_b32 v148, v136, v135, v61
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[165:168], v74
	ds_load_b128 v[135:138], v75
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v57, v57
	v_cmp_o_f32_e64 s4, v33, v33
	v_cmp_o_f32_e64 s11, v122, v122
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v197, 0, v129, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v131, v131, v41
.Ltmp31:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v33, v43
.Ltmp32:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[169:176], v[141:148], v[24:31]
	v_mov_b32_e32 v175, v63
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v63.h, v121.h
	v_mov_b16_e32 v63.l, v32.h
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v176.h, v121.h
	v_mov_b16_e64 v192.l, v197.h
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v63, 1, v63
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[161:168], v[141:148], v[16:23]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[155:158], v88
	ds_load_b128 v[159:162], v89
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v63, v32, v63, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[155:162], v[141:148], v[8:15]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[155:158], v96
	ds_load_b128 v[159:162], v97
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[151:158], v[141:148], v[0:7]
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v154, v34, v35
.Ltmp36:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v127
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v197, v198
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.h, v121.h
	v_mov_b16_e64 v152.h, v121.h
	v_mov_b16_e64 v141.l, v33.h
	v_mov_b16_e64 v152.l, v58.h
	v_mov_b16_e64 v151.h, v121.h
	v_mov_b16_e64 v153.h, v121.h
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v55, v125, v55 :: v_dual_add_f32 v42, v154, v42
.Ltmp40:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v195, 0, v127, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v200, 0, v131, s2
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v58, v122
	v_dual_add_f32 v127, v180, v181 :: v_dual_and_b32 v152, 1, v152
	v_add_f32_e32 v139, v195, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v35, v199, v200 :: v_dual_and_b32 v124, 1, v141
	v_add_f32_e32 v129, v130, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v155, v126, v127
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v56.h
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v34, v35
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.l, v134.h
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v132, v139
	v_add_f32_e32 v178, v128, v129
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v129, 1, v121
	v_mov_b16_e32 v121.l, v43.h
	v_and_b32_e32 v151, 1, v151
	v_and_b32_e32 v153, 1, v153
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v179, v130, v131
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v129, v133, v129, 0x7fff
	v_and_b32_e32 v130, 1, v121
	v_mov_b16_e32 v121.l, v57.h
	v_add3_u32 v56, v56, v151, 0x7fff
	v_add3_u32 v58, v58, v152, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v63.h, s3
	v_add3_u32 v43, v43, v130, 0x7fff
	v_and_b32_e32 v131, 1, v121
	v_mov_b16_e32 v121.l, v122.h
	v_cndmask_b16 v63.l, 0x7fff, v56.h, s5
	v_cndmask_b16 v56.h, 0x7fff, v129.h, s8
	v_cndmask_b16 v128.l, 0x7fff, v58.h, s6
	v_cndmask_b16 v58.h, 0x7fff, v43.h, s9
	v_and_b32_e32 v129, 1, v121
	v_mov_b16_e64 v121.l, v194.h
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v55, v155
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v132, v33, v124, 0x7fff
	v_mov_b16_e64 v176.l, v195.h
	v_add3_u32 v122, v122, v129, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v123 offset:4096
	ds_load_b128 v[139:142], v76
	ds_load_b128 v[32:35], v77
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v55
	v_add_f32_e32 v55, v178, v179
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v58.l, 0x7fff, v132.h, s4
	v_cndmask_b16 v128.h, 0x7fff, v122.h, s11
	v_dual_mov_b32 v122, v41 :: v_dual_and_b32 v41, 1, v176
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v55
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v57, v131, 0x7fff
	v_permlanex16_b32 v57, v56, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v129, v58, s33, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v177, v134, v153, 0x7fff
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v42, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v63.h, 0x7fff, v43.h, s10
	v_perm_b32 v151, v57, v56, v60
	v_perm_b32 v152, v57, v56, v61
	v_permlanex16_b32 v56, v128, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v153, v129, v58, v60
	v_permlanex16_b32 v43, v63, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v154, v129, v58, v61
	v_cmp_o_f32_e64 s3, v195, v195
	v_cmp_o_f32_e64 s6, v194, v194
	v_add3_u32 v41, v195, v41, 0x7fff
	v_perm_b32 v155, v43, v63, v60
	v_perm_b32 v156, v43, v63, v61
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v63, v42, v55 :: v_dual_and_b32 v42, 1, v121
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v121.l, v196.h
	v_and_b32_e32 v43, 1, v192
	v_perm_b32 v157, v56, v128, v60
	v_perm_b32 v158, v56, v128, v61
	v_add3_u32 v42, v194, v42, 0x7fff
	v_and_b32_e32 v55, 1, v121
	v_mov_b16_e64 v121.l, v198.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v123 offset:6144
	ds_load_b128 v[128:131], v90
	ds_load_b128 v[181:184], v91
	ds_load_b128 v[163:166], v98
	ds_load_b128 v[171:174], v99
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v197, v43, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[143:146], v82
	ds_load_b128 v[147:150], v83
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v56, 1, v193
	v_and_b32_e32 v58, 1, v121
	v_mov_b16_e64 v121.l, v200.h
	v_cndmask_b16 v43.l, 0x7fff, v41.h, s3
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s6
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[135:142], v[151:158], v[16:23]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[132:135], v84
	ds_load_b128 v[136:139], v85
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v121
	v_cmp_o_f32_e64 s4, v197, v197
	v_cmp_o_f32_e64 s5, v199, v199
	v_cmp_o_f32_e64 s8, v196, v196
	v_cmp_o_f32_e64 s9, v198, v198
	v_cmp_o_f32_e64 s10, v200, v200
	v_add3_u32 v56, v199, v56, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v177.h, s7
	v_add3_u32 v55, v196, v55, 0x7fff
	v_add3_u32 v58, v198, v58, 0x7fff
	v_add3_u32 v42, v200, v42, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v43.h, s4
	v_cndmask_b16 v57.l, 0x7fff, v56.h, s5
	v_cndmask_b16 v43.h, 0x7fff, v55.h, s8
	v_permlanex16_b32 v55, v41, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v56.h, 0x7fff, v58.h, s9
	v_cndmask_b16 v57.h, 0x7fff, v42.h, s10
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[124:131], v[151:158], v[8:15]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v126, v43, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v123, v55, v41, v60
	v_perm_b32 v124, v55, v41, v61
	v_permlanex16_b32 v41, v56, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v57, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[143:150], v[151:158], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[159:166], v[151:158], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v125, v126, v43, v60
	v_perm_b32 v126, v126, v43, v61
	v_perm_b32 v127, v41, v56, v60
	v_perm_b32 v128, v41, v56, v61
	v_perm_b32 v129, v42, v57, v60
	v_perm_b32 v130, v42, v57, v61
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v63, v175, v40
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s34, 64
	s_cmpk_lt_u32 s34, 0x7c0
	s_mov_b32 s34, s3
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[32:39], v[123:130], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[132:139], v[123:130], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[181:188], v[123:130], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[167:174], v[123:130], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v63, v63, v16
	v_div_scale_f32 v33, null, v63, v63, v17
	v_div_scale_f32 v36, null, v63, v63, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v16, v63, v16
	v_div_scale_f32 v38, s1, v17, v63, v17
	v_rcp_f32_e32 v39, v36
	v_div_scale_f32 v43, null, v63, v63, v19
	v_div_scale_f32 v47, null, v63, v63, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v34, 1.0
	v_fma_f32 v41, -v33, v35, 1.0
	v_div_scale_f32 v42, s3, v18, v63, v18
	v_div_scale_f32 v49, null, v63, v63, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v34, v40, v34 :: v_dual_fmac_f32 v35, v41, v35
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v44, -v36, v39, 1.0
	v_div_scale_f32 v40, s4, v19, v63, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v45, v37, v34 :: v_dual_mul_f32 v46, v38, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v33, v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v43, v41, 1.0
	v_dual_fmac_f32 v46, v48, v35 :: v_dual_fmac_f32 v41, v50, v41
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v39, v44, v39
	v_fma_f32 v44, -v32, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v33, v46, v38
	v_div_scale_f32 v38, null, v63, v63, v22
	v_fmac_f32_e32 v45, v44, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v45, v37
	v_div_fmas_f32 v32, v32, v34, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v34, v49
	v_div_fmas_f32 v33, v33, v35, v46
	v_fma_f32 v35, -v47, v48, 1.0
	v_div_fixup_f32 v16, v32, v63, v16
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v63
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v33, v63, v17
	v_fmac_f32_e32 v48, v35, v48
	v_mul_f32_e32 v44, v42, v39
	v_div_scale_f32 v35, s5, v20, v63, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v36, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v121.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v37, v39 :: v_dual_mul_f32 v37, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v36, v44, v42
	v_fma_f32 v33, -v43, v37, v40
	v_fma_f32 v36, -v49, v34, 1.0
	v_div_scale_f32 v42, null, v63, v63, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v39, v44
	v_dual_fmac_f32 v37, v33, v41 :: v_dual_fmac_f32 v34, v36, v34
	v_rcp_f32_e32 v36, v38
	v_mul_f32_e32 v33, v35, v48
	v_div_scale_f32 v39, s3, v21, v63, v21
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v18, v32, v63, v18
	v_fma_f32 v32, -v43, v37, v40
	v_fma_f32 v40, -v47, v33, v35
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v38, v36, 1.0
	v_mul_f32_e32 v43, v39, v34
	v_div_fmas_f32 v32, v32, v41, v37
	v_fmac_f32_e32 v33, v40, v48
	v_div_scale_f32 v40, s4, v22, v63, v22
	v_fmac_f32_e32 v36, v45, v36
	v_fma_f32 v37, -v49, v43, v39
	v_fma_f32 v41, -v42, v44, 1.0
	v_div_fixup_f32 v19, v32, v63, v19
	v_fma_f32 v32, -v47, v33, v35
	v_mul_f32_e32 v35, v40, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v41, v44
	v_fmac_f32_e32 v43, v37, v34
	v_div_scale_f32 v37, s6, v23, v63, v23
	v_div_scale_f32 v41, null, v63, v63, v24
	v_div_fmas_f32 v32, v32, v48, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v49, v43, v39
	v_fma_f32 v39, -v38, v35, v40
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v46, v37, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v47, null, v63, v63, v25
	v_fmac_f32_e32 v35, v39, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v42, v46, v37
	v_div_fixup_f32 v32, v32, v63, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v39, v44
	v_div_fmas_f32 v33, v33, v34, v43
	v_fma_f32 v43, -v41, v45, 1.0
	v_rcp_f32_e32 v34, v47
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v33, v63, v21
	v_fma_f32 v21, -v38, v35, v40
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v33, s3, v24, v63, v24
	v_div_scale_f32 v43, null, v63, v63, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v36, v35
	v_mul_f32_e32 v36, v33, v45
	v_fma_f32 v38, -v47, v34, 1.0
	v_fma_f32 v35, -v42, v46, v37
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v22, v21, v63, v22
	v_fma_f32 v40, -v41, v36, v33
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s4, v25, v63, v25
	v_div_fmas_f32 v35, v35, v44, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v40, v45
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v38, v34
	v_div_scale_f32 v37, null, v63, v63, v26
	v_div_fixup_f32 v21, v35, v63, v23
	v_rcp_f32_e32 v35, v43
	v_fma_f32 v33, -v41, v36, v33
	v_div_scale_f32 v41, null, v63, v63, v28
	v_fma_f32 v23, -v47, v42, v38
	v_rcp_f32_e32 v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v45, v36
	v_rcp_f32_e32 v44, v41
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v28, v63, v28
	v_fmac_f32_e32 v42, v23, v34
	v_fma_f32 v23, -v43, v35, 1.0
	v_div_scale_f32 v45, s3, v27, v63, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v37, v39, 1.0
	v_div_scale_f32 v46, null, v63, v63, v29
	v_fmac_f32_e32 v35, v23, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v44, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, s5, v26, v63, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v23, v44
	v_div_fixup_f32 v23, v33, v63, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v33, v48, v44
	v_fma_f32 v36, -v47, v42, v38
	v_rcp_f32_e32 v47, v46
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v36, v34, v42
	v_mul_f32_e32 v42, v45, v35
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v24, v34, v63, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v43, v42, v45
	v_div_scale_f32 v34, null, v63, v63, v30
	v_fmac_f32_e32 v42, v25, v35
	v_fma_f32 v25, -v41, v33, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v38, v40, v39 :: v_dual_fmac_f32 v33, v25, v44
	v_fma_f32 v36, -v37, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v36, v39
	v_fma_f32 v36, -v46, v47, 1.0
	v_fma_f32 v37, -v37, v38, v40
	v_rcp_f32_e32 v40, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v36, v47
	v_div_scale_f32 v36, s6, v29, v63, v29
	v_div_fmas_f32 v37, v37, v39, v38
	v_fma_f32 v38, -v43, v42, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s3, v30, v63, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v26, v37, v63, v26
	v_fma_f32 v25, -v34, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v25, v40 :: v_dual_mul_f32 v39, v36, v47
	v_div_fmas_f32 v35, v38, v35, v42
	v_fma_f32 v38, -v41, v33, v48
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v42, null, v63, v63, v31
	v_div_fixup_f32 v27, v35, v63, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v25, v38, v44, v33
	v_mul_f32_e32 v38, v43, v40
	v_fma_f32 v41, -v46, v39, v36
	v_rcp_f32_e32 v33, v42
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v25, v25, v63, v28
	v_fma_f32 v35, -v34, v38, v43
	v_fmac_f32_e32 v39, v41, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v35, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v28, -v46, v39, v36
	v_div_scale_f32 v36, null, v63, v63, v8
	v_fma_f32 v37, -v42, v33, 1.0
	v_div_scale_f32 v35, s4, v31, v63, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v47, v39
	v_rcp_f32_e32 v39, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, null, v63, v63, v9
	v_div_fixup_f32 v28, v28, v63, v29
	v_fma_f32 v29, -v34, v38, v43
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v37
	v_fma_f32 v41, -v36, v39, 1.0
	v_mul_f32_e32 v34, v35, v33
	v_div_fmas_f32 v29, v29, v40, v38
	v_div_scale_f32 v40, s3, v8, v63, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v41, v39
	v_fma_f32 v38, -v42, v34, v35
	v_div_scale_f32 v41, null, v63, v63, v10
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v29, v29, v63, v30
	v_fmac_f32_e32 v34, v38, v33
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v38, -v37, v43, 1.0
	v_mul_f32_e32 v30, v40, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v42, v34, v35
	v_fma_f32 v42, -v36, v30, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v33, v35, v33, v34
	v_fma_f32 v35, -v41, v44, 1.0
	v_fmac_f32_e32 v43, v38, v43
	v_div_scale_f32 v38, s5, v9, v63, v9
	v_fmac_f32_e32 v30, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v35, v44
	v_div_fixup_f32 v31, v33, v63, v31
	v_mul_f32_e32 v34, v38, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v36, v30, v40
	v_div_scale_f32 v42, null, v63, v63, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v37, v34, v38
	v_div_scale_f32 v35, s4, v10, v63, v10
	v_div_fmas_f32 v30, v33, v39, v30
	v_div_scale_f32 v39, null, v63, v63, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v34, v45, v43
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v46, v42
	v_div_fixup_f32 v8, v30, v63, v8
	v_div_scale_f32 v45, null, v63, v63, v15
	v_fma_f32 v33, -v37, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v43, v34
	v_rcp_f32_e32 v34, v39
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v42, v46, 1.0
	v_div_fixup_f32 v9, v33, v63, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v38, v46
	v_div_scale_f32 v38, s3, v11, v63, v11
	v_fma_f32 v40, -v39, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v40, v34
	v_div_scale_f32 v40, s4, v12, v63, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v40, v34 :: v_dual_mul_f32 v36, v35, v44
	v_fma_f32 v37, -v41, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v37, v44
	v_div_scale_f32 v37, null, v63, v63, v13
	v_fma_f32 v30, -v41, v36, v35
	v_mul_f32_e32 v35, v38, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v37
	v_div_fmas_f32 v30, v30, v44, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v42, v35, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v30, v63, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v36, v46
	v_div_scale_f32 v36, null, v63, v63, v14
	v_fma_f32 v41, -v37, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v42, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v44, v36
	v_fma_f32 v38, -v39, v43, v40
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v41, s5, v13, v63, v13
	v_div_fmas_f32 v30, v30, v46, v35
	v_fmac_f32_e32 v43, v38, v34
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v36, v44, 1.0
	v_div_fixup_f32 v11, v30, v63, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v39, v43, v40
	v_div_scale_f32 v39, null, v63, v63, v0
	v_fmac_f32_e32 v44, v38, v44
	v_mul_f32_e32 v42, v41, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v34, v43
	v_div_scale_f32 v43, null, v63, v63, v1
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v37, v42, v41
	v_div_scale_f32 v38, s3, v14, v63, v14
	v_div_fixup_f32 v12, v30, v63, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v35, v33
	v_rcp_f32_e32 v35, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v42, v41
	v_rcp_f32_e32 v41, v39
	v_mul_f32_e32 v37, v38, v44
	v_div_fmas_f32 v33, v34, v33, v42
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v34, -v36, v37, v38
	v_fma_f32 v40, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v33, v63, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v46, -v39, v41, 1.0
	v_fmac_f32_e32 v37, v34, v44
	v_fmac_f32_e32 v35, v40, v35
	v_div_scale_f32 v40, s4, v15, v63, v15
	v_fma_f32 v33, -v43, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, null, v63, v63, v2
	v_div_scale_f32 v34, s5, v0, v63, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v33, v42
	v_div_scale_f32 v33, s6, v1, v63, v1
	v_fma_f32 v36, -v36, v37, v38
	v_mul_f32_e32 v30, v40, v35
	v_rcp_f32_e32 v38, v46
	v_mul_f32_e32 v49, v33, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v44, v37
	v_fma_f32 v47, -v45, v30, v40
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v43, v49, v33
	v_mul_f32_e32 v48, v34, v41
	v_div_fixup_f32 v14, v36, v63, v14
	v_fmac_f32_e32 v30, v47, v35
	v_fma_f32 v47, -v46, v38, 1.0
	v_fmac_f32_e32 v49, v44, v42
	v_fma_f32 v37, -v39, v48, v34
	v_div_scale_f32 v44, null, v63, v63, v7
	v_fma_f32 v36, -v45, v30, v40
	v_fmac_f32_e32 v38, v47, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v37, v41
	v_div_scale_f32 v37, s3, v2, v63, v2
	v_div_scale_f32 v40, null, v63, v63, v3
	v_fma_f32 v34, -v39, v48, v34
	v_div_fmas_f32 v30, v36, v35, v30
	v_fma_f32 v33, -v43, v49, v33
	v_mul_f32_e32 v35, v37, v38
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v36, v40
	v_div_fmas_f32 v34, v34, v41, v48
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v39, -v46, v35, v37
	v_div_fmas_f32 v33, v33, v42, v49
	v_div_fixup_f32 v15, v30, v63, v15
	v_div_fixup_f32 v0, v34, v63, v0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v35, v39, v38
	v_div_fixup_f32 v1, v33, v63, v1
	v_div_scale_f32 v33, null, v63, v63, v4
	v_fma_f32 v30, -v40, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v46, v35, v37
	v_div_scale_f32 v39, null, v63, v63, v5
	v_rcp_f32_e32 v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v30, v36
	v_div_scale_f32 v30, s4, v3, v63, v3
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v63, v63, v6
	v_mul_f32_e32 v38, v30, v36
	v_rcp_f32_e32 v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v2, v34, v63, v2
	v_fma_f32 v34, -v33, v37, 1.0
	v_rcp_f32_e32 v42, v35
	v_fma_f32 v43, -v40, v38, v30
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s3, v4, v63, v4
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v39, v41, 1.0
	v_fmac_f32_e32 v38, v43, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v47, v34, v37
	v_fma_f32 v43, -v35, v42, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, s5, v5, v63, v5
	v_fma_f32 v30, -v40, v38, v30
	v_fma_f32 v40, -v33, v47, v34
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s6, v6, v63, v6
	v_fma_f32 v48, -v44, v46, 1.0
	v_mul_f32_e32 v49, v45, v41
	v_div_fmas_f32 v30, v30, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, v40, v37 :: v_dual_mul_f32 v50, v43, v42
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s7, v7, v63, v7
	v_fma_f32 v36, -v39, v49, v45
	v_div_fixup_f32 v3, v30, v63, v3
	v_fma_f32 v30, -v33, v47, v34
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v35, v50, v43
	v_mul_f32_e32 v40, v48, v46
	v_fmac_f32_e32 v49, v36, v41
	v_div_fmas_f32 v30, v30, v37, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v16.h
	v_mov_b16_e32 v37.h, v121.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v38, v42
	v_fma_f32 v33, -v44, v40, v48
	v_fma_f32 v34, -v39, v49, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v121
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v121.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v40, v33, v46
	v_fma_f32 v33, -v35, v50, v43
	v_div_fmas_f32 v34, v34, v41, v49
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v17, v16, v37, 0x7fff
	v_mov_b16_e32 v37.l, v18.h
	v_mov_b16_e32 v37.h, v121.h
	v_and_b32_e32 v39, 1, v121
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v16, v16
	v_and_b32_e32 v16, 1, v37
	v_add3_u32 v37, v19, v39, 0x7fff
	v_mov_b16_e32 v39.l, v32.h
	v_mov_b16_e32 v39.h, v121.h
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v121.l, v20.h
	v_cndmask_b16 v38.l, 0x7fff, v17.h, s6
	v_add3_u32 v16, v18, v16, 0x7fff
	v_and_b32_e32 v17, 1, v39
	v_cndmask_b16 v19.h, 0x7fff, v37.h, s7
	v_and_b32_e32 v37, 1, v121
	v_cmp_o_f32_e64 s6, v18, v18
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v21, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v17, v32, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_add3_u32 v21, v20, v37, 0x7fff
	v_mov_b16_e32 v37.l, v22.h
	v_mov_b16_e32 v37.h, v121.h
	v_mov_b16_e32 v121.l, v18.h
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s6
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s7
	v_cndmask_b16 v20.l, 0x7fff, v17.h, s8
	v_and_b32_e32 v16, 1, v37
	v_and_b32_e32 v21, 1, v121
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v24, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v18, v18
	v_cmp_o_f32_e64 s7, v22, v22
	v_add3_u32 v16, v22, v16, 0x7fff
	v_add3_u32 v21, v18, v21, 0x7fff
	v_mov_b16_e32 v121.l, v17.h
	v_mov_b16_e32 v18.l, v23.h
	v_mov_b16_e32 v18.h, v121.h
	v_cndmask_b16 v21.l, 0x7fff, v16.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v27, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v121
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v26, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v22, v17, v22, 0x7fff
	v_mov_b16_e32 v121.l, v16.h
	v_add3_u32 v17, v23, v18, 0x7fff
	v_mov_b16_e32 v18.l, v24.h
	v_mov_b16_e32 v18.h, v121.h
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s6
	v_and_b32_e32 v26, 1, v121
	v_cmp_o_f32_e64 s6, v23, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v28, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e32 v27.h, v121.h
	v_add3_u32 v26, v16, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_mov_b16_e32 v121.l, v23.h
	v_cndmask_b16 v22.l, 0x7fff, v17.h, s6
	v_add3_u32 v16, v24, v18, 0x7fff
	v_and_b32_e32 v17, 1, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v29, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v31, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v26.h, s7
	v_and_b32_e32 v26, 1, v121
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v28.h, v121.h
	v_mov_b16_e32 v121.l, v24.h
	v_add3_u32 v17, v25, v17, 0x7fff
	v_add3_u32 v26, v23, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_cmp_o_f32_e64 s8, v25, v25
	v_cndmask_b16 v18.l, 0x7fff, v16.h, s6
	v_and_b32_e32 v16, 1, v28
	v_and_b32_e32 v25, 1, v121
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s7
	v_cndmask_b16 v23.l, 0x7fff, v17.h, s8
	v_cmp_o_f32_e64 s6, v24, v24
	v_add3_u32 v16, v27, v16, 0x7fff
	v_add3_u32 v17, v24, v25, 0x7fff
	v_mov_b16_e32 v121.l, v9.h
	v_cmp_o_f32_e64 s7, v27, v27
	v_mov_b16_e32 v24.l, v8.h
	v_mov_b16_e32 v24.h, v121.h
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_and_b32_e32 v25, 1, v121
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	v_mov_b16_e32 v121.l, v11.h
	v_and_b32_e32 v16, 1, v24
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v24, v9, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_and_b32_e32 v25, 1, v121
	v_add3_u32 v9, v8, v16, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v121.h
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
	v_cmp_o_f32_e64 s6, v8, v8
	v_mov_b16_e32 v121.l, v13.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 1, v16
	v_add3_u32 v16, v11, v25, 0x7fff
	v_mov_b16_e32 v25.l, v12.h
	v_mov_b16_e32 v25.h, v121.h
	v_cndmask_b16 v24.l, 0x7fff, v9.h, s6
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v121
	v_cmp_o_f32_e64 s6, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v15, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v25
	v_cmp_o_f32_e64 s7, v13, v13
	v_add3_u32 v15, v13, v16, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v121.h
	v_mov_b16_e32 v121.l, v10.h
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s6
	v_and_b32_e32 v8, 1, v16
	v_and_b32_e32 v13, 1, v121
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v121.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v44, v40, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v121.h
	v_and_b32_e32 v13, 1, v121
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v46, v40
	v_div_fixup_f32 v4, v30, v63, v4
	v_div_fixup_f32 v5, v34, v63, v5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v10, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v121.h
	v_mov_b16_e32 v121.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v63, v6
	v_div_fixup_f32 v7, v35, v63, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cmp_o_f32_e64 s6, v0, v0
	v_and_b32_e32 v0, 1, v1
	v_and_b32_e32 v1, 1, v121
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s6
	v_mov_b16_e32 v8.h, v121.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v121.l, v5.h
	v_mov_b16_e32 v8.l, v4.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v7, 1, v121
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v121.h
	v_mov_b16_e32 v121.l, v3.h
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v4, v8, 0x7fff
	v_and_b32_e32 v8, 1, v13
	v_and_b32_e32 v13, 1, v121
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v4, v6, v8, 0x7fff
	v_add3_u32 v5, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v36, 1, v62
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v38, v20, s0
	v_cndmask_b32_e64 v6, v19, v21, s0
	v_cndmask_b32_e64 v8, v22, v23, s0
	v_cndmask_b32_e64 v13, v17, v18, s0
	v_cndmask_b32_e64 v14, v18, v17, s0
	v_cndmask_b32_e64 v17, v0, v10, s0
	v_cndmask_b32_e64 v0, v10, v0, s0
	v_cndmask_b32_e64 v15, v12, v24, s0
	v_cndmask_b32_e64 v12, v24, v12, s0
	v_cndmask_b32_e64 v16, v9, v11, s0
	v_cndmask_b32_e64 v9, v11, v9, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s27, v59
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v18, v2, v1, s0
	v_cndmask_b32_e64 v1, v1, v2, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v30, 16, v36
	s_mov_b32 s1, 0x76543210
	v_or_b32_e32 v33, 32, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v3, v20, v38, s0
	v_cndmask_b32_e64 v5, v21, v19, s0
	v_cndmask_b32_e64 v7, v23, v22, s0
	v_permlanex16_b32 v2, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v1, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s27, v30
	v_cmp_gt_i32_e64 s5, s27, v36
	v_cmp_gt_i32_e64 s3, s27, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v3, v60
	v_perm_b32 v1, v2, v3, v61
	v_perm_b32 v2, v4, v5, v60
	v_perm_b32 v3, v4, v5, v61
	v_perm_b32 v4, v6, v7, v60
	v_perm_b32 v5, v6, v7, v61
	v_perm_b32 v6, v8, v13, v60
	v_perm_b32 v7, v8, v13, v61
	v_perm_b32 v12, v14, v17, v60
	v_perm_b32 v13, v14, v17, v61
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v30, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v15, v60
	v_perm_b32 v9, v10, v15, v61
	v_perm_b32 v10, v11, v16, v60
	v_perm_b32 v11, v11, v16, v61
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s27, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v60
	v_perm_b32 v15, v19, v18, v61
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	s_mov_b32 s27, 0x31027000
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
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 202
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 202
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12124
; TotalNumSgprs: 42
; NumVgprs: 202
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 202
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     202
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
