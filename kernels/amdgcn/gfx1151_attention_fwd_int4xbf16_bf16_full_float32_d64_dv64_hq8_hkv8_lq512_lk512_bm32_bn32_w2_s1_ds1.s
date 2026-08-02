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
	v_dual_mov_b32 v44, 0x7632 :: v_dual_lshlrev_b32 v39, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v43, 0x5410 :: v_dual_and_b32 v36, 16, v39
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s73, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s6, v37
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s72, s6, s73
	v_dual_mov_b32 v46, 0x7531 :: v_dual_and_b32 v41, 15, v0
	s_mov_b32 s63, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v3
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v84, v37, 16, v41
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[56:59], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v50, 0xff800000 :: v_dual_and_b32 v49, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[72:73], null, s52, v37, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s52, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_lshlrev_b32 v51, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s52, s72, v[72:73]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s6, v84
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v45, 0x6420 :: v_dual_and_b32 v52, 16, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v49
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v85, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s72, v84
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	v_mov_b32_e32 v24, 0
	v_and_b32_e32 v54, 24, v0
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e64 v59, 0x7632, v43, s0
	v_dual_mov_b32 v48, 0xff800000 :: v_dual_and_b32 v47, 56, v0
	v_mov_b32_e32 v25, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v29, v24
	v_xor_b32_e32 v103, v39, v54
	v_and_b32_e32 v54, 24, v51
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v53, 7, v0
	buffer_load_u16 v42, v1, s[60:63], 0 offen
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v39, 48, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v58, v51, 30, v85
	v_lshl_or_b32 v105, v41, 5, v54
	v_cndmask_b32_e64 v41, 0x5410, v44, s0
	v_lshl_or_b32 v54, v59, 8, v59
	v_cndmask_b32_e64 v45, 0x7531, v45, s0
	v_cndmask_b32_e64 v46, 0x6420, v46, s0
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v38, 3, v53
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v104, 2, v58
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v54, 0x760032, v54
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v57, 1, v47
	v_xor_b32_e32 v39, v39, v47
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v45, v45, 8, v45
	v_lshl_or_b32 v46, v46, 8, v46
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_mad_u64_u32 v[73:74], null, s5, v37, v[36:37]
	v_dual_mov_b32 v20, v24 :: v_dual_and_b32 v37, 0x760032, v41
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v23, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v115, 4, v104
	v_lshl_or_b32 v116, v53, 9, v39
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s53, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[74:75], null, s53, v57, v[38:39]
	v_lshl_or_b32 v36, v54, 4, v54
	v_and_b32_e32 v38, 0x750031, v45
	v_dual_mov_b32 v10, v24 :: v_dual_and_b32 v39, 0x750031, v46
	v_xor_b32_e32 v41, 0x90, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v123, 0x7060302, v36
	v_lshl_or_b32 v36, v37, 4, v37
	v_lshl_or_b32 v37, v38, 4, v38
	v_lshl_or_b32 v38, v39, 4, v39
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s7, s55, s7
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v55, 3, v0
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v124, 0, v41
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s54, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s54, s4, s7
	v_xor_b32_e32 v45, 0x120, v116
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v52
	v_bfe_i32 v56, v0, 3, 1
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v55, 48, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v125, 0, v45
	v_dual_mov_b32 v6, v24 :: v_dual_and_b32 v135, 0x7060302, v36
	v_cndmask_b32_e64 v43, 0x1054, v43, s4
	v_cndmask_b32_e64 v44, 0x3276, v44, s4
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v56, 0x210, v56
	v_mov_b32_e32 v40, v24
	v_lshl_or_b32 v47, v53, 6, v55
	v_and_b32_e32 v136, 0x7050301, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[75:76], null, s53, 3, v[74:75]
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v49, 6, v49
	v_xor_b32_e32 v58, 8, v103
	v_xor_b32_e32 v117, v47, v56
	v_mov_b32_e32 v21, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v90, 16, v85
	v_or_b32_e32 v89, 18, v85
	v_or_b32_e32 v88, 20, v85
	v_or_b32_e32 v87, 22, v85
	v_or_b32_e32 v86, 24, v85
	v_or_b32_e32 v101, 26, v85
	v_or_b32_e32 v100, 28, v85
	v_or_b32_e32 v99, 30, v85
	v_and_or_b32 v106, v51, 60, v49
	v_xor_b32_e32 v49, 8, v105
	v_xor_b32_e32 v51, 16, v105
	v_xor_b32_e32 v55, 24, v105
	v_add_nc_u32_e32 v118, 0, v58
	v_xor_b32_e32 v46, 0x1b0, v116
	v_xor_b32_e32 v47, 16, v117
	v_xor_b32_e32 v53, 32, v117
	v_xor_b32_e32 v54, 48, v117
	v_xor_b32_e32 v56, 0x420, v117
	v_xor_b32_e32 v57, 0x430, v117
	v_xor_b32_e32 v58, 0x410, v117
	v_lshrrev_b32_e32 v91, 4, v0
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v121, 0, v51
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v120, 0, v49
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v122, 0, v55
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v127, 0, v47
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v126, 0, v46
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v129, 0, v54
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v128, 0, v53
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v131, 0, v57
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v130, 0, v56
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v133, 8, v73
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v132, 0, v58
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v134, s53, v74
	v_or_b32_e32 v98, 2, v85
	v_or_b32_e32 v97, 4, v85
	v_or_b32_e32 v96, 6, v85
	v_or_b32_e32 v95, 8, v85
	v_or_b32_e32 v94, 10, v85
	v_or_b32_e32 v93, 12, v85
	v_or_b32_e32 v92, 14, v85
	v_or_b32_e32 v107, s73, v90
	v_or_b32_e32 v108, s73, v89
	v_or_b32_e32 v109, s73, v88
	v_or_b32_e32 v110, s73, v87
	v_or_b32_e32 v111, s73, v86
	v_or_b32_e32 v112, s73, v101
	v_or_b32_e32 v113, s73, v100
	v_or_b32_e32 v114, s73, v99
	v_xor_b32_e32 v119, 64, v106
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v141, s53, 1, v74
	s_mov_b32 s44, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
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
	s_add_i32 s54, s54, s6
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v39, v104, v32
	ds_bpermute_b32 v32, v115, v32
	ds_bpermute_b32 v41, v104, v33
	ds_bpermute_b32 v33, v115, v33
	ds_bpermute_b32 v45, v104, v34
	ds_bpermute_b32 v34, v115, v34
	ds_bpermute_b32 v36, v104, v35
	ds_bpermute_b32 v35, v115, v35
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v42
	v_and_b32_e32 v137, 0x7050301, v38
	v_lshl_or_b32 v38, v43, 8, v43
	v_lshl_or_b32 v42, v44, 8, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v76, v32, v39, s4
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v138, s3, v37
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v78, v39, v32, s4
	v_and_b32_e32 v32, 0x540054, v38
	v_and_b32_e32 v37, 0x760076, v42
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v77, v33, v41, s4
	v_cndmask_b32_e64 v79, v41, v33, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v80, v34, v45, s4
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v37, 4, v37
	v_cndmask_b32_e64 v82, v45, v34, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v81, v35, v36, s4
	v_cndmask_b32_e64 v83, v36, v35, s4
	v_and_b32_e32 v139, 0x5040504, v32
	v_and_b32_e32 v140, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s75, s73
	v_or_b32_e32 v56, s73, v97
	v_mad_u64_u32 v[63:64], null, s3, s52, v[72:73]
	v_or_b32_e32 v57, s73, v96
	v_or_b32_e32 v58, s73, v95
	v_or_b32_e32 v59, s73, v94
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v171, s75, v56, 1
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s53
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v172, s75, v57, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v56, 0x80000000, v63, s29
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v173, s75, v58, 1
	v_add_lshl_u32 v174, s75, v59, 1
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s54, s75
	v_or_b32_e32 v42, s73, v85
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[56:59], v56, s[60:63], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, s3, v141, 1
	v_or_b32_e32 v43, s73, v98
	v_add_lshl_u32 v67, s3, v75, 1
	v_dual_mov_b32 v143, v40 :: v_dual_add_nc_u32 v142, 0, v117
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s5, v73, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, s3, v134, 1
	v_or_b32_e32 v60, s73, v93
	v_add_lshl_u32 v64, s3, v74, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s44 :: v_dual_add_nc_u32 v41, 0, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v71, s75, v42, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v66, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v170, s75, v43, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v67, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v176, 0x80000000, v40, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v65, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v175, s75, v60, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v60, 0x80000000, v64, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s45 :: v_dual_add_nc_u32 v44, 0, v105
	v_dual_mov_b32 v34, s46 :: v_dual_mov_b32 v35, s47
	v_dual_mov_b32 v36, s48 :: v_dual_mov_b32 v37, s49
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v39, s51
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v145, v50, v50 :: v_dual_add_nc_u32 v62, 0, v116
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v50, v133, s5, 1
	v_or_b32_e32 v61, s73, v92
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v45, s75, v107, 1
	v_add_lshl_u32 v46, s75, v108, 1
	v_add_lshl_u32 v47, s75, v109, 1
	v_add_lshl_u32 v51, s75, v110, 1
	v_add_lshl_u32 v52, s75, v111, 1
	v_add_lshl_u32 v53, s75, v112, 1
	v_add_lshl_u32 v54, s75, v113, 1
	v_add_lshl_u32 v55, s75, v114, 1
	v_add_lshl_u32 v61, s75, v61, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v49.l, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v48
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[56:57]
	ds_store_b64 v118, v[58:59]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[56:59], v42, s[40:43], 0 offen
	buffer_load_b128 v[154:157], v43, s[40:43], 0 offen
	buffer_load_b128 v[40:43], v40, s[40:43], 0 offen
	buffer_load_b128 v[158:161], v60, s[40:43], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[162:165], v44 offset1:1
	ds_load_2addr_stride64_b64 v[166:169], v120 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[162:163], v[76:77], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[164:165], v[76:77], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v121 offset1:1
	ds_load_2addr_stride64_b64 v[36:39], v122 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[166:167], v[80:81], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[168:169], v[80:81], v[146:153] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[32:33], v[78:79], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[34:35], v[78:79], v[146:153] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[36:37], v[82:83], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[38:39], v[82:83], v[146:153] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v163, v65
	v_cvt_f32_i32_e32 v168, v149
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v169, v153
	v_cvt_f32_i32_e32 v164, v66
	v_cvt_f32_i32_e32 v44, v63
	v_cvt_f32_i32_e32 v162, v64
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v165, v146
	v_cvt_f32_i32_e32 v166, v147
	v_cvt_f32_i32_e32 v167, v148
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v66.l, v58.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v149.h, v157.l
	v_mov_b16_e64 v157.l, v59.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v59.h, v40.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v40.l, v158.h
	v_mov_b16_e32 v65.h, v42.l
	v_mov_b16_e64 v42.l, v160.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v66.h, v156.l
	v_mov_b32_e32 v153, v40
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[32:35], v176, s[68:71], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v156.l, v58.h
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[36:39], v50, s[68:71], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v58, v71, s[64:67], 0 offen
	buffer_load_u16 v71, v170, s[64:67], 0 offen
	buffer_load_u16 v170, v171, s[64:67], 0 offen
	buffer_load_u16 v171, v172, s[64:67], 0 offen
	buffer_load_u16 v172, v173, s[64:67], 0 offen
	buffer_load_u16 v173, v174, s[64:67], 0 offen
	buffer_load_u16 v174, v175, s[64:67], 0 offen
	buffer_load_u16 v175, v61, s[64:67], 0 offen
	buffer_load_u16 v178, v45, s[64:67], 0 offen
	buffer_load_u16 v179, v46, s[64:67], 0 offen
	buffer_load_u16 v180, v47, s[64:67], 0 offen
	buffer_load_u16 v181, v51, s[64:67], 0 offen
	buffer_load_u16 v182, v52, s[64:67], 0 offen
	buffer_load_u16 v183, v53, s[64:67], 0 offen
	buffer_load_u16 v184, v54, s[64:67], 0 offen
	buffer_load_u16 v185, v55, s[64:67], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v60.l, v56.l
	v_mov_b16_e64 v60.h, v154.l
	v_mov_b16_e64 v154.l, v56.h
	v_mov_b16_e64 v149.l, v59.l
	v_mov_b16_e64 v59.l, v158.l
	v_mov_b16_e32 v63.h, v41.l
	v_mov_b16_e64 v41.l, v159.h
	v_mov_b16_e32 v64.l, v57.l
	v_mov_b16_e64 v64.h, v155.l
	v_mov_b16_e64 v155.l, v57.h
	v_mov_b16_e64 v63.l, v159.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v62, v[59:60], v[153:154] offset1:8
	v_dual_mov_b32 v154, v41 :: v_dual_mul_f32 v61, v138, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v144, v102, v102
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v65.l, v160.l
	v_mov_b16_e64 v148.l, v161.l
	v_mov_b16_e64 v148.h, v43.l
	v_mov_b16_e64 v43.l, v161.h
	ds_store_2addr_b64 v124, v[63:64], v[154:155] offset1:8
	v_mov_b32_e32 v155, v42
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v158, v138, v44
	v_mul_f32_e32 v160, v138, v163
	v_mul_f32_e32 v55, v138, v69
	v_mul_f32_e32 v64, v138, v70
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v125, v[65:66], v[155:156] offset1:8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v138, v165
	v_mul_f32_e32 v47, v138, v166
	v_mul_f32_e32 v53, v138, v150
	v_mul_f32_e32 v45, v138, v169
	v_mul_f32_e32 v51, v138, v167
	v_mul_f32_e32 v52, v138, v168
	v_mul_f32_e32 v54, v138, v68
	v_mul_f32_e32 v46, v138, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.h, v49.l
	v_mov_b16_e32 v41.h, v49.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v159, v138, v162
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v162, v138, v164 :: v_dual_lshlrev_b32 v163, 16, v58
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v164, 16, v71
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v165, 16, v170
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v166, 16, v171
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v150, 16, v172
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v66, 16, v173
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v67, 16, v174
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v151, 16, v175
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v62, 16, v179
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	v_dual_cndmask_b32 v176, 0xff80ff80, v33 :: v_dual_lshlrev_b32 v63, 16, v180
	v_dual_cndmask_b32 v146, 0xff80ff80, v34 :: v_dual_cndmask_b32 v161, 0xff80ff80, v32
	v_cndmask_b32_e32 v177, 0xff80ff80, v36, vcc_lo
	v_dual_cndmask_b32 v57, 0xff80ff80, v35 :: v_dual_cndmask_b32 v56, 0xff80ff80, v38
	v_dual_cndmask_b32 v147, 0xff80ff80, v37 :: v_dual_mul_f32 v42, v138, v152
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v153, 0xffff0000, v177
	v_cndmask_b32_e32 v50, 0xff80ff80, v39, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v152, 16, v178
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v44, v157 :: v_dual_and_b32 v71, 0xffff0000, v176
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v70, 0xffff0000, v161
	v_and_b32_e32 v154, 0xffff0000, v147
	v_and_b32_e32 v157, 0xffff0000, v146
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v153
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v153, 0xffff0000, v57
	v_mov_b16_e64 v49.h, v161.l
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v155, v176, v161, v123
	v_perm_b32 v156, v176, v161, v135
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v70
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v70, v57, v146, v123
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v71
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v71, v57, v146, v135
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v154
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v154, 0xffff0000, v56
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v157
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v157, 0xffff0000, v50
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v153
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v153, v147, v177, v123
	v_perm_b32 v161, v147, v177, v135
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v154
	v_cmp_neq_f32_e64 s15, 0xff800000, v157
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v169, v104, v155
	ds_bpermute_b32 v170, v115, v156
	ds_bpermute_b32 v154, v104, v70
	ds_bpermute_b32 v156, v115, v71
	ds_bpermute_b32 v155, v104, v153
	ds_bpermute_b32 v157, v115, v161
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v49.h, v176.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, vcc_lo, s3
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v167, v50, v56, v123
	v_perm_b32 v168, v50, v56, v135
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v126, v[148:149], v[43:44] offset1:8
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v43, 0, 1, s7
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v49
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, vcc_lo, s6
	s_and_b32 s8, vcc_lo, s5
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v49.h, v177.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v70, v104, v167
	ds_bpermute_b32 v71, v115, v168
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v44, 0, 1, s9
	v_cndmask_b32_e64 v148, 0, 1, s8
	v_mov_b16_e32 v32.l, v43.l
	s_and_b32 s5, vcc_lo, s10
	s_and_b32 s10, vcc_lo, s14
	s_and_b32 s14, vcc_lo, s16
	v_mov_b16_e32 v33.l, v44.l
	v_mov_b16_e64 v34.l, v148.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_cndmask_b32_e64 v44, 0, 1, s14
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v49.h, v147.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v149, 0, 1, s5
	s_and_b32 s6, vcc_lo, s11
	v_or_b16 v43.l, v33.l, v32.l
	v_lshlrev_b16 v32.l, 8, v34.l
	v_mov_b16_e32 v33.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s10
	s_and_b32 s11, vcc_lo, s15
	s_and_b32 s15, vcc_lo, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v49.h, v146.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v147, v156, v154, s4
	v_cndmask_b32_e64 v154, v154, v156, s4
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v156, v157, v155, s4
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v43.h, v33.l, v32.l
	v_mov_b16_e64 v32.l, v149.l
	v_mov_b16_e32 v36.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s15
	s_and_b32 s16, vcc_lo, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v49.h, v57.l
	v_lshlrev_b32_e32 v57, 16, v156
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v58, 16, v184
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	v_mov_b16_e32 v38.l, v44.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v44, v170, v169, s4
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v146, 0, 1, s16
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v155, v155, v157, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v157, v71, v70, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v156, 0xffff0000, v156
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v57
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s13, vcc_lo, s13
	v_cndmask_b32_e64 v153, 0, 1, s6
	v_cndmask_b32_e64 v161, 0, 1, s12
	v_cndmask_b32_e64 v167, 0, 1, s13
	v_or_b16 v149.l, v38.l, v32.l
	v_mov_b16_e64 v32.l, v146.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v57, v61, v150
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v156, 0x3fb8aa3b, v156 :: v_dual_lshlrev_b32 v61, 16, v157
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v146, 16, v44
	v_and_b32_e32 v44, 0xffff0000, v44
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v49.h, v56.l
	v_lshlrev_b32_e32 v56, 16, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v68, 16, v181
	v_lshlrev_b32_e32 v69, 16, v182
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v33.l, v153.l
	v_mov_b16_e64 v34.l, v161.l
	v_mov_b16_e64 v35.l, v167.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v153, v169, v170, s4
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v156, v54, v66 :: v_dual_and_b32 v167, 0xffff0000, v147
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v61
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v161, 16, v147
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v147, 0x3fb8aa3b, v44
	v_cndmask_b32_e64 v70, v70, v71, s4
	v_mul_f32_e32 v56, 0x3fb8aa3b, v56
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v71, 0xffff0000, v154
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v147, v159, v164 :: v_dual_lshlrev_b32 v60, 16, v183
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v185
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v148, 0, 1, s11
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v167
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v54, 0xffff0000, v153
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v56, v53, v69 :: v_dual_mul_f32 v71, 0x3fb8aa3b, v71
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v150, 0xffff0000, v157
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v37.l, v148.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v148, 0x3fb8aa3b, v146
	v_mul_f32_e32 v146, 0x3fb8aa3b, v161
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v44, v162, v166 :: v_dual_lshlrev_b32 v157, 16, v153
	v_fmac_f32_e32 v61, v55, v67
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v55, 16, v154
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v71, v52, v68 :: v_dual_mul_f32 v166, 0x3fb8aa3b, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v150, 0x3fb8aa3b, v54 :: v_dual_mul_f32 v157, 0x3fb8aa3b, v157
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s19, vcc_lo, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v166, v64, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v151, 0x3fb8aa3b, v55 :: v_dual_fmac_f32 v150, v47, v62
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v47, 0xffff0000, v155
	v_mov_b16_e32 v49.h, v50.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, vcc_lo, s17
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v151, v51, v63
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v51, 0xffff0000, v70
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v47
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v49
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s17, vcc_lo, s3
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v51 :: v_dual_fmac_f32 v47, v46, v60
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v46, 16, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v60, 0, 1, s19
	v_cndmask_b32_e64 v51, 0, 1, s20
	s_and_b32 s18, vcc_lo, s18
	v_or_b16 v149.h, v32.l, v33.l
	v_lshlrev_b16 v32.l, 8, v34.l
	v_lshlrev_b16 v33.l, 8, v35.l
	v_lshlrev_b16 v34.l, 8, v36.l
	v_lshlrev_b16 v35.l, 8, v37.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v46, 0x3fb8aa3b, v46
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v36.l, v60.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v50, v45, v59
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v37.l, v51.l
	v_cndmask_b32_e64 v45, 0, 1, s17
	v_cndmask_b32_e64 v51, 0, 1, s18
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v46, v42, v58
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v42.l, v36.l, v32.l
	v_or_b16 v42.h, v37.l, v33.l
	v_mov_b16_e32 v32.l, v45.l
	v_mov_b16_e32 v33.l, v51.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v148, v158, v163 :: v_dual_fmac_f32 v157, v65, v152
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v45, v42, v43, v136
	v_perm_b32 v42, v42, v43, v137
	v_or_b16 v43.l, v32.l, v34.l
	v_or_b16 v43.h, v33.l, v35.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v146, v160, v165
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v45, v104, v45
	ds_bpermute_b32 v42, v115, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v49.l
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v51, v43, v149, v136
	v_perm_b32 v43, v43, v149, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v49.l
	v_mov_b16_e32 v39.h, v49.l
	v_mov_b16_e32 v38.h, v49.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v51, v104, v51
	ds_bpermute_b32 v43, v115, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v49.l
	v_mov_b16_e32 v32.h, v49.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[158:161], v142
	ds_load_b128 v[162:165], v127
	ds_load_b128 v[64:67], v130
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v49.l
	v_mov_b16_e32 v36.h, v49.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[52:55], v127 offset:2048
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v58, v42, v45, s4
	v_cndmask_b32_e64 v42, v45, v42, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v45, 1, v58
	v_and_b32_e32 v60, 1, v42
	v_and_b32_e32 v68, 0x1000000, v58
	v_cndmask_b32_e64 v69, v43, v51, s4
	v_and_b32_e32 v62, 0x100, v42
	v_cmp_eq_u32_e64 s3, 1, v45
	v_cmp_eq_u32_e64 s27, 1, v60
	v_cmp_eq_u32_e64 s33, 0, v68
	v_and_b32_e32 v60, 0x1000000, v69
	v_and_b32_e32 v63, 0x1000000, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v148, 0xff800000, v148, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v59, 0x100, v58
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, v44, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s37, 0, v60
	v_and_b32_e32 v42, 0x10000, v42
	v_and_b32_e32 v58, 0x10000, v58
	v_cndmask_b32_e64 v43, v51, v43, s4
	v_cmp_eq_u32_e64 s30, 0, v59
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, v166, 0xff800000, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 0x100, v69
	v_cmp_eq_u32_e64 s21, 0, v42
	v_cmp_eq_u32_e64 s31, 0, v58
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, v147, 0xff800000, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v45, 1, v43
	v_cmp_eq_u32_e64 s35, 0, v44
	v_and_b32_e32 v58, 0x100, v43
	v_and_b32_e32 v59, 0x1000000, v43
	v_and_b32_e32 v43, 0x10000, v43
	v_cmp_eq_u32_e64 s28, 0, v62
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, v156, 0xff800000, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 1, v69
	v_cmp_eq_u32_e64 s22, 0, v63
	v_and_b32_e32 v62, 0x10000, v69
	v_cmp_eq_u32_e64 s23, 1, v45
	v_cmp_eq_u32_e64 s25, 0, v58
	v_cmp_eq_u32_e64 s24, 0, v43
	v_cmp_eq_u32_e64 s26, 0, v59
	v_cmp_eq_u32_e64 s34, 1, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, v150, 0xff800000, s28
	v_cndmask_b32_e64 v149, v151, 0xff800000, s21
	v_cndmask_b32_e64 v150, v71, 0xff800000, s22
	v_cndmask_b32_e64 v153, 0xff800000, v157, s27
	v_cndmask_b32_e64 v154, 0xff800000, v56, s23
	v_cndmask_b32_e64 v155, v47, 0xff800000, s25
	v_cndmask_b32_e64 v157, v46, 0xff800000, s24
	v_cndmask_b32_e64 v167, v50, 0xff800000, s26
	v_cndmask_b32_e64 v50, 0xff800000, v57, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s36, 0, v62
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, v146, 0xff800000, s31
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v63, v51, v149, v150
	v_max_f32_e32 v68, v148, v147
	v_max3_f32 v42, v154, v155, v157
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, v61, 0xff800000, s36
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v43, v152, v50, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v42, v63, v42, v167
	v_max3_f32 v44, v168, v166, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v68, v151, v43
	v_max3_f32 v42, v43, v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v146, v48, v42, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v148, v146
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v43, v48, v146
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v152, v146
	v_sub_f32_e32 v47, v156, v146
	v_sub_f32_e32 v57, v166, v146
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v59, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v57, v57
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v42, v147, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v44, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, v45, 0, s33
	v_cndmask_b32_e64 v48, v57, 0, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.l, v43.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v151, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v48.h
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v42, v42, 0, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v33, v43, v33, 0x7fff
	v_mov_b16_e32 v32.l, v42.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s3, v42, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, v46, 0, s31
	v_cndmask_b32_e64 v46, v47, 0, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v50, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.l, v46.h
	v_cmp_o_f32_e64 s33, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v35, v45, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v46, v38, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v56, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v46, v46
	v_mov_b16_e32 v39.l, v47.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v168, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v47, v47
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v39
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v47, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s35
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, v58, 0, s36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v39, 0, v59, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v40, 1, v40
	v_cmp_o_f32_e64 s36, v48, v48
	v_mov_b16_e32 v41.l, v56.h
	v_cmp_o_f32_e64 s37, v56, v56
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v39
	v_mul_f32_e32 v9, v9, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v44, v34, 0x7fff
	v_and_b32_e32 v41, 1, v41
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v48, v40, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v39
	v_mul_f32_e32 v25, v25, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v45, v56, v41, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[56:59], v130 offset:2048
	ds_load_b128 v[68:71], v131
	ds_load_b128 v[60:63], v131 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v47.h, 0x7fff, v44.h, s36
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v39
	v_mul_f32_e32 v28, v28, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v47.l, 0x7fff, v45.h, s37
	v_permlanex16_b32 v45, v38, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v39
	v_mul_f32_e32 v30, v30, v39
	v_mul_f32_e32 v31, v31, v39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, v148, v153, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v44, v45, v38, v139
	v_perm_b32 v45, v45, v38, v140
	v_permlanex16_b32 v38, v47, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v39
	v_mul_f32_e32 v17, v17, v39
	v_mul_f32_e32 v18, v18, v39
	v_mul_f32_e32 v19, v19, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v46, v38, v47, v139
	v_perm_b32 v47, v38, v47, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, v153, v148, s4
	v_cndmask_b32_e64 v148, v51, v147, s4
	v_cndmask_b32_e64 v147, v147, v51, s4
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v39
	v_mul_f32_e32 v21, v21, v39
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v38, v106, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v32
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v39
	v_mul_f32_e32 v23, v23, v39
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v48, v119, v48
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v32, v42, v32, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s30
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s31
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v39
	v_mul_f32_e32 v15, v15, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s3
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v35, v33, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v32, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v42, v35, v33, v139
	v_perm_b32 v43, v35, v33, v140
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v40, v34, v32, v139
	v_perm_b32 v41, v34, v32, v140
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v142 offset:1024
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[158:165], v[40:47], v[24:31]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, v149, v151, s4
	v_cndmask_b32_e64 v151, v151, v149, s4
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[64:71], v[40:47], v[16:23]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, v150, v152, s4
	v_cndmask_b32_e64 v65, v152, v150, s4
	ds_bpermute_b32 v67, v119, v147
	v_cndmask_b32_e64 v71, v155, v156, s4
	v_cndmask_b32_e64 v147, v156, v155, s4
	v_cndmask_b32_e64 v152, v167, v166, s4
	v_cndmask_b32_e64 v156, v166, v167, s4
	ds_bpermute_b32 v68, v106, v158
	ds_bpermute_b32 v69, v119, v151
	ds_bpermute_b32 v66, v106, v148
	ds_bpermute_b32 v152, v106, v152
	ds_bpermute_b32 v156, v119, v156
	v_cndmask_b32_e64 v70, v154, v50, s4
	v_cndmask_b32_e64 v50, v50, v154, s4
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(8)
	v_max_f32_e32 v159, v38, v38
.Ltmp7:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v148, v157, v168, s4
	v_cndmask_b32_e64 v151, v168, v157, s4
	ds_bpermute_b32 v70, v106, v70
	ds_bpermute_b32 v50, v119, v50
	ds_bpermute_b32 v71, v106, v71
	ds_bpermute_b32 v147, v119, v147
	ds_bpermute_b32 v148, v106, v148
	ds_bpermute_b32 v151, v119, v151
	ds_bpermute_b32 v64, v106, v64
	ds_bpermute_b32 v65, v119, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v150, v146
	v_sub_f32_e32 v149, v149, v146
	v_sub_f32_e32 v157, v157, v146
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v158, v69, v68, s0
	v_cndmask_b32_e64 v68, v68, v69, s0
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v48, v48
.Ltmp9:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v162, v156, v152, s0
	v_cndmask_b32_e64 v152, v152, v156, s0
	v_cndmask_b32_e64 v156, v48, v38, s0
	v_cndmask_b32_e64 v38, v38, v48, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v51, v146
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, v66, v67, s0
	v_cndmask_b32_e64 v161, v67, v66, s0
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v159, v69
.Ltmp11:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v69, v50, v70, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v160, v158, v68
.Ltmp13:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, v70, v50, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v159, v147, v71, s0
	v_cndmask_b32_e64 v71, v71, v147, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v50, v66, v161, v67
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v67, v148, v151, v162
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v70, v159, v71
.Ltmp17:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, v48, 0, s28
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v163, v65, v64, s0
	v_cndmask_b32_e64 v164, v64, v65, s0
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v66, v67, v152
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v48.h
	v_cmp_o_f32_e64 s28, v48, v48
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v64, v65, v69
.Ltmp21:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, v150, 0, s22
	v_cndmask_b32_e64 v149, v149, 0, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, v157, 0, s24
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v50, v67, v66
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.h, v49.l
	v_mov_b16_e64 v67.l, v150.h
	v_add3_u32 v37, v48, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v153, v146
	v_sub_f32_e32 v153, v155, v146
	v_sub_f32_e32 v155, v167, v146
	v_dual_sub_f32 v154, v154, v146 :: v_dual_and_b32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v165, v151, v148, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, v148, v151, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.h, v49.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.h, v49.l
	v_mov_b16_e64 v148.h, v49.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v64.l, v149.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v157.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, v155, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v166, v150, v67, 0x7fff
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v67, v66
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v48.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.l, v155.h
	v_and_b32_e32 v64, 1, v64
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v148, 1, v148
	v_and_b32_e32 v147, 1, v147
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v39
	v_mul_f32_e32 v0, v0, v39
	v_mul_f32_e32 v4, v4, v39
	v_mul_f32_e32 v6, v6, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.h, v49.l
	v_cmp_o_f32_e64 s27, v48, v48
	v_add3_u32 v36, v48, v36, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v150, v150
	v_cmp_o_f32_e64 s23, v149, v149
	v_add3_u32 v167, v149, v64, 0x7fff
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v67, v67
.Ltmp29:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v168, v155, v147, 0x7fff
	v_add3_u32 v169, v157, v148, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v128
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v39
	v_mul_f32_e32 v2, v2, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.h, v49.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[48:51], v142 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, v153, 0, s25
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v171, v66, v64
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v170.l, 0x7fff, v36.h, s27
	v_cndmask_b16 v170.h, 0x7fff, v37.h, s28
	v_mov_b16_e64 v65.l, v154.h
	v_mov_b16_e64 v39.l, v153.h
	v_cmp_o_f32_e64 s24, v153, v153
	v_cmp_o_f32_e64 s25, v154, v154
	v_cmp_o_f32_e64 s21, v155, v155
	v_and_b32_e32 v65, 1, v65
	v_cmp_o_f32_e64 s3, v157, v157
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[48:55], v[40:47], v[8:15]
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v50, v145, v171
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v39, 1, v39
	v_cndmask_b16 v49.h, 0x7fff, v166.h, s22
	v_cndmask_b16 v49.l, 0x7fff, v167.h, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v156, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v153, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v38, v50
	v_sub_f32_e32 v38, v161, v50
	v_sub_f32_e32 v145, v162, v50
	v_sub_f32_e32 v53, v163, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.h, 0x7fff, v39.h, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v160, v50
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v145, v145
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v69, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v39, v39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v159, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v37, v37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v153, v154, v65, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s14
	v_cndmask_b32_e64 v145, 0, v145, s18
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v54, v164, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s20
	v_cndmask_b32_e64 v39, 0, v39, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v68, v50
	v_sub_f32_e32 v68, v70, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s15
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s9
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s7
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[64:67], v142 offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.l, 0x7fff, v153.h, s25
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v54, s13
	v_cndmask_b32_e64 v69, 0, v69, s16
	v_cndmask_b32_e64 v68, 0, v68, s5
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v53, v54 :: v_dual_add_f32 v54, v55, v68
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v71, v50
	v_sub_f32_e32 v71, v165, v50
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v165, v38, v39
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[56:63], v[40:47], v[0:7]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s12
	v_cndmask_b32_e64 v70, 0, v70, s6
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v164, v36, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v71, s17
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v69, v70
.Ltmp39:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[68:71], v132 offset:2048
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v151, v50
	v_sub_f32_e32 v151, v152, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v163, v151
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s10
	v_cndmask_b32_e64 v163, 0, v163, s11
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v142, v166, v142 :: v_dual_add_f32 v145, v145, v163
	v_dual_add_f32 v163, v164, v165 :: v_dual_sub_f32 v48, v158, v50
.Ltmp41:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[155:158], v128 offset:2048
	ds_load_b128 v[151:154], v129
	ds_load_b128 v[159:162], v129 offset:2048
	ds_load_b128 v[36:39], v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s19
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v48, v52
	v_mov_b32_e32 v48, v146
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v146.h, 0x7fff, v168.h, s21
	v_cndmask_b16 v146.l, 0x7fff, v169.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v102
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v53 :: v_dual_add_f32 v53, v54, v55
	v_add_f32_e32 v54, v142, v145
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v55, v170, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v142, v144, v171
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v163, v52
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v144, v49, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v54
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v163, v55, v170, v139
	v_perm_b32 v164, v55, v170, v140
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v55, v102, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v165, v144, v49, v139
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v53
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v166, v144, v49, v140
	v_permlanex16_b32 v54, v51, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v55
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v53, v146, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v55, v52 :: v_dual_mov_b32 v102, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v167, v54, v51, v139
	v_perm_b32 v168, v54, v51, v140
	v_perm_b32 v169, v53, v146, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v170, v53, v146, v140
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v41, 0, v49, s3
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s75, 32
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v52, v55
.Ltmp57:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[147:154], v[163:170], v[24:31]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[32:39], v[163:170], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[155:162], v[163:170], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[64:71], v[163:170], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v40, v143, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s75, 0x1e0
	s_mov_b32 s75, s3
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v32, v104, v40
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
	v_mul_lo_u32 v32, s53, v84
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
	v_add_nc_u32_e32 v34, v32, v85
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s53, v85
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s59, 0xffff
	s_mov_b32 s4, s58
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v37, v32, v85, 2
	v_add_lshl_u32 v38, v32, v98, 2
	v_add_lshl_u32 v39, v32, v97, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s53, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v37, s[4:7], 0 offen
	buffer_store_b32 v25, v38, s[4:7], 0 offen
	buffer_store_b32 v26, v39, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v96, 2
	v_add_lshl_u32 v25, v32, v95, 2
	v_add_lshl_u32 v26, v32, v94, 2
	v_add_lshl_u32 v37, v32, v93, 2
	v_add_lshl_u32 v38, v32, v92, 2
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
	v_add_lshl_u32 v24, v32, v90, 2
	v_add_lshl_u32 v25, v32, v89, 2
	v_add_lshl_u32 v26, v32, v88, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v87, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v86, 2
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 32, v85
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v101, 2
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s53, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_lshl_u32 v18, v32, v100, 2
	v_add_lshl_u32 v19, v32, v99, 2
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
	v_or_b32_e32 v35, 48, v85
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
	v_or_b32_e32 v36, 62, v91
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
.Ltmp58:
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
		.amdhsa_next_free_vgpr 186
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 186
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
; codeLenInByte = 11000
; TotalNumSgprs: 78
; NumVgprs: 186
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 186
; Occupancy: 8
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
    .vgpr_count:     186
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
