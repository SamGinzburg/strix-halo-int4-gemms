	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[52:55], s[0:1], 0x60
	v_dual_mov_b32 v42, 0x7632 :: v_dual_lshlrev_b32 v95, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v38, 1, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v41, 0x5410 :: v_dual_and_b32 v36, 16, v95
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s73, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s6, v38
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s72, s6, s73
	v_dual_mov_b32 v44, 0x7531 :: v_dual_and_b32 v39, 15, v0
	s_mov_b32 s63, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v3
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v77, v38, 16, v39
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[56:59], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v43, 0x6420 :: v_dual_and_b32 v46, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s52, v38, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s52, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v82, v0, 4, 1
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s52, s72, v[65:66]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s6, v77
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_lshl_add_u32 v99, v39, 1, 0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 3, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_cndmask_b32_e64 v51, 0x7632, v41, s0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s72, v77
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v47, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v1, 1, v1
	v_and_b32_e32 v49, 24, v0
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v37, 3, v0
	v_mov_b32_e32 v26, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v30, v24
	v_mov_b32_e32 v18, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v50, v47, 30, v82
	v_xor_b32_e32 v97, v95, v49
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v40, v1, s[60:63], 0 offen
	v_and_b32_e32 v49, 24, v47
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v98, 2, v50
	v_cndmask_b32_e64 v43, 0x7531, v43, s0
	v_cndmask_b32_e64 v44, 0x6420, v44, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v100, v39, 5, v49
	v_cndmask_b32_e64 v39, 0x5410, v42, s0
	v_lshl_or_b32 v49, v51, 8, v51
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v37, 56, v37
	v_mov_b32_e32 v20, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v102, 4, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v49, 0x760032, v49
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v43, v43, 8, v43
	v_lshl_or_b32 v44, v44, 8, v44
	v_mad_u64_u32 v[66:67], null, s5, v38, v[36:37]
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_and_b32 v48, 16, v0
	v_mov_b32_e32 v29, v24
	v_mov_b32_e32 v8, v24
	v_mov_b32_e32 v10, v24
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s53, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[67:68], null, s53, v45, v[37:38]
	v_lshl_or_b32 v36, v49, 4, v49
	v_and_b32_e32 v37, 0x760032, v39
	v_and_b32_e32 v38, 0x750031, v43
	v_and_b32_e32 v39, 0x750031, v44
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s7, s55, s7
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s8, s54, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s5, s6
	s_add_i32 s54, s3, s7
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v108, 0x7060302, v36
	s_add_i32 s54, s54, s4
	v_lshl_or_b32 v36, v37, 4, v37
	v_lshl_or_b32 v37, v38, 4, v38
	v_lshl_or_b32 v38, v39, 4, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v110, 0x7060302, v36
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v87, 4, v0
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v112, 0x7050301, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v41, 0x1054, v41, s4
	v_cndmask_b32_e64 v42, 0x3276, v42, s4
	v_dual_mov_b32 v0, v24 :: v_dual_and_b32 v111, 0x7050301, v37
	v_mov_b32_e32 v2, v24
	v_lshl_or_b32 v38, v41, 8, v41
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[68:69], null, s53, 24, v[67:68]
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v46, 6, v46
	v_mov_b32_e32 v23, v24
	v_xor_b32_e32 v50, 8, v97
	v_xor_b32_e32 v51, 24, v100
	v_dual_mov_b32 v119, 0xff800000 :: v_dual_mov_b32 v96, 0xff800000
	v_and_or_b32 v101, v47, 60, v46
	v_xor_b32_e32 v46, 8, v100
	v_xor_b32_e32 v47, 16, v100
	v_mov_b32_e32 v31, v24
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v103, 0, v50
	v_mov_b32_e32 v11, v24
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v105, 0, v46
	v_mov_b32_e32 v13, v24
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v107, 0, v51
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v7, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v94, 2, v82
	v_or_b32_e32 v93, 4, v82
	v_or_b32_e32 v92, 6, v82
	v_or_b32_e32 v91, 8, v82
	v_or_b32_e32 v90, 10, v82
	v_or_b32_e32 v89, 12, v82
	v_or_b32_e32 v88, 14, v82
	v_or_b32_e32 v86, 16, v82
	v_or_b32_e32 v85, 18, v82
	v_or_b32_e32 v84, 20, v82
	v_or_b32_e32 v83, 22, v82
	v_or_b32_e32 v81, 24, v82
	v_or_b32_e32 v80, 26, v82
	v_or_b32_e32 v79, 28, v82
	v_or_b32_e32 v78, 30, v82
	v_xor_b32_e32 v104, 64, v101
	v_add_nc_u32_e32 v106, 0, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v109, s53, 3, v67
	v_lshl_add_u32 v116, s53, 4, v67
	s_mov_b32 s44, 0
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s74, 0x76543210
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s75, s44
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s68, s56
	s_mov_b32 s69, s57
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v43, v98, v32
	ds_bpermute_b32 v32, v102, v32
	ds_bpermute_b32 v39, v98, v33
	ds_bpermute_b32 v33, v102, v33
	ds_bpermute_b32 v44, v98, v34
	ds_bpermute_b32 v34, v102, v34
	ds_bpermute_b32 v36, v98, v35
	ds_bpermute_b32 v35, v102, v35
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v40
	v_lshl_or_b32 v40, v42, 8, v42
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v6, v24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v69, v32, v43, s4
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v113, s8, v37
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v71, v43, v32, s4
	v_and_b32_e32 v32, 0x540054, v38
	v_and_b32_e32 v37, 0x760076, v40
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v70, v33, v39, s4
	v_cndmask_b32_e64 v72, v39, v33, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v73, v34, v44, s4
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v37, 4, v37
	v_mov_b32_e32 v9, v24
	v_mov_b32_e32 v118, v24
	v_cndmask_b32_e64 v75, v44, v34, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v74, v35, v36, s4
	v_cndmask_b32_e64 v76, v36, v35, s4
	v_and_b32_e32 v114, 0x5040504, v32
	v_and_b32_e32 v115, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s75, s73
	v_or_b32_e32 v42, s73, v82
	v_mad_u64_u32 v[45:46], null, s3, s52, v[65:66]
	v_or_b32_e32 v43, s73, v94
	v_add_nc_u32_e32 v60, 8, v66
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s54, s75
	v_or_b32_e32 v44, s73, v93
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v124, s75, v42, 1
	v_add_lshl_u32 v125, s75, v43, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v42, v60, s5, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v43, 0x80000000, v45, s29
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, s75, v44, 1
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v155, 0x80000000, v42 :: v_dual_add_nc_u32 v40, 0, v97
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[42:45], v43, s[60:63], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s44 :: v_dual_add_nc_u32 v41, 0, v100
	v_or_b32_e32 v48, s73, v91
	v_or_b32_e32 v49, s73, v90
	v_or_b32_e32 v50, s73, v89
	v_or_b32_e32 v51, s73, v88
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v61, s3, v67, 1
	v_add_lshl_u32 v62, s3, v109, 1
	v_add_lshl_u32 v63, s3, v116, 1
	v_add_lshl_u32 v64, s3, v68, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v33, s45
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v128, s75, v48, 1
	v_add_lshl_u32 v129, s75, v49, 1
	v_add_lshl_u32 v133, s75, v50, 1
	v_add_lshl_u32 v134, s75, v51, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v135, 0x80000000, v61, s1
	v_cndmask_b32_e64 v141, 0x80000000, v62, s1
	v_cndmask_b32_e64 v153, 0x80000000, v63, s1
	v_cndmask_b32_e64 v154, 0x80000000, v64, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s46 :: v_dual_mov_b32 v35, s47
	v_dual_mov_b32 v36, s48 :: v_dual_mov_b32 v37, s49
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v39, s51
	v_or_b32_e32 v47, s73, v92
	v_or_b32_e32 v53, s73, v85
	v_or_b32_e32 v54, s73, v84
	v_or_b32_e32 v55, s73, v83
	v_or_b32_e32 v56, s73, v81
	v_or_b32_e32 v57, s73, v80
	v_or_b32_e32 v58, s73, v79
	v_or_b32_e32 v59, s73, v78
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v46, s5, v66, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v127, s75, v47, 1
	v_add_lshl_u32 v145, s75, v53, 1
	v_add_lshl_u32 v146, s75, v54, 1
	v_add_lshl_u32 v147, s75, v55, 1
	v_add_lshl_u32 v148, s75, v56, 1
	v_add_lshl_u32 v149, s75, v57, 1
	v_add_lshl_u32 v150, s75, v58, 1
	v_add_lshl_u32 v151, s75, v59, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v152, 0x80000000, v46, vcc_lo
	v_or_b32_e32 v52, s73, v86
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v136, s75, v52, 1
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v40, v[42:43]
	ds_store_b64 v103, v[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[48:51], v41 offset1:1
	ds_load_2addr_stride64_b64 v[61:64], v105 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v106 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[137:140], v135, s[40:43], 0 offen
	buffer_load_b128 v[141:144], v141, s[40:43], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[69:70], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[50:51], v[69:70], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v107 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[61:62], v[73:74], v[40:47] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v130, v124, s[64:67], 0 offen
	buffer_load_u16 v131, v125, s[64:67], 0 offen
	buffer_load_u16 v132, v126, s[64:67], 0 offen
	buffer_load_u16 v48, v127, s[64:67], 0 offen
	buffer_load_u16 v49, v128, s[64:67], 0 offen
	buffer_load_u16 v50, v129, s[64:67], 0 offen
	buffer_load_u16 v51, v133, s[64:67], 0 offen
	buffer_load_u16 v52, v134, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[53:60], v[63:64], v[73:74], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[120:121], v[71:72], v[40:47] neg_lo:[1,1,0]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v120.l, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[53:60], v[122:123], v[71:72], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[32:33], v[75:76], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[34:35], v[75:76], v[53:60] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v133, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v134, v41
	v_cvt_f32_i32_e32 v135, v42
	v_cvt_f32_i32_e32 v122, v43
	v_cvt_f32_i32_e32 v123, v44
	v_cvt_f32_i32_e32 v124, v45
	v_cvt_f32_i32_e32 v125, v46
	v_cvt_f32_i32_e32 v126, v47
	v_cvt_f32_i32_e32 v127, v53
	v_cvt_f32_i32_e32 v128, v54
	v_cvt_f32_i32_e32 v129, v55
	v_cvt_f32_i32_e32 v121, v56
	v_cvt_f32_i32_e32 v64, v57
	v_cvt_f32_i32_e32 v63, v58
	v_cvt_f32_i32_e32 v62, v59
	v_cvt_f32_i32_e32 v61, v60
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[44:47], v153, s[40:43], 0 offen
	buffer_load_b128 v[40:43], v154, s[40:43], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v53, v136, s[64:67], 0 offen
	buffer_load_u16 v54, v145, s[64:67], 0 offen
	buffer_load_u16 v55, v146, s[64:67], 0 offen
	buffer_load_u16 v56, v147, s[64:67], 0 offen
	buffer_load_u16 v57, v148, s[64:67], 0 offen
	buffer_load_u16 v58, v149, s[64:67], 0 offen
	buffer_load_u16 v59, v150, s[64:67], 0 offen
	buffer_load_u16 v60, v151, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[36:39], v152, s[68:71], 0 offen
	buffer_load_b128 v[32:35], v155, s[68:71], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v136, 0, v95
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v63, v113, v63
	v_mul_f32_e32 v121, v113, v121
	v_mul_f32_e32 v61, v113, v61
	v_mul_f32_e32 v64, v113, v64
	v_mul_f32_e32 v62, v113, v62
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(21)
	ds_store_b128 v136, v[137:140]
	s_waitcnt vmcnt(20)
	ds_store_b128 v136, v[141:144] offset:1024
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.h, v120.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v130, 16, v130
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v49, 16, v49
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	ds_store_b128 v136, v[44:47] offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b128 v136, v[40:43] offset:3072
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v113, v133
	v_mul_f32_e32 v42, v113, v134
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v43, v113, v135 :: v_dual_lshlrev_b32 v54, 16, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.h, v120.l
	v_mov_b16_e32 v40.h, v120.l
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v36, 0xff80ff80, v36 :: v_dual_cndmask_b32 v133, 0xff80ff80, v34
	v_dual_cndmask_b32 v38, 0xff80ff80, v38 :: v_dual_cndmask_b32 v37, 0xff80ff80, v37
	v_dual_cndmask_b32 v134, 0xff80ff80, v35 :: v_dual_cndmask_b32 v35, 0xff80ff80, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v32, 0xffff0000, v36
	v_cndmask_b32_e32 v135, 0xff80ff80, v33, vcc_lo
	v_mov_b16_e32 v120.h, v36.l
	v_and_b32_e32 v33, 0xffff0000, v37
	v_and_b32_e32 v34, 0xffff0000, v35
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v32
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v136, 0xffff0000, v135
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v32, v37, v36, v108
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v120
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v120.h, v37.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s9, vcc_lo, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v136
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_bpermute_b32 v136, v98, v32
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v32, 0, 1, s9
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v34
	v_cmp_neq_f32_e64 s12, 0xff800000, v120
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s11, vcc_lo, s5
	s_and_b32 s10, vcc_lo, s6
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v120.h, v35.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s11
	v_cndmask_b32_e64 v34, 0, 1, s10
	v_lshlrev_b16 v32.l, 8, v32.l
	s_and_b32 s5, vcc_lo, s7
	s_and_b32 s12, vcc_lo, s12
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v120
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_perm_b32 v36, v37, v36, v110
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v37, 0, 1, s5
	v_or_b16 v137.l, v33.l, v32.l
	v_cndmask_b32_e64 v33, 0, 1, s12
	v_lshlrev_b16 v32.l, 8, v34.l
	s_and_b32 s6, vcc_lo, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v120.h, v135.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, vcc_lo, s3
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v36, v102, v36
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v137.h, v33.l, v32.l
	v_cndmask_b32_e64 v33, 0, 1, s6
	v_mov_b16_e32 v32.l, v37.l
	v_cndmask_b32_e64 v34, 0, 1, s7
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v120
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e32 v39, 0xff80ff80, v39, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.h, 8, v33.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_mov_b16_e32 v33.l, v34.l
	s_and_b32 s8, vcc_lo, s3
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v34, v39, v38, v110
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v120.h, v38.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v120.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v139.l, v33.l, v32.l
	v_cndmask_b32_e64 v33, 0, 1, s8
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v34, v102, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.h, v120.l
	v_mov_b16_e32 v45.h, v120.l
	v_mov_b16_e32 v44.h, v120.l
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v32.l, v33.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v139.h, v32.l, v32.h
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v32, v36, v136, s4
	v_cndmask_b32_e64 v36, v136, v36, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v33, 16, v32
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v32, 0xffff0000, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v140, 0x3fb8aa3b, v33
	v_perm_b32 v33, v39, v38, v108
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v140, v41, v130
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v33, v98, v33
	v_mul_f32_e32 v41, 0x3fb8aa3b, v32
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v132, 16, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v41, v42, v131 :: v_dual_lshlrev_b32 v130, 16, v60
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v42, v34, v33, s4
	v_cndmask_b32_e64 v60, v33, v34, s4
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v32, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v141, 0x3fb8aa3b, v32
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v32.h, v120.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v141, v43, v132
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v113, v122
	v_mul_f32_e32 v122, v113, v123
	v_mul_f32_e32 v123, v113, v124
	v_mul_f32_e32 v124, v113, v125
	v_mul_f32_e32 v125, v113, v126
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v42, 0xffff0000, v42
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v126, v113, v127 :: v_dual_lshlrev_b32 v57, 16, v57
	v_mul_f32_e32 v127, v113, v128
	v_mul_f32_e32 v128, v113, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v42, 0x3fb8aa3b, v42 :: v_dual_lshlrev_b32 v129, 16, v59
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v42, v43, v48 :: v_dual_and_b32 v59, 0xffff0000, v133
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v43, v135, v35, v108
	v_perm_b32 v35, v135, v35, v110
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v59
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v59, 0xffff0000, v134
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v43, v98, v43
	ds_bpermute_b32 v35, v102, v35
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, vcc_lo, s13
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v59
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_perm_b32 v59, v134, v133, v110
	ds_bpermute_b32 v131, v102, v59
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v59, v35, v43, s4
	v_cndmask_b32_e64 v43, v43, v35, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v34, 16, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v35, 0xffff0000, v59
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v135, 0x3fb8aa3b, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v136, 0x3fb8aa3b, v35 :: v_dual_fmac_f32 v135, v122, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v49, 16, v36
	v_and_b32_e32 v36, 0xffff0000, v36
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v136, v123, v50 :: v_dual_mul_f32 v49, 0x3fb8aa3b, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v48, 0xffff0000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v50, 0x3fb8aa3b, v36
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v49, v126, v53 :: v_dual_lshlrev_b32 v36, 16, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v48
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v50, v127, v54 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v48, 0xffff0000, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v38, 0, 1, s13
	s_and_b32 s18, vcc_lo, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v120
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v53, v128, v55
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v48
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v48, v134, v133, v108
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v120.h, v39.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, vcc_lo, s3
	s_and_b32 s17, vcc_lo, s14
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v48, v98, v48
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, vcc_lo, s15
	v_cndmask_b32_e64 v55, 0, 1, s17
	v_cndmask_b32_e64 v39, 0, 1, s14
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v120
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v120.h, v133.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v32.l, v55.l
	v_lshlrev_b16 v35.h, 8, v39.l
	v_cndmask_b32_e64 v39, 0, 1, s19
	s_and_b32 s20, vcc_lo, s15
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v120
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v120.h, v134.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v120
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v33, v131, v48, s4
	v_cndmask_b32_e64 v48, v48, v131, s4
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, vcc_lo, s16
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v34, 16, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v54, 16, v48
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v55, 0, 1, s16
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v142, 0x3fb8aa3b, v34
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v34.h, 8, v38.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v38, 0xffff0000, v48
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v54, 0x3fb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, 0x3fb8aa3b, v38
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v33, 0xffff0000, v33
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v54, v62, v129
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v143, 0x3fb8aa3b, v33 :: v_dual_fmac_f32 v38, v61, v130
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v35, v99 offset:512
	ds_load_u16_d16 v34, v99 offset:256
	ds_load_u16_d16 v33, v99
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v143, v125, v52 :: v_dual_lshlrev_b32 v52, 16, v43
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v43, 0xffff0000, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v52, 0x3fb8aa3b, v52 :: v_dual_mul_f32 v43, 0x3fb8aa3b, v43
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v142, v124, v51 :: v_dual_and_b32 v51, 0xffff0000, v60
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v59, v99 offset:576
	ds_load_u16_d16 v36, v99 offset:768
	ds_load_u16_d16 v60, v99 offset:832
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v52, v64, v57 :: v_dual_fmac_f32 v43, v63, v58
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v51, v121, v56
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v56, 0, 1, s18
	v_mov_b16_e32 v37.l, v56.l
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.h, 8, v37.l
	v_mov_b16_e32 v37.l, v39.l
	v_cndmask_b32_e64 v39, 0, 1, s20
	v_or_b16 v48.l, v37.l, v32.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v32.l, v39.l
	v_cndmask_b32_e64 v39, 0, 1, s15
	v_mov_b16_e32 v37.l, v55.l
	v_or_b16 v48.h, v32.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v32.l, v39.l
	v_or_b16 v55.h, v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v39, v48, v137, v111
	v_perm_b32 v48, v48, v137, v112
	v_or_b16 v55.l, v32.l, v34.h
	ds_bpermute_b32 v39, v98, v39
	ds_bpermute_b32 v48, v102, v48
	v_perm_b32 v56, v55, v139, v111
	v_perm_b32 v55, v55, v139, v112
	ds_bpermute_b32 v56, v98, v56
	ds_bpermute_b32 v55, v102, v55
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v57, v48, v39, s4
	v_cndmask_b32_e64 v39, v39, v48, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v58, 0x100, v57
	v_and_b32_e32 v48, 1, v57
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v64, v55, v56, s4
	v_cndmask_b32_e64 v55, v56, v55, s4
	v_and_b32_e32 v56, 0x1000000, v57
	v_cmp_eq_u32_e64 s30, 0, v58
	v_and_b32_e32 v57, 0x10000, v57
	v_and_b32_e32 v61, 1, v39
	v_cmp_eq_u32_e64 s3, 1, v48
	v_cmp_eq_u32_e64 s33, 0, v56
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, v41, 0xff800000, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v63, 0x1000000, v39
	v_cmp_eq_u32_e64 s31, 0, v57
	v_cmp_eq_u32_e64 s22, 1, v61
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v42, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 1, v55
	v_cmp_eq_u32_e64 s25, 0, v63
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v141, 0xff800000, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v48, 0x100, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v49, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s26, 1, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, v51, 0xff800000, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v51, 0x1000000, v64
	v_cmp_eq_u32_e64 s27, 0, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v140, s3
	v_cndmask_b32_e64 v127, 0xff800000, v52, s26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s37, 0, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, v43, 0xff800000, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v137, v143, 0xff800000, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v62, 0x100, v39
	v_and_b32_e32 v39, 0x10000, v39
	v_cmp_eq_u32_e64 s24, 0, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s23, 0, v39
	v_and_b32_e32 v39, 1, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, v50, 0xff800000, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v124, v53, 0xff800000, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s34, 1, v39
	v_and_b32_e32 v53, 0x10000, v64
	v_and_b32_e32 v50, 0x10000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v56, v125, v124, v126
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v135, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v41, 0x100, v64
	v_cmp_eq_u32_e64 s36, 0, v53
	v_cmp_eq_u32_e64 s21, 0, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s35, 0, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v122, v54, 0xff800000, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v135, v136, 0xff800000, s35
	v_cndmask_b32_e64 v136, v142, 0xff800000, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v49, 0x1000000, v55
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v130, v131
	v_max3_f32 v39, v133, v134, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v41, v136, v137, v123
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s28, 0, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v55, v132, v39
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, v38, 0xff800000, s28
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v127, v128, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v38, v56, v38, v129
	v_max3_f32 v38, v39, v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v121, v119, v38, v39
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v135, v121
	v_sub_f32_e32 v48, v134, v121
	v_sub_f32_e32 v49, v137, v121
	v_sub_f32_e32 v50, v136, v121
	v_sub_f32_e32 v42, v132, v121
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v42, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v133, v121
	v_sub_f32_e32 v38, v131, v121
	v_sub_f32_e32 v39, v130, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, v43, 0, s35
	v_cndmask_b32_e64 v48, 0, v48, s34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v49, v49, 0, s37
	v_cndmask_b32_e64 v50, v50, 0, s36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, v42, 0, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.l, v43.h
	v_mov_b16_e32 v40.l, v48.h
	v_mov_b16_e32 v32.l, v49.h
	v_mov_b16_e32 v37.l, v50.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.l, v42.h
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v40, 1, v40
	v_and_b32_e32 v32, 1, v32
	v_and_b32_e32 v37, 1, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, v41, 0, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v43, v43
	v_cmp_o_f32_e64 s35, v48, v48
	v_cmp_o_f32_e64 s36, v49, v49
	v_cmp_o_f32_e64 s37, v50, v50
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v43, v43, v47, 0x7fff
	v_add3_u32 v40, v48, v40, 0x7fff
	v_add3_u32 v32, v49, v32, 0x7fff
	v_add3_u32 v37, v50, v37, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, v38, 0, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v45.l, v41.h
	v_cmp_o_f32_e64 s33, v42, v42
	v_add3_u32 v42, v42, v46, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v43.h, s34
	v_cndmask_b16 v46.l, 0x7fff, v40.h, s35
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s36
	v_cndmask_b16 v32.l, 0x7fff, v37.h, s37
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.l, v38.h
	v_and_b32_e32 v45, 1, v45
	v_permlanex16_b32 v47, v46, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v32, s74, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s31, v41, v41
	v_and_b32_e32 v51, 1, v138
	v_add3_u32 v41, v41, v45, 0x7fff
	v_perm_b32 v45, v47, v46, v114
	v_perm_b32 v46, v47, v46, v115
	v_perm_b32 v47, v48, v32, v114
	v_perm_b32 v48, v48, v32, v115
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v32, v119, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v38, v38
	v_add3_u32 v38, v38, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v141, v32
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v39.h
	v_cmp_o_f32_e64 s30, v39, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v119, 0, v141, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v119 :: v_dual_and_b32 v44, 1, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v39, v44, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v42.h, s33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v119
	v_mul_f32_e32 v24, v24, v119
	v_mul_f32_e32 v27, v27, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s30
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s31
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v119
	v_mul_f32_e32 v25, v25, v119
	v_mul_f32_e32 v29, v29, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v38, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v39, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v119
	v_mul_f32_e32 v8, v8, v119
	v_mul_f32_e32 v9, v9, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v41, v37, v38, v114
	v_perm_b32 v42, v37, v38, v115
	v_perm_b32 v43, v40, v39, v114
	v_perm_b32 v44, v40, v39, v115
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v51, v99 offset:608
	ds_load_u16_d16 v50, v99 offset:352
	ds_load_u16_d16 v37, v99 offset:1024
	ds_load_u16_d16 v61, v99 offset:1088
	ds_load_u16_d16 v38, v99 offset:1280
	ds_load_u16_d16 v62, v99 offset:1344
	ds_load_u16_d16 v39, v99 offset:1536
	ds_load_u16_d16 v63, v99 offset:1600
	ds_load_u16_d16 v40, v99 offset:1792
	ds_load_u16_d16 v64, v99 offset:1856
	ds_load_u16_d16 v139, v99 offset:288
	ds_load_u16_d16 v138, v99 offset:32
	ds_load_u16_d16 v57, v99 offset:64
	ds_load_u16_d16 v58, v99 offset:320
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v50, v99 offset:480
	ds_load_u16_d16 v49, v99 offset:96
	ds_load_u16_d16_hi v34, v99 offset:384
	ds_load_u16_d16_hi v35, v99 offset:640
	ds_load_u16_d16_hi v59, v99 offset:704
	ds_load_u16_d16 v140, v99 offset:544
	ds_load_u16_d16_hi v36, v99 offset:896
	ds_load_u16_d16_hi v60, v99 offset:960
	ds_load_u16_d16 v52, v99 offset:864
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v37, v99 offset:1152
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v61, v99 offset:1216
	ds_load_u16_d16 v53, v99 offset:1120
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v38, v99 offset:1408
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v62, v99 offset:1472
	ds_load_u16_d16 v54, v99 offset:1376
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v39, v99 offset:1664
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v63, v99 offset:1728
	ds_load_u16_d16 v55, v99 offset:1632
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v40, v99 offset:1920
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v64, v99 offset:1984
	ds_load_u16_d16 v32, v99 offset:2048
	ds_load_u16_d16 v56, v99 offset:1888
	ds_load_u16_d16_hi v33, v99 offset:128
	ds_load_u16_d16 v141, v99 offset:800
	ds_load_u16_d16 v142, v99 offset:1056
	ds_load_u16_d16 v143, v99 offset:1312
	ds_load_u16_d16 v144, v99 offset:1568
	ds_load_u16_d16 v145, v99 offset:1824
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v140, v99 offset:672
	ds_load_u16_d16_hi v51, v99 offset:736
	ds_load_u16_d16_hi v138, v99 offset:160
	ds_load_u16_d16_hi v57, v99 offset:192
	ds_load_u16_d16_hi v49, v99 offset:224
	ds_load_u16_d16_hi v139, v99 offset:416
	ds_load_u16_d16_hi v58, v99 offset:448
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v141, v99 offset:928
	ds_load_u16_d16_hi v52, v99 offset:992
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v142, v99 offset:1184
	ds_load_u16_d16_hi v53, v99 offset:1248
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v143, v99 offset:1440
	ds_load_u16_d16_hi v54, v99 offset:1504
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v144, v99 offset:1696
	ds_load_u16_d16_hi v55, v99 offset:1760
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v145, v99 offset:1952
	ds_load_u16_d16_hi v56, v99 offset:2016
	ds_load_u16_d16_hi v32, v99 offset:2176
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[33:40], v[41:48], v[24:31]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v119
	v_mul_f32_e32 v11, v11, v119
	v_mul_f32_e32 v12, v12, v119
	v_mul_f32_e32 v13, v13, v119
	v_mul_f32_e32 v15, v15, v119
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v35, v117, v117 :: v_dual_mul_f32 v14, v14, v119
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v119
	v_mul_f32_e32 v1, v1, v119
	v_mul_f32_e32 v2, v2, v119
	v_mul_f32_e32 v3, v3, v119
	v_mul_f32_e32 v4, v4, v119
	v_mul_f32_e32 v6, v6, v119
	v_mul_f32_e32 v7, v7, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v120.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v119
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(11)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[57:64], v[41:48], v[8:15]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v129, v121
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v119
	v_mul_f32_e32 v17, v17, v119
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[49:56], v[41:48], v[0:7]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, v129, v137, s4
	v_cndmask_b32_e64 v56, v137, v129, s4
	v_cndmask_b32_e64 v49, v127, v134, s4
	v_cndmask_b32_e64 v50, v134, v127, s4
	v_cndmask_b32_e64 v51, v128, v135, s4
	v_cndmask_b32_e64 v52, v135, v128, s4
	v_cndmask_b32_e64 v53, v122, v136, s4
	v_cndmask_b32_e64 v54, v136, v122, s4
	ds_bpermute_b32 v55, v101, v55
	ds_bpermute_b32 v56, v104, v56
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v119
	v_mul_f32_e32 v19, v19, v119
	v_mul_f32_e32 v21, v21, v119
	v_mul_f32_e32 v23, v23, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v120.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v120.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v119
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v51, v101, v51
	ds_bpermute_b32 v52, v104, v52
	ds_bpermute_b32 v49, v101, v49
	ds_bpermute_b32 v50, v104, v50
	ds_bpermute_b32 v53, v101, v53
	ds_bpermute_b32 v54, v104, v54
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[138:145], v[41:48], v[16:23]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v123, v130, s4
	v_cndmask_b32_e64 v42, v130, v123, s4
	v_cndmask_b32_e64 v47, v126, v133, s4
	v_cndmask_b32_e64 v48, v133, v126, s4
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v133, v56, v55, s0
	ds_bpermute_b32 v41, v101, v41
	ds_bpermute_b32 v42, v104, v42
	ds_bpermute_b32 v47, v101, v47
	ds_bpermute_b32 v48, v104, v48
	v_cndmask_b32_e64 v134, v55, v56, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v126, v121
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, v125, v131, s4
	v_cndmask_b32_e64 v44, v131, v125, s4
	v_cndmask_b32_e64 v45, v124, v132, s4
	v_cndmask_b32_e64 v46, v132, v124, s4
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v119, v52, v51, s0
	v_cndmask_b32_e64 v130, v51, v52, s0
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v131, v49, v50, s0
	v_cndmask_b32_e64 v132, v50, v49, s0
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(4)
	v_max3_f32 v50, v53, v54, v133
.Ltmp11:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v54, v53, s0
	v_cndmask_b32_e64 v136, v53, v54, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v55
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v131, v119, v130
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.h, v120.l
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v59, v41, v41 :: v_dual_max_f32 v58, v42, v42
.Ltmp15:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, v42, v41, s0
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v49, v50, v134
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v50, v47, v48, v132
.Ltmp17:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v41, v42, s0
	v_cndmask_b32_e64 v42, v48, v47, s0
	v_cndmask_b32_e64 v47, v47, v48, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v125, v121
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v53, v53, 0, s25
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	ds_bpermute_b32 v43, v101, v43
	ds_bpermute_b32 v44, v104, v44
	ds_bpermute_b32 v45, v101, v45
	ds_bpermute_b32 v46, v104, v46
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v53.h
	v_mov_b16_e32 v51.h, v120.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v124, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v120.l
	v_mov_b32_e32 v138, v118
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v39.h, v120.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v56
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v64, v96, v96
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, v48, 0, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v53, v53
	v_add3_u32 v36, v53, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v122, v121
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v40, v99 offset:2080
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.l, v48.h
	v_cmp_o_f32_e64 s3, v48, v48
	v_cndmask_b16 v118.h, 0x7fff, v36.h, s24
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v57, v46, v45, s0
	v_cndmask_b32_e64 v45, v45, v46, s0
	v_cndmask_b32_e64 v46, v43, v44, s0
	v_cndmask_b32_e64 v43, v44, v43, s0
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v59, v58
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v59, v127, v121
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v54, v54, 0, s23
.Ltmp20:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v46, v57, v45
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, v53, 0, s21
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v56, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v54.h
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v44, v43, v58
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v128, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.l, v53.h
	v_cmp_o_f32_e64 s25, v54, v54
	v_and_b32_e32 v37, 1, v37
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v44, v50, v49
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v58
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v51, 1, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v56, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v54, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.h, v120.l
	v_add3_u32 v124, v53, v51, 0x7fff
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v51, v44
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v56.h
	v_cndmask_b16 v118.l, 0x7fff, v37.h, s25
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, v55, 0, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v56, v56
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v123, v121
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v58, v58, 0, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v55.h
	v_cmp_o_f32_e64 s26, v55, v55
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v51
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.l, v58.h
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v33, v48, v33, 0x7fff
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v125, v44, v51
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v53, v53
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v38, v55, v38, 0x7fff
	v_cndmask_b16 v122.h, 0x7fff, v33.h, s3
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v117, v35, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v39, 1, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v120.h, 0x7fff, v38.h, s26
	v_cmp_o_f32_e64 s22, v58, v58
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v43, v117
	v_sub_f32_e32 v38, v46, v117
	v_sub_f32_e32 v131, v131, v117
	v_sub_f32_e32 v35, v52, v117
	v_sub_f32_e32 v36, v41, v117
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v131, v131
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v39, v56, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v45, v117
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v119, v119, v117
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v120.l, 0x7fff, v39.h, s27
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v57, v117
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s12
	v_cndmask_b32_e64 v38, 0, v38, s10
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v117
	v_sub_f32_e32 v130, v130, v117
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s5
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v132, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v41, v41
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v127, v37, v38
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v137, v130
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s11
	v_cndmask_b32_e64 v36, 0, v36, s9
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v135, v117
	v_sub_f32_e32 v133, v133, v117
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v123, v58, v49, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s19
	v_cndmask_b32_e64 v41, 0, v41, s17
	v_cndmask_b32_e64 v42, 0, v42, s20
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v35, v36
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v139, v133
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v132, s7
	v_cndmask_b32_e64 v132, 0, v119, s8
	v_cndmask_b32_e64 v133, 0, v137, s6
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v128, v39, v41 :: v_dual_mov_b32 v119, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v121, v130, v131
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v50.h
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v132, v133
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v133.h, 0x7fff, v123.h, s22
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v123, v126, v127
.Ltmp43:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v121, v121, v130
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v50, v50
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v96
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v134
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v135, s15
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v117
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v50, v34, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v48, v99 offset:2112
	ds_load_u16_d16 v34, v99 offset:2560
	ds_load_u16_d16 v50, v99 offset:2624
	ds_load_u16_d16 v49, v99 offset:2368
	ds_load_u16_d16 v33, v99 offset:2304
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v133.l, 0x7fff, v124.h, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	.loc	1 896 30                        ; attention.py:896:30
	s_waitcnt lgkmcnt(3)
	v_cndmask_b16 v122.l, 0x7fff, v34.h, s23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v140, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v124, v122, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v136, s13
	v_cndmask_b32_e64 v136, 0, v139, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v131, v134, v135 :: v_dual_add_f32 v132, v136, v137
	v_dual_add_f32 v127, v131, v132 :: v_dual_max_f32 v64, v64, v125
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v125, v118, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v121, v121, v127
.Ltmp49:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v47, v117
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v127, v96, v64
	v_mov_b32_e32 v96, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v130, v127
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s18
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v64, 0, v130, s3
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s75, 32
	s_cmpk_lt_u32 s75, 0x1e0
	s_mov_b32 s75, s3
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v42, v43
.Ltmp51:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v57, v99 offset:2400
	ds_load_u16_d16 v35, v99 offset:2816
	ds_load_u16_d16 v51, v99 offset:2880
	ds_load_u16_d16 v58, v99 offset:2656
	ds_load_u16_d16 v36, v99 offset:3072
	ds_load_u16_d16 v52, v99 offset:3136
	ds_load_u16_d16 v59, v99 offset:2912
	ds_load_u16_d16 v37, v99 offset:3328
	ds_load_u16_d16 v53, v99 offset:3392
	ds_load_u16_d16 v60, v99 offset:3168
	ds_load_u16_d16 v38, v99 offset:3584
	ds_load_u16_d16 v54, v99 offset:3648
	ds_load_u16_d16 v61, v99 offset:3424
	ds_load_u16_d16 v39, v99 offset:3840
	ds_load_u16_d16 v55, v99 offset:3904
	ds_load_u16_d16 v62, v99 offset:3680
	ds_load_u16_d16 v63, v99 offset:3936
	ds_load_u16_d16 v56, v99 offset:2144
	ds_load_u16_d16_hi v48, v99 offset:2240
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v49, v99 offset:2496
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v33, v99 offset:2432
	ds_load_u16_d16 v41, v99 offset:2336
	ds_load_u16_d16_hi v34, v99 offset:2688
	ds_load_u16_d16_hi v50, v99 offset:2752
	ds_load_u16_d16 v42, v99 offset:2592
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v35, v99 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v51, v99 offset:3008
	ds_load_u16_d16 v43, v99 offset:2848
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v36, v99 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v52, v99 offset:3264
	ds_load_u16_d16 v44, v99 offset:3104
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v37, v99 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v53, v99 offset:3520
	ds_load_u16_d16 v45, v99 offset:3360
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v38, v99 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v54, v99 offset:3776
	ds_load_u16_d16 v46, v99 offset:3616
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v39, v99 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v55, v99 offset:4032
	ds_load_u16_d16 v47, v99 offset:3872
	ds_load_u16_d16_hi v40, v99 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v56, v99 offset:2272
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v41, v99 offset:2464
	ds_load_u16_d16_hi v57, v99 offset:2528
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v42, v99 offset:2720
	ds_load_u16_d16_hi v58, v99 offset:2784
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v128, v129
.Ltmp53:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v43, v99 offset:2976
	ds_load_u16_d16_hi v59, v99 offset:3040
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v44, v99 offset:3232
	ds_load_u16_d16_hi v60, v99 offset:3296
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v45, v99 offset:3488
	ds_load_u16_d16_hi v61, v99 offset:3552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v46, v99 offset:3744
	ds_load_u16_d16_hi v62, v99 offset:3808
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v123, v123, v126
.Ltmp55:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v99 offset:4000
	ds_load_u16_d16_hi v63, v99 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v128, v133, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v123, v121
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v121, v124, v122, v114
	v_perm_b32 v122, v124, v122, v115
	v_perm_b32 v123, v125, v118, v114
	v_perm_b32 v124, v125, v118, v115
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v131, v129
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v126, v120, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v128, v133, v114
	v_perm_b32 v128, v128, v133, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v125, v126, v120, v114
	v_perm_b32 v126, v126, v120, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v118, v129, v131
.Ltmp63:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[121:128], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[40:47], v[121:128], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[48:55], v[121:128], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[56:63], v[121:128], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v118, v138, v64
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v32, v98, v118
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v32, v32, v24
	v_div_scale_f32 v35, null, v32, v32, v25
	v_div_scale_f32 v37, null, v32, v32, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_div_scale_f32 v39, null, v32, v32, v27
	v_div_scale_f32 v41, null, v32, v32, v28
	v_div_scale_f32 v42, null, v32, v32, v29
	v_rcp_f32_e32 v45, v35
	v_rcp_f32_e32 v46, v37
	v_rcp_f32_e32 v47, v39
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_div_scale_f32 v34, vcc_lo, v24, v32, v24
	v_div_scale_f32 v36, s0, v25, v32, v25
	v_fma_f32 v54, -v35, v45, 1.0
	v_fma_f32 v55, -v37, v46, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v38, s1, v26, v32, v26
	v_fma_f32 v56, -v39, v47, 1.0
	v_fma_f32 v57, -v41, v48, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v54, v34, v44
	v_div_scale_f32 v50, s5, v29, v32, v29
	v_fmac_f32_e32 v47, v56, v47
	v_dual_mul_f32 v55, v36, v45 :: v_dual_mul_f32 v56, v38, v46
	v_fmac_f32_e32 v51, v53, v51
	v_fmac_f32_e32 v48, v57, v48
	v_fma_f32 v57, -v33, v54, v34
	v_div_scale_f32 v40, s3, v27, v32, v27
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v57, v44
	v_mul_f32_e32 v58, v40, v47
	v_div_scale_f32 v43, null, v32, v32, v30
	v_div_scale_f32 v49, s4, v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v54, v34
	v_fmac_f32_e32 v55, v59, v45
	v_fma_f32 v61, -v39, v58, v40
	v_fmac_f32_e32 v56, v60, v46
	v_rcp_f32_e32 v52, v43
	v_div_fmas_f32 v33, v33, v44, v54
	v_fma_f32 v34, -v35, v55, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v37, v56, v38
	v_mul_f32_e32 v37, v50, v51
	v_mul_f32_e32 v53, v49, v48
	v_fmac_f32_e32 v58, v61, v47
	v_div_fixup_f32 v24, v33, v32, v24
	v_div_scale_f32 v33, null, v32, v32, v31
	v_div_fmas_f32 v34, v34, v45, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v39, v58, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v33
	v_div_fmas_f32 v35, v35, v46, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v32, v25
	v_div_fmas_f32 v34, v36, v47, v58
	v_fma_f32 v38, -v43, v52, 1.0
	v_div_fixup_f32 v26, v35, v32, v26
	v_div_scale_f32 v35, s1, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v27, v34, v32, v27
	v_fma_f32 v34, -v42, v37, v50
	v_fmac_f32_e32 v52, v38, v52
	v_fma_f32 v38, -v33, v39, 1.0
	v_fma_f32 v36, -v41, v53, v49
	v_div_scale_f32 v47, null, v32, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v31, v32, v31
	v_fmac_f32_e32 v53, v36, v48
	v_div_scale_f32 v36, null, v32, v32, v16
	v_fma_f32 v44, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v38, v39
	v_fma_f32 v40, -v41, v53, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v36
	v_fma_f32 v42, -v42, v37, v50
	v_fmac_f32_e32 v34, v44, v52
	v_fma_f32 v44, -v33, v45, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v34, v35
	v_div_fmas_f32 v37, v42, v51, v37
	v_rcp_f32_e32 v42, v47
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v32, v32, v18
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fixup_f32 v28, v40, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v37, v32, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v16, v32, v16
	v_div_fmas_f32 v34, v35, v52, v34
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v33, v33, v39, v45
	v_fma_f32 v45, -v43, v38, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_div_scale_f32 v44, null, v32, v32, v19
	v_div_scale_f32 v40, s1, v17, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v35, -v36, v37, v46
	v_div_fixup_f32 v30, v34, v32, v30
	v_div_fixup_f32 v31, v33, v32, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v36, s3, v18, v32, v18
	v_div_scale_f32 v46, null, v32, v32, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v44, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v32, v32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v34, -v47, v39, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, s4, v19, v32, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v33, v32, v16
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v20, v32, v20
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v33, v32, v17
	v_fma_f32 v33, -v43, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v45, v48, 1.0
	v_mul_f32_e32 v36, v40, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v38, v34
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v48
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v47, v41, v35
	v_div_scale_f32 v42, null, v32, v32, v22
	v_div_fixup_f32 v18, v33, v32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v39, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v46, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s5, v21, v32, v21
	v_div_scale_f32 v46, null, v32, v32, v9
	v_fma_f32 v34, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v48
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v32, v32, v23
	v_div_fmas_f32 v34, v34, v35, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v35, v44
	v_div_fmas_f32 v33, v33, v37, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v43, v38, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v19, v34, v32, v19
	v_div_scale_f32 v34, s3, v22, v32, v22
	v_fma_f32 v36, -v45, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s1, v23, v32, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v48, v43
	v_div_fixup_f32 v20, v33, v32, v20
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v32, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v36, v32, v21
	v_rcp_f32_e32 v36, v46
	v_mul_f32_e32 v45, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v32, v32, v11
	v_fma_f32 v33, -v44, v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s4, v8, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v32, v32, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v43, v40
	v_div_fmas_f32 v34, v34, v41, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v9, v32, v9
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v32, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v23, v35, v32, v23
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v10, v32, v10
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v32, v32, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v11, v32, v11
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v32, v32, v13
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v33, v32, v8
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v9, v36, v32, v9
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v32, v12
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v38, v32, v10
	v_div_scale_f32 v38, null, v32, v32, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v13, v32, v13
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v32, v32, v15
	v_div_fixup_f32 v11, v35, v32, v11
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v32, v32, v0
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v32, v32, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v14, v32, v14
	v_div_fixup_f32 v12, v33, v32, v12
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v15, v32, v15
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v32, v32, v2
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v0, v32, v0
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v1, v32, v1
	v_div_fixup_f32 v13, v36, v32, v13
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v32, v32, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v35, v32, v14
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v33, v32, v15
	v_div_fixup_f32 v0, v34, v32, v0
	v_div_scale_f32 v34, null, v32, v32, v4
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v32, v32, v7
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v1, v37, v32, v1
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v32, v32, v5
	v_div_scale_f32 v37, null, v32, v32, v6
	v_div_scale_f32 v38, vcc_lo, v3, v32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v2, v33, v32, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v4, v32, v4
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v5, v32, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v6, v32, v6
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v7, v32, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v3, v38, v32, v3
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v33, v32, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v35, v32, v5
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v34, v32, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v36, v32, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s53, v77
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s53, s72
	v_add_nc_u32_e32 v34, v32, v82
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s53, v82
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s59, 0xffff
	s_mov_b32 s4, s58
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v37, v32, v82, 2
	v_add_lshl_u32 v38, v32, v94, 2
	v_add_lshl_u32 v39, v32, v93, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s53, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v37, s[4:7], 0 offen
	buffer_store_b32 v25, v38, s[4:7], 0 offen
	buffer_store_b32 v26, v39, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v92, 2
	v_add_lshl_u32 v25, v32, v91, 2
	v_add_lshl_u32 v26, v32, v90, 2
	v_add_lshl_u32 v37, v32, v89, 2
	v_add_lshl_u32 v38, v32, v88, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v37, s[4:7], 0 offen
	buffer_store_b32 v31, v38, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v86, 2
	v_add_lshl_u32 v25, v32, v85, 2
	v_add_lshl_u32 v26, v32, v84, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v83, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v81, 2
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 32, v82
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v80, 2
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s53, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_lshl_u32 v18, v32, v79, 2
	v_add_lshl_u32 v19, v32, v78, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[4:7], 0 offen
	v_add_lshl_u32 v16, v32, v33, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v8, v16, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v82
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s53, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	buffer_store_b32 v12, v16, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v32, v35, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 62, v87
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[4:7], 0 offen
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v0, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v11, s[4:7], 0 offen
	buffer_store_b32 v2, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v34
	v_add_nc_u32_e32 v1, 0xe0, v34
	v_add_nc_u32_e32 v2, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_lshl_u32 v9, v32, v36, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[4:7], 0 offen
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v8, s[4:7], 0 offen
	buffer_store_b32 v7, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp64:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 156
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 156
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11680
; TotalNumSgprs: 78
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 156
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
