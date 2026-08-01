	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[84:87], s[0:1], 0x60
	v_dual_mov_b32 v41, 0x5410 :: v_dual_and_b32 v38, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[68:75], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v42, 0x7632 :: v_dual_lshlrev_b32 v1, 4, v38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s104, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s104
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v40, 15, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	v_mov_b32_e32 v18, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 3, v0
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v129, 16, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[113:114], null, s84, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v19, v17 :: v_dual_lshlrev_b32 v48, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s84, s7, v[113:114]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	v_dual_mov_b32 v28, v17 :: v_dual_lshlrev_b32 v55, 9, v0
	v_dual_mov_b32 v23, v17 :: v_dual_lshlrev_b32 v130, 2, v0
	v_bfe_i32 v62, v0, 5, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v39
	v_dual_mov_b32 v9, v17 :: v_dual_lshlrev_b32 v38, 6, v38
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[92:95], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v40
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v30, v17 :: v_dual_lshlrev_b32 v57, 5, v0
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v126, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_mov_b32_e32 v185, 0xff800000
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_bfe_i32 v59, v0, 2, 1
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v126
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_bfe_i32 v61, v0, 3, 1
	v_dual_mov_b32 v11, v17 :: v_dual_lshlrev_b32 v66, 5, v129
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v65, 0x1b8, v130
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v15, v17 :: v_dual_and_b32 v62, 0x2040, v62
	v_dual_mov_b32 v16, v17 :: v_dual_and_b32 v67, 0x7c, v130
	buffer_load_u16 v37, v1, s[92:95], 0 offen
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v63, s6, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v64, v48, 30, v46
	v_and_or_b32 v38, 0x1c00, v55, v38
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v47, v0, 0, 1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v131, 4, v0
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v53, 24, v0
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v58, 4, v0
	v_dual_mov_b32 v2, v17 :: v_dual_and_b32 v57, 0x60, v57
	v_dual_mov_b32 v4, v17 :: v_dual_lshlrev_b32 v69, 2, v39
	v_dual_mov_b32 v8, v17 :: v_dual_and_b32 v59, 0x2040, v59
	v_mov_b32_e32 v50, v17
	s_sub_i32 s3, s3, s1
	v_lshrrev_b32_e32 v68, 3, v39
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x200, v63
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v63, 2, v64
	v_lshl_or_b32 v39, v39, 4, v67
	v_and_or_b32 v55, 0x1020, v61, v62
	v_or3_b32 v148, v38, v66, v65
	v_dual_mov_b32 v20, v17 :: v_dual_lshlrev_b32 v45, 3, v0
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v54, 0x70, v0
	v_mov_b32_e32 v10, v17
	v_dual_mov_b32 v12, v17 :: v_dual_lshlrev_b32 v133, 3, v40
	v_mov_b32_e32 v1, v17
	v_xor_b32_e32 v134, v131, v53
	v_and_b32_e32 v53, 24, v48
	v_and_b32_e32 v48, 0x80, v48
	v_lshl_add_u32 v58, v58, 9, 0
	v_and_or_b32 v47, 0x1020, v47, v59
	v_xor_b32_e32 v59, 4, v63
	v_xor_b32_e32 v149, v39, v68
	v_xor_b32_e32 v38, v55, v57
	v_xor_b32_e32 v39, 8, v148
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v43, 56, v45
	v_or_b32_e32 v135, s104, v46
	v_lshrrev_b32_e32 v46, 1, v54
	v_lshl_add_u32 v136, v40, 1, 0
	v_lshl_or_b32 v137, v40, 5, v53
	v_lshl_or_b32 v40, v54, 6, v133
	v_add3_u32 v38, v58, v48, v38
	v_add_nc_u32_e32 v157, 0, v39
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 3
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[114:115], null, s5, v44, v[43:44]
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s87, s0
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s3
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[115:116], null, s85, v44, v[43:44]
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v60, 8, v0
	v_dual_mov_b32 v13, v17 :: v_dual_lshlrev_b32 v70, 6, v129
	v_xor_b32_e32 v40, v40, v46
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s7, s86, 0x3fb8aa3b
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s85, v43
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s86, s4, s0
	v_xor_b32_e32 v43, 16, v148
	v_add_nc_u32_e32 v175, v38, v129
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v129
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v56, 28, v0
	v_dual_mov_b32 v6, v17 :: v_dual_and_b32 v45, 0x310, v45
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v156, 0, v40
	v_dual_mov_b32 v49, v17 :: v_dual_add_nc_u32 v158, 0, v43
	v_lshl_or_b32 v54, v60, 4, v70
	v_cndmask_b32_e64 v41, 0x1054, v41, s0
	v_cndmask_b32_e64 v42, 0x3276, v42, s0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[116:117], null, s5, 48, v[114:115]
	v_lshl_or_b32 v53, v56, 7, v69
	v_or3_b32 v151, v47, v54, v45
	v_xor_b32_e32 v47, 48, v148
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v42, v42, 8, v42
	v_xor_b32_e32 v64, 8, v134
	v_mad_u64_u32 v[119:120], null, s85, 48, v[115:116]
	v_or3_b32 v150, v53, v57, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v152, 0, v64
	v_xor_b32_e32 v60, 8, v137
	v_xor_b32_e32 v61, 16, v137
	v_xor_b32_e32 v62, 24, v137
	v_xor_b32_e32 v44, 24, v148
	v_xor_b32_e32 v45, 32, v148
	v_xor_b32_e32 v46, 40, v148
	v_xor_b32_e32 v53, 56, v148
	v_xor_b32_e32 v54, 0x810, v149
	v_xor_b32_e32 v55, 4, v150
	v_xor_b32_e32 v56, 8, v150
	v_xor_b32_e32 v57, 12, v150
	v_xor_b32_e32 v64, 16, v150
	v_xor_b32_e32 v65, 20, v150
	v_xor_b32_e32 v66, 24, v150
	v_xor_b32_e32 v67, 28, v150
	v_xor_b32_e32 v68, 32, v151
	v_xor_b32_e32 v48, 64, v151
	v_xor_b32_e32 v58, 0x60, v151
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_mov_b32 v187, 0xff800000
	v_dual_mov_b32 v188, 0xff800000 :: v_dual_mov_b32 v189, 0xff800000
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_mov_b32 v183, 0xff800000
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_mov_b32 v181, 0xff800000
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v132, 0x78, v0
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v154, 0, v61
	v_dual_mov_b32 v51, v17 :: v_dual_add_nc_u32 v160, 0, v45
	v_dual_mov_b32 v52, v17 :: v_dual_add_nc_u32 v153, 0, v60
	v_or_b32_e32 v138, 44, v135
	v_or_b32_e32 v139, 46, v135
	v_or_b32_e32 v140, 48, v135
	v_or_b32_e32 v141, 50, v135
	v_or_b32_e32 v142, 52, v135
	v_or_b32_e32 v143, 54, v135
	v_or_b32_e32 v144, 56, v135
	v_or_b32_e32 v145, 58, v135
	v_or_b32_e32 v146, 60, v135
	v_or_b32_e32 v147, 62, v135
	v_add_nc_u32_e32 v155, 0, v62
	v_add_nc_u32_e32 v159, 0, v44
	v_add_nc_u32_e32 v161, 0, v46
	v_add_nc_u32_e32 v163, 0, v53
	v_add_nc_u32_e32 v164, 0, v54
	v_add_nc_u32_e32 v165, 0, v55
	v_add_nc_u32_e32 v166, 0, v56
	v_add_nc_u32_e32 v167, 0, v57
	v_add_nc_u32_e32 v168, 0, v64
	v_add_nc_u32_e32 v169, 0, v65
	v_add_nc_u32_e32 v170, 0, v66
	v_add_nc_u32_e32 v171, 0, v67
	v_add_nc_u32_e32 v172, 0, v68
	v_add_nc_u32_e32 v173, 0, v48
	v_add_nc_u32_e32 v174, 0, v58
	v_lshl_add_u32 v176, s5, 4, v114
	v_lshl_add_u32 v177, s5, 5, v114
	v_lshl_add_u32 v178, s85, 4, v115
	v_lshl_add_u32 v180, s85, 5, v115
	s_mov_b32 s76, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s71, s71, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s89, s89, 0xffff
	s_mov_b32 s69, 0x76543210
	s_mov_b32 s77, s76
	s_mov_b32 s78, s76
	s_mov_b32 s79, s76
	s_mov_b32 s80, s76
	s_mov_b32 s81, s76
	s_mov_b32 s82, s76
	s_mov_b32 s83, s76
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_mov_b32 s102, s94
	s_mov_b32 s103, s95
	s_mov_b32 vcc_hi, s76
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s100, s88
	s_mov_b32 s101, s89
	s_add_i32 s86, s86, s6
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v39, v63, v33
	ds_bpermute_b32 v33, v59, v33
	ds_bpermute_b32 v38, v63, v34
	ds_bpermute_b32 v34, v59, v34
	ds_bpermute_b32 v40, v63, v35
	ds_bpermute_b32 v35, v59, v35
	ds_bpermute_b32 v43, v63, v36
	ds_bpermute_b32 v36, v59, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v117, v33, v39, s0
	v_cndmask_b32_e64 v120, v39, v33, s0
	v_and_b32_e32 v33, 0x540054, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	v_add_nc_u32_e32 v162, 0, v47
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v118, v34, v38, s0
	v_cndmask_b32_e64 v121, v38, v34, s0
	v_lshl_or_b32 v33, v33, 4, v33
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v179, s7, v37
	v_and_b32_e32 v37, 0x760076, v42
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v122, v35, v40, s0
	v_cndmask_b32_e64 v124, v40, v35, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v123, v36, v43, s0
	v_cndmask_b32_e64 v125, v43, v36, s0
	v_lshl_or_b32 v34, v37, 4, v37
	v_and_b32_e32 v127, 0x5040504, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v128, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s4, vcc_hi, s104
	v_or_b32_e32 v57, 2, v135
	v_mad_u64_u32 v[41:42], null, s4, s84, v[113:114]
	v_or_b32_e32 v58, 4, v135
	v_or_b32_e32 v59, 6, v135
	v_or_b32_e32 v60, 8, v135
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v84, 0, v150
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v111, vcc_hi, v57, 1
	v_add_lshl_u32 v112, vcc_hi, v58, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v194, vcc_hi, v59, 1
	v_add_lshl_u32 v198, vcc_hi, v60, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s76 :: v_dual_add_nc_u32 v44, 0, v134
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[57:60], v41, s[92:95], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s77 :: v_dual_add_nc_u32 v45, 0, v137
	v_or_b32_e32 v71, 30, v135
	v_or_b32_e32 v72, 32, v135
	v_or_b32_e32 v73, 34, v135
	v_or_b32_e32 v74, 36, v135
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v209, vcc_hi, v71, 1
	v_add_lshl_u32 v210, vcc_hi, v72, 1
	v_add_lshl_u32 v211, vcc_hi, v73, 1
	v_add_lshl_u32 v212, vcc_hi, v74, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_barrier
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s86, vcc_hi
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v35, s78 :: v_dual_mov_b32 v36, s79
	v_dual_mov_b32 v37, s80 :: v_dual_mov_b32 v38, s81
	v_dual_mov_b32 v39, s82 :: v_dual_mov_b32 v40, s83
	v_or_b32_e32 v61, 10, v135
	v_or_b32_e32 v62, 12, v135
	v_or_b32_e32 v63, 14, v135
	v_or_b32_e32 v64, 16, v135
	v_or_b32_e32 v65, 18, v135
	v_or_b32_e32 v66, 20, v135
	v_or_b32_e32 v67, 22, v135
	v_or_b32_e32 v68, 24, v135
	v_or_b32_e32 v69, 26, v135
	v_or_b32_e32 v70, 28, v135
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v85, s5, v176, 1
	v_add_lshl_u32 v86, s5, v177, 1
	v_add_lshl_u32 v87, s5, v116, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v199, vcc_hi, v61, 1
	v_add_lshl_u32 v200, vcc_hi, v62, 1
	v_add_lshl_u32 v201, vcc_hi, v63, 1
	v_add_lshl_u32 v202, vcc_hi, v64, 1
	v_add_lshl_u32 v203, vcc_hi, v65, 1
	v_add_lshl_u32 v204, vcc_hi, v66, 1
	v_add_lshl_u32 v205, vcc_hi, v67, 1
	v_add_lshl_u32 v206, vcc_hi, v68, 1
	v_add_lshl_u32 v207, vcc_hi, v69, 1
	v_add_lshl_u32 v208, vcc_hi, v70, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v223, 0x80000000, v85, s1
	v_cndmask_b32_e64 v224, 0x80000000, v86, s1
	v_cndmask_b32_e64 v225, 0x80000000, v87, s1
	v_add_lshl_u32 v42, s5, v114, 1
	v_or_b32_e32 v75, 38, v135
	v_or_b32_e32 v76, 40, v135
	v_or_b32_e32 v77, 42, v135
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v46, vcc_hi, v135, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v213, vcc_hi, v75, 1
	v_add_lshl_u32 v214, vcc_hi, v76, 1
	v_add_lshl_u32 v48, vcc_hi, v139, 1
	v_add_lshl_u32 v78, vcc_hi, v144, 1
	v_add_lshl_u32 v79, vcc_hi, v145, 1
	v_add_lshl_u32 v80, vcc_hi, v146, 1
	v_add_lshl_u32 v81, vcc_hi, v147, 1
	v_add_lshl_u32 v77, vcc_hi, v77, 1
	v_add_lshl_u32 v47, vcc_hi, v138, 1
	v_add_lshl_u32 v53, vcc_hi, v140, 1
	v_add_lshl_u32 v54, vcc_hi, v141, 1
	v_add_lshl_u32 v55, vcc_hi, v142, 1
	v_add_lshl_u32 v56, vcc_hi, v143, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v43.l, 0
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s41, s4, s85
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v195, s41, v115, 1
	v_add_lshl_u32 v196, s41, v178, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v216.l, v43.l
	v_mov_b16_e64 v215.l, v43.l
	v_mov_b16_e64 v217.l, v43.l
	v_mov_b16_e64 v220.l, v43.l
	v_mov_b16_e64 v219.l, v43.l
	v_mov_b16_e64 v221.l, v43.l
	v_mov_b16_e64 v218.l, v43.l
	v_mov_b16_e64 v222.l, v43.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v197, s41, v180, 1
	v_cndmask_b32_e64 v195, 0x80000000, v195, s3
	v_cndmask_b32_e64 v196, 0x80000000, v196, s3
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v44, v[57:58]
	ds_store_b64 v152, v[59:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[71:74], v45 offset1:1
	ds_load_2addr_stride64_b64 v[99:102], v45 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[103:106], v153 offset1:1
	ds_load_2addr_stride64_b64 v[107:110], v153 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[190:193], v154 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v197, 0x80000000, v197, s3
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v187, v187, v187
	v_dual_max_f32 v189, v189, v189 :: v_dual_max_f32 v188, v188, v188
	v_max_f32_e32 v186, v186, v186
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[117:118], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[73:74], v[117:118], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[99:100], v[117:118], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[101:102], v[117:118], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v154 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v155 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v155 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[107:108], v[122:123], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[109:110], v[122:123], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[103:104], v[122:123], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[105:106], v[122:123], v[65:72] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[101:104], v42, s[100:103], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[190:191], v[120:121], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[192:193], v[120:121], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[33:34], v[120:121], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[35:36], v[120:121], v[93:100] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[33:36], v223, s[100:103], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[37:38], v[124:125], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[39:40], v[124:125], v[65:72] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[37:40], v224, s[100:103], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[73:74], v[124:125], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[75:76], v[124:125], v[93:100] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v74, v58
	v_cvt_f32_i32_e32 v75, v59
	v_cvt_f32_i32_e32 v76, v60
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[57:60], v225, s[100:103], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v105, v46, s[96:99], 0 offen
	buffer_load_u16 v106, v111, s[96:99], 0 offen
	buffer_load_u16 v107, v112, s[96:99], 0 offen
	buffer_load_u16 v108, v194, s[96:99], 0 offen
	buffer_load_u16 v109, v198, s[96:99], 0 offen
	buffer_load_u16 v110, v199, s[96:99], 0 offen
	buffer_load_u16 v111, v200, s[96:99], 0 offen
	buffer_load_u16 v112, v201, s[96:99], 0 offen
	buffer_load_u16 v190, v202, s[96:99], 0 offen
	buffer_load_u16 v191, v203, s[96:99], 0 offen
	buffer_load_u16 v192, v204, s[96:99], 0 offen
	buffer_load_u16 v193, v205, s[96:99], 0 offen
	buffer_load_u16 v194, v206, s[96:99], 0 offen
	buffer_load_u16 v198, v207, s[96:99], 0 offen
	buffer_load_u16 v199, v208, s[96:99], 0 offen
	buffer_load_u16 v200, v209, s[96:99], 0 offen
	buffer_load_u16 v201, v210, s[96:99], 0 offen
	buffer_load_u16 v202, v211, s[96:99], 0 offen
	buffer_load_u16 v203, v212, s[96:99], 0 offen
	buffer_load_u16 v204, v213, s[96:99], 0 offen
	buffer_load_u16 v205, v214, s[96:99], 0 offen
	buffer_load_u16 v77, v77, s[96:99], 0 offen
	buffer_load_u16 v206, v47, s[96:99], 0 offen
	buffer_load_u16 v48, v48, s[96:99], 0 offen
	buffer_load_u16 v207, v53, s[96:99], 0 offen
	buffer_load_u16 v208, v54, s[96:99], 0 offen
	buffer_load_u16 v209, v55, s[96:99], 0 offen
	buffer_load_u16 v210, v56, s[96:99], 0 offen
	buffer_load_u16 v78, v78, s[96:99], 0 offen
	buffer_load_u16 v79, v79, s[96:99], 0 offen
	buffer_load_u16 v80, v80, s[96:99], 0 offen
	buffer_load_u16 v81, v81, s[96:99], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	v_dual_mul_f32 v74, v179, v74 :: v_dual_add_nc_u32 v83, 0, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v64, v179, v64
	v_mul_f32_e32 v68, v179, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v67, v179, v67
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_mul_f32_e32 v63, v179, v63
	v_mul_f32_e32 v76, v179, v76
	v_mul_f32_e32 v66, v179, v66
	v_mul_f32_e32 v73, v179, v73
	v_cvt_f32_i32_e32 v61, v61
	v_mul_f32_e32 v62, v179, v62
	v_mul_f32_e32 v65, v179, v65
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v85, v85
	v_mul_f32_e32 v61, v179, v61
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v86, v86
	v_mul_f32_e32 v70, v179, v70
	v_mul_f32_e32 v71, v179, v71
	v_mul_f32_e32 v85, v179, v85
	v_mul_f32_e32 v69, v179, v69
	v_mul_f32_e32 v72, v179, v72
	v_mul_f32_e32 v86, v179, v86
	v_dual_mul_f32 v75, v179, v75 :: v_dual_add_nc_u32 v82, 0, v149
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_mul_f32_e32 v87, v179, v87
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_mul_f32_e32 v89, v179, v89
	v_mul_f32_e32 v90, v179, v90
	v_mul_f32_e32 v93, v179, v93
	v_mul_f32_e32 v95, v179, v95
	v_mul_f32_e32 v96, v179, v96
	v_mul_f32_e32 v99, v179, v99
	v_mul_f32_e32 v100, v179, v100
	v_mul_f32_e32 v88, v179, v88
	v_mul_f32_e32 v91, v179, v91
	v_mul_f32_e32 v98, v179, v98
	v_mul_f32_e32 v94, v179, v94
	v_mul_f32_e32 v92, v179, v92
	v_mul_f32_e32 v97, v179, v97
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v55, 0xff80ff80, v58, s1
	v_cndmask_b32_e64 v56, 0xff80ff80, v57, s1
	v_cndmask_b32_e64 v57, 0xff80ff80, v60, s1
	v_cndmask_b32_e64 v58, 0xff80ff80, v59, s1
	v_mov_b16_e32 v60.l, v43.l
	v_mov_b16_e32 v59.l, v43.l
	v_and_b32_e32 v224, 0xffff0000, v55
	v_cndmask_b32_e64 v41, 0xff80ff80, v102, s1
	v_cndmask_b32_e64 v42, 0xff80ff80, v101, s1
	v_cndmask_b32_e64 v44, 0xff80ff80, v104, s1
	v_cndmask_b32_e64 v45, 0xff80ff80, v103, s1
	v_mov_b16_e32 v101.l, v43.l
	v_mov_b16_e64 v217.h, v41.l
	v_mov_b16_e32 v43.h, v42.l
	v_mov_b16_e64 v216.h, v44.l
	v_mov_b16_e64 v215.h, v45.l
	v_mov_b16_e32 v101.h, v55.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v217
	v_cmp_neq_f32_e64 s7, 0xff800000, v43
	v_cmp_neq_f32_e64 s4, 0xff800000, v216
	v_cmp_neq_f32_e64 s5, 0xff800000, v215
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v102, 0xffff0000, v45
	v_cndmask_b32_e64 v46, 0xff80ff80, v34, s1
	v_cndmask_b32_e64 v47, 0xff80ff80, v33, s1
	v_cndmask_b32_e64 v53, 0xff80ff80, v36, s1
	v_cndmask_b32_e64 v54, 0xff80ff80, v35, s1
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v34.l, v45.l
	v_mov_b16_e32 v34.h, v44.l
	v_mov_b16_e32 v33.l, v42.l
	v_mov_b16_e32 v33.h, v41.l
	v_mov_b16_e32 v36.l, v54.l
	v_mov_b16_e32 v36.h, v53.l
	v_mov_b16_e32 v35.l, v47.l
	v_mov_b16_e32 v35.h, v46.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0xff80ff80, v38, s1
	v_cndmask_b32_e64 v37, 0xff80ff80, v37, s1
	v_cndmask_b32_e64 v40, 0xff80ff80, v40, s1
	v_cndmask_b32_e64 v39, 0xff80ff80, v39, s1
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v156, v[33:34], v[35:36] offset1:16
	v_mov_b16_e32 v34.l, v45.h
	v_mov_b16_e32 v34.h, v44.h
	v_mov_b16_e32 v33.l, v42.h
	v_mov_b16_e32 v33.h, v41.h
	v_mov_b16_e32 v36.l, v54.h
	v_mov_b16_e32 v36.h, v53.h
	v_mov_b16_e32 v35.l, v47.h
	v_mov_b16_e32 v35.h, v46.h
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s1, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v220.h, v53.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s1, s5
	s_and_b32 s12, s1, s6
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v156, v[33:34], v[35:36] offset0:64 offset1:80
	v_mov_b16_e32 v34.l, v39.l
	v_mov_b16_e32 v34.h, v40.l
	v_mov_b16_e32 v33.l, v37.l
	v_mov_b16_e32 v33.h, v38.l
	v_mov_b16_e32 v36.l, v58.l
	v_mov_b16_e32 v36.h, v57.l
	v_mov_b16_e32 v35.l, v56.l
	v_mov_b16_e32 v35.h, v55.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v213, 0xffff0000, v46
	v_mov_b16_e64 v219.h, v54.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v220
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s15, s1, s7
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b64 v156, v[33:34], v[35:36] offset0:32 offset1:48
	v_mov_b16_e32 v34.l, v39.h
	v_mov_b16_e32 v34.h, v40.h
	v_mov_b16_e32 v33.l, v37.h
	v_mov_b16_e32 v33.h, v38.h
	v_mov_b16_e32 v36.l, v58.h
	v_mov_b16_e32 v36.h, v57.h
	v_mov_b16_e32 v35.l, v56.h
	v_mov_b16_e32 v35.h, v55.h
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v222.h, v37.l
	v_and_b32_e32 v37, 0xffff0000, v37
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v213
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v221.h, v46.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v156, v[33:34], v[35:36] offset0:96 offset1:112
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v33.l, v43.l
	v_mov_b16_e32 v33.h, v39.l
	v_mov_b16_e32 v34.l, v43.l
	v_mov_b16_e32 v35.l, v43.l
	v_mov_b16_e32 v34.h, v40.l
	v_mov_b16_e32 v35.h, v38.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s4
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.l, v43.l
	v_mov_b16_e32 v36.h, v56.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v34
	v_cmp_neq_f32_e64 s19, 0xff800000, v35
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v34, 0, 1, s9
	v_cndmask_b32_e64 v35, 0, 1, s12
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v36
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s15
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v219
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, s1, s11
	v_or_b16 v213.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v38, 0xffff0000, v38
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v37
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v37, 0, 1, s5
	v_mov_b16_e32 v34.l, v36.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v218.h, v47.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v221
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s10, s1, s10
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v38, 0, 1, s10
	v_or_b16 v213.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v37.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v218
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, s1, s13
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v103, 0xffff0000, v41
	v_and_b32_e32 v104, 0xffff0000, v42
	v_and_b32_e32 v211, 0xffff0000, v44
	v_and_b32_e32 v214, 0xffff0000, v47
	v_and_b32_e32 v215, 0xffff0000, v53
	v_and_b32_e32 v216, 0xffff0000, v39
	v_and_b32_e32 v217, 0xffff0000, v40
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[39:40], v83
	ds_load_b64 v[41:42], v157
	ds_load_b64 v[44:45], v158
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[46:47], v159
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v83, 0, 1, s13
	v_mov_b16_e32 v34.l, v38.l
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s16, s1, s8
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v101
	v_cmp_neq_f32_e64 s31, 0xff800000, v215
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v101, 0, 1, s16
	v_or_b16 v215.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v83.l
	s_and_b32 s6, s1, s18
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v102
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v102, 0, 1, s6
	v_mov_b16_e32 v34.l, v101.l
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s11, s1, s14
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v103
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v103, 0, 1, s11
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v60.h, v57.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v215.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v102.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v222
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s1, s19
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v104
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v104, 0, 1, s14
	v_mov_b16_e32 v34.l, v103.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v59.h, v58.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v60
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s17, s1, s17
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v212, 0xffff0000, v54
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v211
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v211, 0, 1, s17
	v_or_b16 v101.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v104.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v59
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s1, s22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v212
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v212, 0, 1, s7
	v_mov_b16_e64 v34.l, v211.l
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s8, s1, s21
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v214
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v214, 0, 1, s8
	s_and_b32 s18, s1, s23
	v_or_b16 v101.l, v34.l, v33.l
	v_mov_b16_e64 v33.l, v212.l
	v_cndmask_b32_e64 v35, 0, 1, s18
	v_mov_b16_e64 v34.l, v214.l
	s_and_b32 s19, s1, s20
	s_and_b32 s20, s1, s25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v36, 0, 1, s19
	v_cndmask_b32_e64 v37, 0, 1, s20
	s_and_b32 s21, s1, s26
	s_and_b32 s22, s1, s27
	v_or_b16 v211.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_mov_b16_e32 v34.l, v36.l
	v_cndmask_b32_e64 v38, 0, 1, s21
	v_cndmask_b32_e64 v83, 0, 1, s22
	s_and_b32 s23, s1, s24
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v102, 0, 1, s23
	s_and_b32 s24, s1, s29
	s_and_b32 s27, s1, s30
	v_cndmask_b32_e64 v103, 0, 1, s24
	v_or_b16 v211.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v37.l
	v_mov_b16_e32 v34.l, v38.l
	v_cndmask_b32_e64 v104, 0, 1, s27
	s_and_b32 s25, s1, s31
	s_and_b32 s26, s1, s28
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v212, 0, 1, s25
	v_cndmask_b32_e64 v35, 0, 1, s26
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v226, 0xffff0000, v57
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, s1, s34
	v_or_b16 v214.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v83.l
	v_mov_b16_e32 v34.l, v102.l
	v_cndmask_b32_e64 v36, 0, 1, s28
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v223, 0xffff0000, v58
	v_and_b32_e32 v225, 0xffff0000, v56
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v217
	v_cmp_neq_f32_e64 s38, 0xff800000, v224
	v_cmp_neq_f32_e64 s40, 0xff800000, v226
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s1, s35
	v_or_b16 v214.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v103.l
	v_mov_b16_e32 v34.l, v104.l
	v_cndmask_b32_e64 v37, 0, 1, s29
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v216
	v_cmp_neq_f32_e64 s37, 0xff800000, v223
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v225
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s1, s36
	s_and_b32 s31, s1, s38
	s_and_b32 s35, s1, s40
	v_or_b16 v102.l, v34.l, v33.l
	v_mov_b16_e64 v33.l, v212.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v38, 0, 1, s30
	v_cndmask_b32_e64 v103, 0, 1, s31
	v_cndmask_b32_e64 v212, 0, 1, s35
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s34, s1, s33
	s_and_b32 s33, s1, s39
	s_and_b32 s36, s1, s37
	v_cndmask_b32_e64 v83, 0, 1, s34
	v_or_b16 v102.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v36.l
	v_mov_b16_e32 v34.l, v37.l
	v_cndmask_b32_e64 v104, 0, 1, s33
	v_cndmask_b32_e64 v217, 0, 1, s36
	v_mov_b16_e32 v35.l, v103.l
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e64 v36.l, v212.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_load_b64 v[53:54], v160
	ds_load_b64 v[55:56], v161
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[57:58], v162
	ds_load_b64 v[59:60], v163
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v37.l, v104.l
	v_lshlrev_b16 v33.h, 8, v35.l
	v_or_b16 v216.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v38.l
	v_mov_b16_e32 v34.l, v83.l
	v_mov_b16_e64 v38.l, v217.l
	v_lshlrev_b16 v34.h, 8, v36.l
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b16 v33.l, 8, v33.l
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v36, 0xffff0000, v39
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v82, v213, v215 offset1:32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v39.h, v41.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v216.h, v34.l, v33.l
	v_or_b16 v33.l, v37.l, v33.h
	v_or_b16 v33.h, v38.l, v34.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v39.l
	v_mov_b16_e32 v34.l, v43.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v38, 0xffff0000, v40
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v108, 16, v108
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v37, 16, v40
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v213, 0x3fb8aa3b, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v40, 0xffff0000, v41
	v_lshlrev_b32_e32 v41, 16, v42
	v_and_b32_e32 v42, 0xffff0000, v42
	v_lshlrev_b32_e32 v83, 16, v44
	v_and_b32_e32 v44, 0xffff0000, v44
	v_lshlrev_b32_e32 v103, 16, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_and_b32_e32 v45, 0xffff0000, v45
	v_mov_b16_e32 v39.l, v43.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v82, v101, v211 offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v82, 16, v46
	v_and_b32_e32 v46, 0xffff0000, v46
	v_lshlrev_b32_e32 v101, 16, v47
	v_and_b32_e32 v47, 0xffff0000, v47
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v164, v214, v102 offset1:32
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v213, v73, v105 :: v_dual_lshlrev_b32 v102, 16, v54
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v105, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v42, 0x3fb8aa3b, v42 :: v_dual_lshlrev_b32 v109, 16, v109
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v215, 0x3fb8aa3b, v39 :: v_dual_lshlrev_b32 v110, 16, v110
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v105, v74, v106 :: v_dual_lshlrev_b32 v112, 16, v112
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v220, 0x3fb8aa3b, v44 :: v_dual_lshlrev_b32 v191, 16, v191
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v39, 0x3fb8aa3b, v45 :: v_dual_lshlrev_b32 v194, 16, v194
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v47, 0x3fb8aa3b, v47 :: v_dual_lshlrev_b32 v198, 16, v198
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v45, 0x3fb8aa3b, v46 :: v_dual_lshlrev_b32 v200, 16, v200
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v42, v64, v112 :: v_dual_lshlrev_b32 v73, 16, v59
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v47, v72, v200 :: v_dual_and_b32 v36, 0xffff0000, v59
	v_dual_fmac_f32 v220, v66, v191 :: v_dual_lshlrev_b32 v59, 16, v60
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v74, 0x3fb8aa3b, v37
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v211.l, v43.l
	v_mov_b16_e64 v211.h, v55.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v45, v70, v198 :: v_dual_and_b32 v34, 0xffff0000, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v104.h, v53.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v74, v75, v107 :: v_dual_and_b32 v53, 0xffff0000, v53
	v_dual_fmac_f32 v215, v61, v109 :: v_dual_and_b32 v54, 0xffff0000, v54
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v218, 0x3fb8aa3b, v59 :: v_dual_lshlrev_b32 v81, 16, v81
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_store_2addr_b32 v164, v216, v33 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v59, v171
	ds_load_b32 v61, v84
	ds_load_b32 v75, v165
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v216, 0x3fb8aa3b, v41 :: v_dual_lshlrev_b32 v111, 16, v111
	v_dual_mul_f32 v217, 0x3fb8aa3b, v40 :: v_dual_lshlrev_b32 v190, 16, v190
	v_dual_mul_f32 v46, 0x3fb8aa3b, v101 :: v_dual_lshlrev_b32 v203, 16, v203
	v_dual_mul_f32 v101, 0x3fb8aa3b, v102 :: v_dual_lshlrev_b32 v204, 16, v204
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v102, 0x3fb8aa3b, v211 :: v_dual_lshlrev_b32 v77, 16, v77
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v211, 0x3fb8aa3b, v34 :: v_dual_lshlrev_b32 v208, 16, v208
	v_dual_mul_f32 v221, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v212, 16, v57
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v34, v167
	ds_load_b32 v36, v168
	ds_load_b32 v40, v169
	ds_load_b32 v41, v170
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v83, 0x3fb8aa3b, v83 :: v_dual_lshlrev_b32 v192, 16, v192
	v_mul_f32_e32 v106, 0x3fb8aa3b, v38
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v33, 0xffff0000, v55
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v216, v63, v111 :: v_dual_lshlrev_b32 v55, 16, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v83, v65, v190 :: v_dual_and_b32 v56, 0xffff0000, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v104.l, v43.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v53 :: v_dual_lshlrev_b32 v202, 16, v202
	v_dual_mul_f32 v55, 0x3fb8aa3b, v55 :: v_dual_lshlrev_b32 v48, 16, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, 0x3fb8aa3b, v56 :: v_dual_lshlrev_b32 v207, 16, v207
	v_dual_mul_f32 v73, 0x3fb8aa3b, v73 :: v_dual_lshlrev_b32 v78, 16, v78
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v53, v86, v202 :: v_dual_and_b32 v60, 0xffff0000, v60
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v38, 0x3fb8aa3b, v103 :: v_dual_lshlrev_b32 v193, 16, v193
	v_dual_mul_f32 v44, 0x3fb8aa3b, v82 :: v_dual_lshlrev_b32 v199, 16, v199
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v82, 0x3fb8aa3b, v104 :: v_dual_lshlrev_b32 v201, 16, v201
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v104, 0x3fb8aa3b, v212 :: v_dual_lshlrev_b32 v209, 16, v209
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v217, v62, v110 :: v_dual_lshlrev_b32 v80, 16, v80
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v60, 0x3fb8aa3b, v60 :: v_dual_lshlrev_b32 v57, 16, v58
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v39, v68, v193 :: v_dual_and_b32 v58, 0xffff0000, v58
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_load_b32 v37, v166
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v56, v92, v48 :: v_dual_fmac_f32 v73, v97, v78
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(6)
	v_and_b32_e32 v78, 1, v61
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_lshlrev_b32 v205, 16, v205
	v_dual_mul_f32 v57, 0x3fb8aa3b, v57 :: v_dual_lshlrev_b32 v210, 16, v210
	v_dual_mul_f32 v58, 0x3fb8aa3b, v58 :: v_dual_lshlrev_b32 v79, 16, v79
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v106, v76, v108
	v_dual_fmac_f32 v44, v69, v194 :: v_dual_fmac_f32 v101, v87, v203
	v_dual_fmac_f32 v46, v71, v199 :: v_dual_fmac_f32 v211, v94, v208
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v104, v93, v207 :: v_dual_and_b32 v63, 1, v36
	v_dual_fmac_f32 v218, v99, v80 :: v_dual_and_b32 v65, 1, v34
	v_dual_fmac_f32 v60, v100, v81 :: v_dual_and_b32 v69, 0x10000, v36
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b32_e32 v70, 0x1000000, v36
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v193, v51 :: v_dual_and_b32 v76, 1, v41
	v_and_b32_e32 v80, 0x10000, v75
	v_lshrrev_b16 v36.h, 8, v61.l
	v_and_b32_e32 v86, 1, v59
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v199, v183, v183
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s58, 1, v78
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v103, 0x3fb8aa3b, v33 :: v_dual_lshlrev_b32 v206, 16, v206
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v38, v67, v192
	v_fmac_f32_e32 v82, v85, v201
	v_dual_fmac_f32 v54, v88, v204 :: v_dual_fmac_f32 v57, v95, v209
	v_dual_fmac_f32 v58, v96, v210 :: v_dual_and_b32 v67, 0x10000, v40
	v_dual_mov_b32 v191, v50 :: v_dual_and_b32 v72, 0x1000000, v40
	v_dual_mov_b32 v190, v52 :: v_dual_and_b32 v87, 0x10000, v59
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b32_e32 v88, 0x1000000, v59
	v_cmp_eq_u32_e64 s39, 1, v76
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v213, s58
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v71, 1, v40
	v_and_b16 v40.h, 1, v36.h
	v_cmp_eq_u32_e64 s42, 1, v86
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v201, v181, v181
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s56, 0, v80
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, s41, v119, 1
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v102, v89, v205 :: v_dual_fmac_f32 v221, v98, v79
	v_fmac_f32_e32 v103, v90, v77
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v79, 0x1000000, v61
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v208, 0xff800000, v216, s56
	v_cndmask_b32_e64 v216, 0xff800000, v73, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v77, 0x10000, v61
	v_cmp_ne_u32_e64 s41, 0, v87
	v_cmp_ne_u32_e64 s44, 0, v88
	v_cmp_eq_u16_e64 s67, 1, v40.h
	v_and_b32_e32 v62, 0x10000, v34
	v_and_b32_e32 v66, 0x1000000, v34
	v_lshrrev_b16 v33.l, 8, v36.l
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v33.h, 8, v37.l
	v_lshrrev_b16 v34.l, 8, v34.l
	v_and_b32_e32 v85, 1, v37
	v_cmp_ne_u32_e64 s52, 0, v77
	v_cmp_ne_u32_e64 s66, 0, v79
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v218, 0xff800000, v218, s41
	v_cndmask_b32_e64 v219, 0xff800000, v60, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v48, 0x1000000, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v105, s67
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v64, 0x10000, v37
	v_lshrrev_b16 v37.l, 8, v75.l
	v_lshrrev_b16 v37.h, 8, v59.l
	v_lshrrev_b16 v34.h, 8, v40.l
	v_lshrrev_b16 v36.l, 8, v41.l
	v_and_b32_e32 v81, 1, v75
	v_and_b32_e32 v84, 0x1000000, v75
	v_dual_mov_b32 v192, v49 :: v_dual_and_b32 v75, 0x1000000, v41
	v_and_b16 v33.l, 1, v33.l
	v_and_b16 v33.h, 1, v33.h
	v_and_b16 v34.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v106, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v68, 0x10000, v41
	v_and_b16 v41.l, 1, v37.l
	v_and_b16 v41.h, 1, v37.h
	v_and_b16 v34.h, 1, v34.h
	v_and_b16 v40.l, 1, v36.l
	v_cmp_ne_u32_e64 s63, 0, v64
	v_cmp_eq_u32_e64 s60, 1, v65
	v_cmp_ne_u32_e64 s59, 0, v62
	v_cmp_ne_u32_e64 s62, 0, v66
	v_cmp_eq_u32_e64 s50, 1, v63
	v_cmp_ne_u32_e64 s51, 0, v70
	v_cmp_eq_u32_e64 s53, 1, v81
	v_cmp_ne_u32_e64 s43, 0, v75
	v_cmp_eq_u16_e64 s57, 1, v33.h
	v_cmp_eq_u16_e64 s65, 1, v34.l
	v_cmp_eq_u16_e64 s54, 1, v33.l
	v_cmp_eq_u16_e64 s68, 1, v41.l
	v_cmp_eq_u16_e64 s46, 1, v41.h
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v218, v219
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s64, 0, v48
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v55, v91, v206
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s63
	v_cndmask_b32_e64 v44, 0xff800000, v44, s60
	v_cndmask_b32_e64 v46, 0xff800000, v46, s59
	v_cndmask_b32_e64 v39, 0xff800000, v39, s64
	v_cndmask_b32_e64 v47, 0xff800000, v47, s62
	v_cndmask_b32_e64 v59, 0xff800000, v82, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s47, 0, v69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v54, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v67
	v_cmp_ne_u32_e64 s40, 0, v72
	v_cmp_ne_u32_e64 s38, 0, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v206, 0xff800000, v215, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s55, 0, v84
	v_cmp_eq_u32_e64 s61, 1, v85
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v215, 0xff800000, v58, s43
	v_cndmask_b32_e64 v37, 0xff800000, v220, s57
	v_cndmask_b32_e64 v45, 0xff800000, v45, s65
	v_cndmask_b32_e64 v60, 0xff800000, v53, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s49, 1, v34.h
	v_cmp_eq_u16_e64 s45, 1, v40.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v207, 0xff800000, v217, s68
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v54, v76, v77
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s48, 1, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v61, 0xff800000, v101, s47
	v_cndmask_b32_e64 v204, 0xff800000, v55, s37
	v_cndmask_b32_e64 v205, 0xff800000, v56, s40
	v_cndmask_b32_e64 v212, 0xff800000, v104, s39
	v_cndmask_b32_e64 v202, 0xff800000, v102, s48
	v_cndmask_b32_e64 v214, 0xff800000, v57, s38
	v_cndmask_b32_e64 v78, 0xff800000, v74, s52
	v_cndmask_b32_e64 v209, 0xff800000, v42, s55
	v_cndmask_b32_e64 v36, 0xff800000, v83, s61
	v_cndmask_b32_e64 v203, 0xff800000, v103, s49
	v_cndmask_b32_e64 v213, 0xff800000, v211, s45
	v_cndmask_b32_e64 v217, 0xff800000, v221, s46
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v215, v216
	v_max3_f32 v42, v37, v38, v39
	v_max3_f32 v48, v44, v45, v46
	v_max3_f32 v53, v47, v59, v60
	v_max3_f32 v55, v79, v206, v207
	v_max3_f32 v33, v61, v62, v202
	v_max3_f32 v34, v208, v209, v36
	v_max3_f32 v56, v203, v204, v205
	v_max3_f32 v57, v212, v213, v214
	v_max3_f32 v40, v40, v217, v41
	v_max3_f32 v41, v42, v48, v53
	v_max3_f32 v42, v54, v78, v55
.Ltmp6:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v198, v184, v184
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v56, v57
.Ltmp8:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v200, v182, v182
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v42, v34, v41
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v55.h, v43.l
	v_mov_b16_e64 v221.h, v43.l
	v_mov_b16_e32 v65.h, v43.l
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v34, v33, v40
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.h, v43.l
	v_mov_b16_e32 v69.h, v43.l
	v_mov_b16_e32 v71.h, v43.l
	v_mov_b16_e32 v73.h, v43.l
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.h, v43.l
	v_mov_b16_e32 v56.h, v43.l
	v_mov_b16_e32 v57.h, v43.l
	v_mov_b16_e32 v43.h, v43.l
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v34, v185, v33, v34
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v194, 0, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.h, v43.l
	v_mov_b16_e64 v220.h, v43.l
	v_mov_b16_e64 v222.h, v43.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v79, v34
	v_sub_f32_e32 v33, v77, v34
	v_sub_f32_e32 v40, v76, v34
	v_sub_f32_e32 v227, v208, v34
	v_sub_f32_e32 v229, v36, v34
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v40, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v211, v45, v34
	v_sub_f32_e32 v225, v78, v34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.h, v43.l
	v_mov_b16_e32 v66.h, v43.l
	v_mov_b16_e32 v70.h, v43.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v211, v211
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v74.h, v43.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v41, s66
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v185, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s67
	v_cndmask_b32_e64 v40, 0, v40, s58
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s58, 0xff800000, v185
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v55.l, v42.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v58.h, v43.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v211, 0, v211, s65
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v55
	v_mov_b16_e64 v224.h, v43.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e64 v69.l, v211.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v54, 0, v41, s58
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.h, v43.l
	v_mov_b16_e32 v41.l, v33.h
	v_cmp_o_f32_e64 s58, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v54 :: v_dual_and_b32 v69, 1, v69
	v_dual_mul_f32 v18, v18, v54 :: v_dual_and_b32 v41, 1, v41
	v_mul_f32_e32 v20, v20, v54
	v_mul_f32_e32 v22, v22, v54
	v_mul_f32_e32 v24, v24, v54
	v_mul_f32_e32 v26, v26, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v33, v41, 0x7fff
	v_mov_b16_e32 v41.l, v40.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v54
	v_mul_f32_e32 v32, v32, v54
	v_mul_f32_e32 v9, v9, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.h, 0x7fff, v41.h, s58
	v_mov_b16_e32 v41.h, v43.l
	v_cmp_o_f32_e64 s58, v40, v40
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v54
	v_mul_f32_e32 v13, v13, v54
	v_mul_f32_e32 v15, v15, v54
	v_dual_mul_f32 v16, v16, v54 :: v_dual_and_b32 v41, 1, v41
	v_mul_f32_e32 v1, v1, v54
	v_mul_f32_e32 v3, v3, v54
	v_mul_f32_e32 v4, v4, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v40, 0, v151
	ds_store_b128 v40, v[76:79]
	ds_store_b128 v40, v[59:62] offset:2048
	ds_store_b128 v172, v[206:209]
	ds_store_b128 v172, v[202:205] offset:2048
	ds_store_b128 v173, v[36:39]
	ds_store_b128 v173, v[212:215] offset:2048
	ds_store_b128 v174, v[44:47]
	ds_store_b128 v174, v[216:219] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v175 offset:1024
	ds_load_b128 v[109:112], v175
	ds_load_b128 v[93:96], v175 offset:1280
	ds_load_b128 v[101:104], v175 offset:256
	ds_load_b128 v[89:92], v175 offset:1536
	ds_load_b128 v[81:84], v175 offset:1792
	ds_load_b128 v[97:100], v175 offset:512
	ds_load_b128 v[85:88], v175 offset:768
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v41.h, s58
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v206, v206, v34
	v_sub_f32_e32 v226, v209, v34
	v_sub_f32_e32 v210, v39, v34
	v_sub_f32_e32 v209, v47, v34
	v_sub_f32_e32 v77, v61, v34
	v_sub_f32_e32 v208, v46, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v54
	v_mul_f32_e32 v7, v7, v54
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v207, v207, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s58, v42, v42
	v_mov_b16_e32 v61.h, v43.l
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(7)
	v_max_f32_e32 v40, v108, v108
	s_waitcnt lgkmcnt(6)
	v_max_f32_e32 v41, v112, v112
	v_max3_f32 v63, v109, v105, v110
.Ltmp16:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v38, v34
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v106, v111, v107
	s_waitcnt lgkmcnt(4)
	v_max_f32_e32 v38, v104, v104
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v228, v37, v34 :: v_dual_max_f32 v37, v96, v96
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v41, v40
	v_max3_f32 v40, v101, v93, v102
	s_waitcnt lgkmcnt(3)
	v_max_f32_e32 v41, v92, v92
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v38, v37
	v_max3_f32 v36, v63, v36, v39
	v_max3_f32 v39, v94, v103, v95
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v38, v100, v100 :: v_dual_sub_f32 v79, v203, v34
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v59, v34
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v77
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v37, v40, v39, v37
	v_max3_f32 v39, v97, v89, v98
	v_max3_f32 v40, v90, v99, v91
	v_dual_max_f32 v38, v38, v41 :: v_dual_max_f32 v41, v84, v84
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v202, v34
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s63
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v203.h, v43.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v39, v40, v38
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v39, v88, v88
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v44, v34
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v85, v81, v86
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v213, v34
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v208, v208
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v41
	v_max3_f32 v41, v82, v87, v83
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v68.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v63, v42, v55, 0x7fff
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v40, v41, v39
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v41, v36 :: v_dual_sub_f32 v52, v217, v34
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v208, 0, v208, s59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.h, v43.l
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v60, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v60.h, v43.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v54
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v41
.Ltmp37:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v185, v62, v34
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v73.l, v208.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v54
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v36, v41 :: v_dual_mov_b32 v41, v37
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v185, v185
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v54
	v_mul_f32_e32 v6, v6, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.l, v76.h
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v204, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v57.l, v77.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v14, v14, v54 :: v_dual_max_f32 v41, v41, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v214, v34
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s51
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v207
	v_exp_f32_e32 v210, v210
.Ltmp42:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v41
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v41, v38
.Ltmp44:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v56.l, v185.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v54
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v218, v34
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v42, s68
	v_cndmask_b32_e64 v210, 0, v210, s64
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v67, 1, v67
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v41
.Ltmp48:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v205, v34
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v220.l, v55.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v51, v215, v34 :: v_dual_max_f32 v38, v38, v41
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v41, v39
.Ltmp50:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v203.l, v46.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v66.l, v210.h
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s63, v210, v210
	v_cmp_o_f32_e64 s64, v68, v68
	v_add3_u32 v213, v68, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v41, v41, v41 :: v_dual_and_b32 v66, 1, v66
.Ltmp54:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v79, v79
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v210, v210, v66, 0x7fff
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v41
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.h, v43.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v54
	v_mul_f32_e32 v2, v2, v54
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v225
	v_exp_f32_e32 v78, v78
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s60
	v_cndmask_b32_e64 v80, 0, v80, s54
	v_cndmask_b32_e64 v79, 0, v79, s49
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v75, 1, v75
	v_mov_b16_e32 v70.l, v72.h
	v_mov_b16_e32 v74.l, v80.h
	v_mov_b16_e32 v58.l, v79.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v54, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v57, 1, v57
	v_and_b32_e32 v70, 1, v70
	v_and_b32_e32 v74, 1, v74
	v_and_b32_e32 v58, 1, v58
	v_mov_b16_e32 v64.l, v54.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v212, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s52, v54, v54
	v_cmp_o_f32_e64 s59, v211, v211
	v_cmp_o_f32_e64 s60, v72, v72
	v_and_b32_e32 v42, 1, v64
	v_cmp_o_f32_e64 s50, v208, v208
	v_cmp_o_f32_e64 s54, v76, v76
	v_add3_u32 v214, v76, v75, 0x7fff
	v_cmp_o_f32_e64 s51, v80, v80
	v_add3_u32 v42, v54, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v206
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s49, v79, v79
	v_add3_u32 v57, v77, v57, 0x7fff
	v_add3_u32 v58, v79, v58, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v56, 1, v56
	v_cmp_o_f32_e64 s47, v185, v185
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v204.h, v43.l
	v_mov_b16_e64 v205.h, v43.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v54, s53
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v54, 1, v220
	v_cmp_o_f32_e64 s53, v55, v55
	v_add3_u32 v56, v185, v56, 0x7fff
	v_mov_b32_e32 v185, v34
	v_mov_b16_e64 v221.l, v59.h
	v_add3_u32 v54, v55, v54, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v226
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v207.h, v43.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v207.l, v48.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v55, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v221
	v_cmp_o_f32_e64 s55, v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v222.l, v62.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v55, v59, v55, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v227
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v61.l, v45.h
	v_cmp_o_f32_e64 s41, v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v42.l, 0x7fff, v55.h, s55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v202, 0, v59, s56
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v59, 1, v222
	v_cmp_o_f32_e64 s56, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v223.l, v202.h
	v_add3_u32 v59, v62, v59, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v228
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v47, v216, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v206, 0, v62, s57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v62, 1, v223
	v_cmp_o_f32_e64 s57, v202, v202
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v224.l, v206.h
	v_add3_u32 v62, v202, v62, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v202, v229
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v53, v219, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v54.l, 0x7fff, v62.h, s57
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v212, 0, v202, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v202, 1, v224
	v_cmp_o_f32_e64 s61, v206, v206
	v_mov_b16_e64 v205.l, v47.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v65.l, v212.h
	v_cmp_o_f32_e64 s65, v212, v212
	v_add3_u32 v202, v206, v202, 0x7fff
	v_mov_b16_e64 v206.h, v43.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v55.h, 0x7fff, v202.h, s61
	v_add3_u32 v212, v212, v65, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[65:68], v195, s[72:75], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v195, v209
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v209, v211, v69, 0x7fff
	v_add3_u32 v211, v72, v70, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v212.h, s65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v202.h, 0x7fff, v209.h, s59
	v_cndmask_b16 v202.l, 0x7fff, v211.h, s60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v195, 0, v195, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.l, v195.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v195, v195
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v195, v195, v71, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[69:72], v196, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v196, v208, v73, 0x7fff
	v_add3_u32 v208, v80, v74, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[73:76], v197, s[72:75], 0 offen
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v197, 0, v78, s48
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s48, v77, v77
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[77:80], v35, s[72:75], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v49
	v_exp_f32_e32 v49, v50
	v_exp_f32_e32 v50, v51
	v_exp_f32_e32 v51, v52
	v_exp_f32_e32 v52, v53
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v53, v36
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v40.l, v197.h
	v_cndmask_b16 v195.l, 0x7fff, v196.h, s50
	v_cndmask_b16 v196.h, 0x7fff, v208.h, s51
	v_cndmask_b16 v196.l, 0x7fff, v214.h, s54
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v35, s40
	v_cndmask_b32_e64 v35, 0, v44, s37
	v_cndmask_b32_e64 v44, 0, v49, s45
	v_cndmask_b32_e64 v49, 0, v50, s43
	v_cndmask_b32_e64 v50, 0, v51, s46
	v_cndmask_b32_e64 v51, 0, v52, s44
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_mov_b16_e32 v60.l, v44.h
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v53, v53 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.l, v35.h
	v_cmp_o_f32_e64 s40, v44, v44
	v_mov_b16_e64 v204.l, v50.h
	v_and_b32_e32 v60, 1, v60
	v_mov_b16_e64 v206.l, v51.h
	v_and_b32_e32 v40, 1, v40
	v_and_b32_e32 v41, 1, v41
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v53, v53
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v44, v60, 0x7fff
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v60, v39
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v197, v197
	v_cmp_o_f32_e64 s38, v34, v34
	v_mov_b16_e32 v64.l, v49.h
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v40, v197, v40, 0x7fff
	v_add3_u32 v34, v34, v41, 0x7fff
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v41, v37
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v197, 1, v204
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v60, v60 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v204, 1, v206
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v206, v36, v53
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v35, v35
	v_cmp_o_f32_e64 s44, v50, v50
	v_cndmask_b16 v52.h, 0x7fff, v63.h, s58
	v_add3_u32 v35, v35, v43, 0x7fff
	v_and_b32_e32 v63, 1, v64
	v_and_b32_e32 v64, 1, v203
	v_and_b32_e32 v203, 1, v205
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v50, v50, v197, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v42.h, s52
	v_cndmask_b16 v42.h, 0x7fff, v54.h, s53
	v_cndmask_b16 v54.h, 0x7fff, v59.h, s56
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v60, v60
.Ltmp74:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v197.h, 0x7fff, v210.h, s63
	v_cndmask_b16 v197.l, 0x7fff, v213.h, s64
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v216, v206
.Ltmp76:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s45, v47, v47
	v_cmp_o_f32_e64 s46, v51, v51
	v_and_b32_e32 v205, 1, v207
	v_add3_u32 v47, v47, v203, 0x7fff
	v_add3_u32 v51, v51, v204, 0x7fff
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v41
.Ltmp78:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.l, 0x7fff, v35.h, s39
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v209, v39, v59
.Ltmp80:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v35, v52, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v197, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v216, v216 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s43, v46, v46
	v_add3_u32 v46, v46, v64, 0x7fff
	v_cmp_o_f32_e64 s58, v48, v48
	v_add3_u32 v48, v48, v205, 0x7fff
	v_cndmask_b16 v204.l, 0x7fff, v40.h, s37
	v_cndmask_b16 v40.h, 0x7fff, v34.h, s38
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s45
	v_cndmask_b16 v205.h, 0x7fff, v51.h, s46
	v_permlanex16_b32 v34, v33, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v207, v37, v41
.Ltmp84:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v47, v196, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v59, v35, v52, v127
	v_perm_b32 v60, v35, v52, v128
	v_perm_b32 v51, v39, v197, v127
	v_perm_b32 v52, v39, v197, v128
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v197, v216, v216
.Ltmp86:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v203.l, 0x7fff, v57.h, s48
	v_cndmask_b16 v204.h, 0x7fff, v58.h, s49
	v_perm_b32 v57, v34, v33, v127
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v217, v207
.Ltmp88:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v58, v34, v33, v128
	v_perm_b32 v33, v47, v196, v127
	v_perm_b32 v34, v47, v196, v128
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v196, v209 :: v_dual_max_f32 v197, v206, v197
	v_mov_b32_e32 v43, v38
.Ltmp90:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v203.h, 0x7fff, v56.h, s47
	v_permlanex16_b32 v37, v54, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v202, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v217, v217 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v186, v186, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s42, v49, v49
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v205.l, 0x7fff, v48.h, s58
	v_permlanex16_b32 v36, v42, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v203, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v64, v37, v54, v128
	v_perm_b32 v53, v41, v202, v127
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v196, v196, v196
.Ltmp96:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v49, v63, 0x7fff
	v_perm_b32 v63, v37, v54, v127
	v_perm_b32 v54, v41, v202, v128
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v202, v217, v217
.Ltmp98:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v61, 1, v61
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp100:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v195.h, 0x7fff, v195.h, s62
	v_perm_b32 v62, v36, v42, v128
	v_perm_b32 v35, v48, v203, v127
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v202, v207, v202
.Ltmp102:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v45, v45, v61, 0x7fff
	v_perm_b32 v61, v36, v42, v127
	v_perm_b32 v36, v48, v203, v128
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v203, v209, v196 :: v_dual_max_f32 v208, v38, v43
.Ltmp104:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v38, v55, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v195, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v196, v198, v197 :: v_dual_max_f32 v197, v199, v202
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v189, v189, v203
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s41
	v_cndmask_b16 v45.h, 0x7fff, v49.h, s42
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s43
	v_cndmask_b16 v46.h, 0x7fff, v50.h, s44
	v_perm_b32 v49, v38, v55, v127
	v_perm_b32 v50, v38, v55, v128
	v_perm_b32 v55, v43, v195, v127
	v_perm_b32 v56, v43, v195, v128
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v187, v187, v202 :: v_dual_sub_f32 v84, v84, v189
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v195, v208
.Ltmp106:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v199, v109, v186
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v111, v186
	v_sub_f32_e32 v111, v105, v186
	v_sub_f32_e32 v105, v112, v186
	v_sub_f32_e32 v112, v106, v186
	v_sub_f32_e32 v106, v101, v187
	v_sub_f32_e32 v101, v102, v187
	v_sub_f32_e32 v102, v103, v187
	v_sub_f32_e32 v103, v104, v187
	v_sub_f32_e32 v104, v95, v187
.Ltmp107:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v104, v104
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v195, v195, v195
.Ltmp110:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v210, v204, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v183
	v_cmp_neq_f32_e64 s39, 0xff800000, v182
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v195, v208, v195
.Ltmp112:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s35
	v_cndmask_b32_e64 v102, 0, v102, s10
	v_cndmask_b32_e64 v112, 0, v112, s20
	v_cndmask_b32_e64 v104, 0, v104, s26
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v188, v188, v195
	v_max_f32_e32 v198, v200, v195
	v_dual_max_f32 v195, v201, v203 :: v_dual_sub_f32 v200, v108, v186
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v201, v93, v187
	v_sub_f32_e32 v108, v94, v187
	v_sub_f32_e32 v94, v98, v188
	v_sub_f32_e32 v93, v99, v188
	v_dual_sub_f32 v99, v96, v187 :: v_dual_sub_f32 v98, v89, v188
	v_sub_f32_e32 v96, v85, v189
	v_sub_f32_e32 v85, v88, v189
	v_sub_f32_e32 v88, v82, v189
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v202, v181, v195
	v_sub_f32_e32 v82, v183, v197
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v86, v189
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v88, v88
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v87, v189
	v_sub_f32_e32 v87, v83, v189
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v89
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v102, v104
.Ltmp114:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v92, v188
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v96, v96
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s7
	v_cndmask_b32_e64 v88, 0, v88, s31
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v94, v94
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s18
.Ltmp115:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v85, v84
.Ltmp116:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s8
	v_cndmask_b32_e64 v87, 0, v87, s36
.Ltmp117:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v88, v89, v88
.Ltmp118:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v103
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v95, v97, v188
	v_sub_f32_e32 v97, v90, v188
	v_sub_f32_e32 v90, v91, v188
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s30
	v_cndmask_b32_e64 v96, 0, v96, s19
	v_cndmask_b32_e64 v99, 0, v99, s25
.Ltmp119:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v86, v86, v87
.Ltmp120:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v93, v93
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s5
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v90
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v86, v84
.Ltmp122:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v106, s16
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v103, v99
.Ltmp124:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v94, 0, v94, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v37, v210, v204, v127
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v97, 0, v97, s28
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v107, v107, v186
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v102, v99
.Ltmp126:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v91, v100, v188 :: v_dual_sub_f32 v100, v81, v189
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v93, 0, v93, s11
	v_cndmask_b32_e64 v90, 0, v90, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v38, v210, v204, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v100, v100
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v81, v184, v196
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v200, v200
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v98, v98
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v204, 0, v82, s38
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v110, v112
.Ltmp128:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s6
	v_cndmask_b32_e64 v100, 0, v100, s33
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v109, v109
.Ltmp129:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v94, v97
.Ltmp130:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v107
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v91, v91, v92
	v_add_f32_e32 v92, v96, v100
.Ltmp132:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v201, v201
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v93, v90
.Ltmp134:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v101
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v81, v81
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v88, v92, v88
.Ltmp136:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s40
	v_permlanex16_b32 v215, v205, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v184
	v_cmp_neq_f32_e64 s40, 0xff800000, v181
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v84, v88, v84 :: v_dual_sub_f32 v83, v182, v198
	v_mov_b32_e32 v182, v198
.Ltmp138:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v199, v199
	v_mov_b32_e32 v184, v196
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v88, v84
.Ltmp140:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v83, v83
	v_mov_b32_e32 v181, v195
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v109, s9
	v_cndmask_b32_e64 v107, 0, v107, s23
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v88, v88 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v183, v197
.Ltmp142:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v197, 0, v201, s27
	v_cndmask_b32_e64 v195, 0, v199, s15
	v_cndmask_b32_e64 v105, 0, v105, s4
	v_cndmask_b32_e64 v196, 0, v200, s22
	v_cndmask_b32_e64 v101, 0, v101, s13
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v106, v197
.Ltmp144:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v108, s24
	v_cndmask_b32_e64 v95, 0, v95, s17
	v_cndmask_b32_e64 v98, 0, v98, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v47, v215, v205, v127
	v_perm_b32 v48, v215, v205, v128
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v202, v202
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v203, 0, v81, s37
	v_cndmask_b32_e64 v205, 0, v83, s39
.Ltmp145:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v109, v107
.Ltmp146:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v111, s21
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v105, v196
	v_add_f32_e32 v101, v101, v108
	v_dual_add_f32 v95, v95, v98 :: v_dual_add_f32 v84, v84, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v81, v195, v111
	v_add_f32_e32 v89, v90, v91
.Ltmp148:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v202, 0, v202, s40
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v87, v95, v94 :: v_dual_mov_b32 v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v81, v81, v82 :: v_dual_add_f32 v82, v83, v105
	v_add_f32_e32 v83, v106, v101
.Ltmp150:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v88, v88 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v81, v81, v82 :: v_dual_add_f32 v82, v83, v85
	v_add_f32_e32 v83, v87, v89
	v_add_f32_e32 v209, v84, v88
.Ltmp154:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v194, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v194, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v194, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v194, v[77:80] offset:6144
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v85, v81 :: v_dual_mov_b32 v86, v82
	v_mov_b32_e32 v87, v83
.Ltmp156:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v85, v85 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp158:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v212, v44, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v211, v40, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v81, v81, v85 :: v_dual_add_f32 v82, v82, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v83, v83, v87
.Ltmp160:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v41, v212, v44, v127
	v_perm_b32 v42, v212, v44, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v85, v81 :: v_dual_mov_b32 v86, v82
	v_mov_b32_e32 v87, v83
.Ltmp162:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v213, v45, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v211, v40, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp164:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v40, v211, v40, v128
	v_perm_b32 v43, v213, v45, v127
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v206, v81, v85 :: v_dual_add_f32 v207, v82, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v208, v83, v87
.Ltmp166:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v67, v136 offset:576
	ds_load_u16_d16 v75, v136 offset:608
	ds_load_u16_d16 v74, v136 offset:352
	ds_load_u16_d16 v83, v136 offset:512
	ds_load_u16_d16 v90, v136 offset:288
	ds_load_u16_d16 v84, v136 offset:768
	ds_load_u16_d16 v68, v136 offset:832
	ds_load_u16_d16 v91, v136 offset:544
	ds_load_u16_d16 v85, v136 offset:1024
	ds_load_u16_d16 v69, v136 offset:1088
	ds_load_u16_d16 v76, v136 offset:864
	ds_load_u16_d16 v86, v136 offset:1280
	ds_load_u16_d16 v70, v136 offset:1344
	ds_load_u16_d16 v77, v136 offset:1120
	ds_load_u16_d16 v87, v136 offset:1536
	ds_load_u16_d16 v71, v136 offset:1600
	ds_load_u16_d16 v78, v136 offset:1376
	ds_load_u16_d16 v88, v136 offset:1792
	ds_load_u16_d16 v72, v136 offset:1856
	ds_load_u16_d16 v79, v136 offset:1632
	ds_load_u16_d16 v96, v136 offset:1824
	ds_load_u16_d16 v97, v136 offset:2112
	ds_load_u16_d16 v81, v136
	ds_load_u16_d16 v82, v136 offset:256
	ds_load_u16_d16 v89, v136 offset:32
	ds_load_u16_d16 v65, v136 offset:64
	ds_load_u16_d16 v66, v136 offset:320
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v74, v136 offset:480
	ds_load_u16_d16 v73, v136 offset:96
	ds_load_u16_d16_hi v67, v136 offset:704
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v84, v136 offset:896
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v68, v136 offset:960
	ds_load_u16_d16 v92, v136 offset:800
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v85, v136 offset:1152
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v69, v136 offset:1216
	ds_load_u16_d16 v93, v136 offset:1056
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v86, v136 offset:1408
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v70, v136 offset:1472
	ds_load_u16_d16 v94, v136 offset:1312
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v87, v136 offset:1664
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v71, v136 offset:1728
	ds_load_u16_d16 v95, v136 offset:1568
	ds_load_u16_d16_hi v83, v136 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v82, v136 offset:384
	ds_load_u16_d16_hi v88, v136 offset:1920
	ds_load_u16_d16_hi v72, v136 offset:1984
	ds_load_u16_d16 v105, v136 offset:2048
	ds_load_u16_d16 v80, v136 offset:1888
	ds_load_u16_d16_hi v81, v136 offset:128
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v89, v136 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v65, v136 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v73, v136 offset:224
	ds_load_u16_d16_hi v90, v136 offset:416
	ds_load_u16_d16_hi v66, v136 offset:448
	ds_load_u16_d16_hi v91, v136 offset:672
	ds_load_u16_d16_hi v75, v136 offset:736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v92, v136 offset:928
	ds_load_u16_d16_hi v76, v136 offset:992
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v93, v136 offset:1184
	ds_load_u16_d16_hi v77, v136 offset:1248
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v94, v136 offset:1440
	ds_load_u16_d16_hi v78, v136 offset:1504
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v95, v136 offset:1696
	ds_load_u16_d16_hi v79, v136 offset:1760
	ds_load_u16_d16_hi v96, v136 offset:1952
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v212, v208
.Ltmp168:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v44, v213, v45, v128
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v210, v206 :: v_dual_mov_b32 v211, v207
	v_mov_b32_e32 v213, v209
.Ltmp170:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v214, v46, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[57:64], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v80, v136 offset:2016
	ds_load_u16_d16_hi v105, v136 offset:2176
	ds_load_u16_d16_hi v97, v136 offset:2240
	ds_load_u16_d16 v81, v136 offset:2080
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(15)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[57:64], v[9:16]
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v213, v213 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp172:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v45, v214, v46, v127
	v_perm_b32 v46, v214, v46, v128
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s4, vcc_hi, 64
	s_cmpk_lt_u32 vcc_hi, 0x1c0
	s_mov_b32 vcc_hi, s4
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[57:64], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v89, v136 offset:2144
	ds_load_u16_d16 v98, v136 offset:2368
	ds_load_u16_d16 v106, v136 offset:2304
	ds_load_u16_d16 v107, v136 offset:2560
	ds_load_u16_d16 v99, v136 offset:2624
	ds_load_u16_d16 v108, v136 offset:2816
	ds_load_u16_d16 v100, v136 offset:2880
	ds_load_u16_d16 v91, v136 offset:2656
	ds_load_u16_d16 v109, v136 offset:3072
	ds_load_u16_d16 v101, v136 offset:3136
	ds_load_u16_d16 v92, v136 offset:2912
	ds_load_u16_d16 v110, v136 offset:3328
	ds_load_u16_d16 v102, v136 offset:3392
	ds_load_u16_d16 v93, v136 offset:3168
	ds_load_u16_d16 v111, v136 offset:3584
	ds_load_u16_d16 v103, v136 offset:3648
	ds_load_u16_d16 v94, v136 offset:3424
	ds_load_u16_d16 v112, v136 offset:3840
	ds_load_u16_d16 v104, v136 offset:3904
	ds_load_u16_d16 v95, v136 offset:3680
	ds_load_u16_d16 v65, v136 offset:4160
	ds_load_u16_d16 v96, v136 offset:3936
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(25)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[57:64], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v57, v136 offset:4096
	ds_load_u16_d16 v66, v136 offset:4416
	ds_load_u16_d16 v73, v136 offset:4192
	ds_load_u16_d16 v58, v136 offset:4352
	ds_load_u16_d16 v59, v136 offset:4608
	ds_load_u16_d16 v67, v136 offset:4672
	ds_load_u16_d16 v74, v136 offset:4448
	ds_load_u16_d16 v60, v136 offset:4864
	ds_load_u16_d16 v68, v136 offset:4928
	ds_load_u16_d16 v75, v136 offset:4704
	ds_load_u16_d16 v61, v136 offset:5120
	ds_load_u16_d16 v69, v136 offset:5184
	ds_load_u16_d16 v76, v136 offset:4960
	ds_load_u16_d16 v62, v136 offset:5376
	ds_load_u16_d16 v70, v136 offset:5440
	ds_load_u16_d16 v77, v136 offset:5216
	ds_load_u16_d16 v63, v136 offset:5632
	ds_load_u16_d16 v71, v136 offset:5696
	ds_load_u16_d16 v78, v136 offset:5472
	ds_load_u16_d16 v64, v136 offset:5888
	ds_load_u16_d16 v72, v136 offset:5952
	ds_load_u16_d16 v79, v136 offset:5728
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v106, v136 offset:2432
	ds_load_u16_d16_hi v98, v136 offset:2496
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v107, v136 offset:2688
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v99, v136 offset:2752
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v108, v136 offset:2944
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v100, v136 offset:3008
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v109, v136 offset:3200
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v101, v136 offset:3264
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v110, v136 offset:3456
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v102, v136 offset:3520
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v111, v136 offset:3712
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v103, v136 offset:3776
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v112, v136 offset:3968
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v104, v136 offset:4032
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[49:56], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v105, v136 offset:6208
	ds_load_u16_d16 v80, v136 offset:5984
	ds_load_u16_d16 v90, v136 offset:2400
	ds_load_u16_d16 v82, v136 offset:2336
	ds_load_u16_d16 v83, v136 offset:2592
	ds_load_u16_d16 v84, v136 offset:2848
	ds_load_u16_d16 v85, v136 offset:3104
	ds_load_u16_d16 v86, v136 offset:3360
	ds_load_u16_d16 v87, v136 offset:3616
	ds_load_u16_d16 v88, v136 offset:3872
	ds_load_u16_d16_hi v57, v136 offset:4224
	ds_load_u16_d16_hi v65, v136 offset:4288
	ds_load_u16_d16_hi v81, v136 offset:2208
	ds_load_u16_d16_hi v89, v136 offset:2272
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v82, v136 offset:2464
	ds_load_u16_d16_hi v90, v136 offset:2528
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v83, v136 offset:2720
	ds_load_u16_d16_hi v91, v136 offset:2784
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v84, v136 offset:2976
	ds_load_u16_d16_hi v92, v136 offset:3040
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v85, v136 offset:3232
	ds_load_u16_d16_hi v93, v136 offset:3296
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v86, v136 offset:3488
	ds_load_u16_d16_hi v94, v136 offset:3552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v87, v136 offset:3744
	ds_load_u16_d16_hi v95, v136 offset:3808
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v88, v136 offset:4000
	ds_load_u16_d16_hi v96, v136 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[49:56], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v97, v136 offset:4128
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[49:56], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v81, v136 offset:6144
	ds_load_u16_d16 v83, v136 offset:6656
	ds_load_u16_d16 v107, v136 offset:6720
	ds_load_u16_d16 v106, v136 offset:6464
	ds_load_u16_d16 v82, v136 offset:6400
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[49:56], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v90, v136 offset:6496
	ds_load_u16_d16 v84, v136 offset:6912
	ds_load_u16_d16 v108, v136 offset:6976
	ds_load_u16_d16 v91, v136 offset:6752
	ds_load_u16_d16 v85, v136 offset:7168
	ds_load_u16_d16 v109, v136 offset:7232
	ds_load_u16_d16 v92, v136 offset:7008
	ds_load_u16_d16 v86, v136 offset:7424
	ds_load_u16_d16 v110, v136 offset:7488
	ds_load_u16_d16 v93, v136 offset:7264
	ds_load_u16_d16 v87, v136 offset:7680
	ds_load_u16_d16 v111, v136 offset:7744
	ds_load_u16_d16 v94, v136 offset:7520
	ds_load_u16_d16 v88, v136 offset:7936
	ds_load_u16_d16 v112, v136 offset:8000
	ds_load_u16_d16 v95, v136 offset:7776
	ds_load_u16_d16 v96, v136 offset:8032
	ds_load_u16_d16 v89, v136 offset:6240
	ds_load_u16_d16_hi v105, v136 offset:6336
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v106, v136 offset:6592
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v82, v136 offset:6528
	ds_load_u16_d16 v195, v136 offset:6432
	ds_load_u16_d16_hi v83, v136 offset:6784
	ds_load_u16_d16_hi v107, v136 offset:6848
	ds_load_u16_d16 v196, v136 offset:6688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v84, v136 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v108, v136 offset:7104
	ds_load_u16_d16 v197, v136 offset:6944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v85, v136 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v109, v136 offset:7360
	ds_load_u16_d16 v198, v136 offset:7200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v86, v136 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v110, v136 offset:7616
	ds_load_u16_d16 v199, v136 offset:7456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v87, v136 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v111, v136 offset:7872
	ds_load_u16_d16 v200, v136 offset:7712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v88, v136 offset:8064
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v112, v136 offset:8128
	ds_load_u16_d16 v201, v136 offset:7968
	ds_load_u16_d16_hi v58, v136 offset:4480
	ds_load_u16_d16_hi v66, v136 offset:4544
	ds_load_u16_d16 v98, v136 offset:4384
	ds_load_u16_d16_hi v59, v136 offset:4736
	ds_load_u16_d16_hi v67, v136 offset:4800
	ds_load_u16_d16 v99, v136 offset:4640
	ds_load_u16_d16_hi v60, v136 offset:4992
	ds_load_u16_d16_hi v68, v136 offset:5056
	ds_load_u16_d16 v100, v136 offset:4896
	ds_load_u16_d16_hi v61, v136 offset:5248
	ds_load_u16_d16_hi v69, v136 offset:5312
	ds_load_u16_d16 v101, v136 offset:5152
	ds_load_u16_d16_hi v62, v136 offset:5504
	ds_load_u16_d16_hi v70, v136 offset:5568
	ds_load_u16_d16 v102, v136 offset:5408
	ds_load_u16_d16_hi v63, v136 offset:5760
	ds_load_u16_d16_hi v71, v136 offset:5824
	ds_load_u16_d16 v103, v136 offset:5664
	ds_load_u16_d16_hi v64, v136 offset:6016
	ds_load_u16_d16_hi v72, v136 offset:6080
	ds_load_u16_d16 v104, v136 offset:5920
	ds_load_u16_d16_hi v81, v136 offset:6272
	ds_load_u16_d16 v194, v136 offset:6176
	ds_load_u16_d16_hi v97, v136 offset:4256
	ds_load_u16_d16_hi v73, v136 offset:4320
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v98, v136 offset:4512
	ds_load_u16_d16_hi v74, v136 offset:4576
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v99, v136 offset:4768
	ds_load_u16_d16_hi v75, v136 offset:4832
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v100, v136 offset:5024
	ds_load_u16_d16_hi v76, v136 offset:5088
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v101, v136 offset:5280
	ds_load_u16_d16_hi v77, v136 offset:5344
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v102, v136 offset:5536
	ds_load_u16_d16_hi v78, v136 offset:5600
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v103, v136 offset:5792
	ds_load_u16_d16_hi v79, v136 offset:5856
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v104, v136 offset:6048
	ds_load_u16_d16_hi v80, v136 offset:6112
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v194, v136 offset:6304
	ds_load_u16_d16_hi v89, v136 offset:6368
	ds_load_u16_d16_hi v195, v136 offset:6560
	ds_load_u16_d16_hi v90, v136 offset:6624
	ds_load_u16_d16_hi v196, v136 offset:6816
	ds_load_u16_d16_hi v91, v136 offset:6880
	ds_load_u16_d16_hi v197, v136 offset:7072
	ds_load_u16_d16_hi v92, v136 offset:7136
	ds_load_u16_d16_hi v198, v136 offset:7328
	ds_load_u16_d16_hi v93, v136 offset:7392
	ds_load_u16_d16_hi v199, v136 offset:7584
	ds_load_u16_d16_hi v94, v136 offset:7648
	ds_load_u16_d16_hi v200, v136 offset:7840
	ds_load_u16_d16_hi v95, v136 offset:7904
	ds_load_u16_d16_hi v201, v136 offset:8096
	ds_load_u16_d16_hi v96, v136 offset:8160
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v206, v210
	v_dual_add_f32 v51, v207, v211 :: v_dual_add_f32 v50, v208, v212
	v_add_f32_e32 v52, v209, v213
.Ltmp174:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[33:40], v[1:8]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v49, v192, v203
	v_dual_fmac_f32 v51, v193, v204 :: v_dual_fmac_f32 v50, v191, v205
	v_fmac_f32_e32 v52, v190, v202
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[41:48], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[41:48], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[194:201], v[41:48], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[41:48], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v130
	v_add_nc_u32_e32 v34, 0, v133
	v_add_nc_u32_e32 v35, 0, v132
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s11, 0x31027000
	ds_store_2addr_b64 v35, v[49:50], v[51:52] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s10, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	v_div_scale_f32 v39, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s1, v18, v0, v18
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s3, v19, v0, v19
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v54, v34, v45 :: v_dual_mul_f32 v55, v36, v46
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s5, v21, v0, v21
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
	v_dual_mul_f32 v62, v42, v49 :: v_dual_fmac_f32 v55, v59, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v60, v47 :: v_dual_fmac_f32 v57, v61, v48
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v44
	v_fma_f32 v34, -v35, v55, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s6, v22, v0, v22
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_fixup_f32 v18, v34, v0, v18
	v_mul_f32_e32 v34, v51, v50
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_div_fixup_f32 v20, v33, v0, v20
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v19, v35, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s3, v23, v0, v23
	v_fma_f32 v38, -v52, v37, 1.0
	v_fmac_f32_e32 v34, v33, v50
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fmac_f32_e32 v37, v38, v37
	v_fma_f32 v45, -v36, v40, 1.0
	v_div_scale_f32 v38, s4, v24, v0, v24
	v_div_scale_f32 v47, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v21, v39, v0, v21
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s3, v26, v0, v26
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v23, v33, v0, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v29
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v24, v34, v0, v24
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s4, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, s5, v28, v0, v28
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s3, v29, v0, v29
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v33, v0, v27
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s6, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s4, v31, v0, v31
	v_fmac_f32_e32 v44, v39, v48
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v29, v33, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s3, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v42, v36, v34
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s4, v10, v0, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s6, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s5, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s5, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v36, s3, v15, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v48, s5, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s4, v16, v0, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s6, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s3, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s4, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s3, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v0, v8
	v_dual_mul_f32 v52, v48, v41 :: v_dual_fmac_f32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v17, s1
	v_cndmask_b32_e64 v17, 0, v18, s1
	v_cndmask_b32_e64 v18, 0, v19, s1
	v_cndmask_b32_e64 v19, 0, v20, s1
	v_cndmask_b32_e64 v20, 0, v21, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v17, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v17, v18, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	v_bfe_u32 v18, v19, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v23, s1
	v_cndmask_b32_e64 v23, 0, v24, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v25, s1
	v_cndmask_b32_e64 v25, 0, v26, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s7
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s5
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v27, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s7
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v29, s1
	v_cndmask_b32_e64 v29, 0, v30, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s7
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s6
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s5
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_add3_u32 v24, v9, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v12, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s5
	v_bfe_u32 v25, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
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
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v129
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v8, v19, s0
	v_cndmask_b32_e64 v6, v18, v17, s0
	v_cndmask_b32_e64 v7, v17, v18, s0
	v_cndmask_b32_e64 v13, v20, v22, s0
	v_cndmask_b32_e64 v16, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v17, v0, v1, s0
	v_cndmask_b32_e64 v0, v1, v0, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s85, v126
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v15, v21, v23, s0
	v_cndmask_b32_e64 v1, v2, v3, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v18, v3, v2, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v19, v8, s0
	v_cndmask_b32_e64 v8, v22, v20, s0
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v23, v21, s0
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v33
	v_cmp_gt_i32_e64 s4, s85, v32
	v_cmp_gt_i32_e64 s1, s85, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v11, v12, v127
	v_perm_b32 v11, v11, v12, v128
	v_perm_b32 v12, v13, v17, v127
	v_perm_b32 v13, v13, v17, v128
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v4, v127
	v_perm_b32 v1, v2, v4, v128
	v_perm_b32 v4, v5, v8, v127
	v_perm_b32 v5, v5, v8, v128
	v_perm_b32 v8, v9, v16, v127
	v_perm_b32 v9, v9, v16, v128
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s85, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v3, v6, v127
	v_perm_b32 v3, v3, v6, v128
	v_perm_b32 v6, v7, v14, v127
	v_perm_b32 v7, v7, v14, v128
	v_perm_b32 v14, v15, v18, v127
	v_perm_b32 v15, v15, v18, v128
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s91, 0xffff
	s_mov_b32 s8, s90
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp175:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 230
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 230
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18632
; TotalNumSgprs: 107
; NumVgprs: 230
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 230
; Occupancy: 6
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
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     230
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
