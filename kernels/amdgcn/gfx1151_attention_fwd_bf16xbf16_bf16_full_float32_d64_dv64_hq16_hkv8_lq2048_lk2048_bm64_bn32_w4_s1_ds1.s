	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x5c
	s_load_b128 s[48:51], s[0:1], 0x30
	v_dual_mov_b32 v46, 0x5410 :: v_dual_and_b32 v45, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	v_mov_b32_e32 v47, 0x7632
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[56:57], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v8, 3, v45
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s64, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s64, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s35, s64, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v48, 0x78, v0
	s_mov_b32 s55, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	s_mov_b32 s54, 0x7ffffffe
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v52, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[89:90], null, s44, v1, v[8:9]
	s_mul_i32 s9, s44, s35
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s44, v8
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s44, 5
	s_mul_i32 s10, s44, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s53, s5, 0xffff
	s_mov_b32 s52, s4
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v1, s9, v89
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v92, s44, 4, v89
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v51, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v92, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v63, 0x70, v52
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[4:7], v2, s[52:55], 0 offen
	buffer_load_b128 v[33:36], v3, s[52:55], 0 offen
	buffer_load_b128 v[37:40], v9, s[52:55], 0 offen
	buffer_load_b128 v[41:44], v1, s[52:55], 0 offen
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v50, 3, v0
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v96, 2, v0
	v_bfe_i32 v56, v0, 5, 1
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v57, 24, v0
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v58, 8, v0
	v_xor_b32_e32 v51, v51, v63
	s_load_b64 s[4:5], s[0:1], 0x6c
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v95, 16, v0
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v3, v25 :: v_dual_and_b32 v70, 0x7c, v96
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v62, 2, v48
	v_and_b32_e32 v56, 0x204, v56
	v_lshrrev_b32_e32 v71, 1, v57
	v_dual_mov_b32 v143, 0xff800000 :: v_dual_lshlrev_b32 v58, 4, v58
	v_lshlrev_b32_e32 v77, 4, v50
	v_lshrrev_b32_e32 v48, 1, v48
	v_dual_mov_b32 v142, 0xff800000 :: v_dual_add_nc_u32 v101, 0, v51
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v93, 15, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v94, 0x60, v0
	v_dual_mov_b32 v15, v25 :: v_dual_and_b32 v52, 0x80, v52
	s_sub_i32 s3, s3, s1
	v_lshlrev_b32_e32 v72, 11, v50
	v_lshlrev_b32_e32 v75, 6, v95
	v_cmp_eq_u32_e64 s1, 0, v95
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s3, 0x10007
	v_dual_mov_b32 v9, v25 :: v_dual_lshlrev_b32 v60, 3, v0
	s_add_i32 s9, s3, s0
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v54, 12, v0
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v55, 5, v0
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v64, 7, v93
	v_dual_mov_b32 v13, v25 :: v_dual_lshlrev_b32 v66, 4, v45
	v_dual_mov_b32 v16, v25 :: v_dual_lshlrev_b32 v69, 2, v94
	v_dual_mov_b32 v2, v25 :: v_dual_lshlrev_b32 v73, 5, v50
	v_dual_mov_b32 v81, v25 :: v_dual_lshlrev_b32 v74, 3, v94
	v_cndmask_b32_e64 v46, 0x1054, v46, s1
	v_cndmask_b32_e64 v47, 0x3276, v47, s1
	s_bfe_i32 s1, s9, 0x80000
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[90:91], null, s45, v62, v[8:9]
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v49, 2, v0
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v53, 48, v0
	v_bfe_i32 v59, v0, 3, 1
	v_dual_mov_b32 v12, v25 :: v_dual_lshlrev_b32 v97, 3, v93
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v55, 0x260, v55
	v_dual_mov_b32 v1, v25 :: v_dual_lshlrev_b32 v68, 8, v54
	v_and_b32_e32 v60, 48, v60
	v_or_b32_e32 v98, v66, v64
	v_lshl_or_b32 v63, v54, 1, v69
	v_lshl_or_b32 v46, v46, 8, v46
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s9, s1, 10
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s45, v8
	v_dual_mov_b32 v10, v25 :: v_dual_lshlrev_b32 v65, 6, v94
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v61, s64, v49
	v_lshrrev_b32_e32 v67, 1, v53
	v_and_b32_e32 v59, 0x210, v59
	v_lshl_or_b32 v53, v53, 6, v97
	v_lshl_or_b32 v60, v45, 6, v60
	v_or3_b32 v102, v68, v55, v63
	v_and_b32_e32 v46, 0x540054, v46
	v_lshl_or_b32 v47, v47, 8, v47
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_add_nc_u32 v76, 0, v95
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v61
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v61, v64, v65, v66
	v_dual_mov_b32 v82, v25 :: v_dual_add_nc_u32 v99, 0, v52
	v_xor_b32_e32 v53, v53, v67
	v_lshl_or_b32 v46, v46, 4, v46
	v_and_b32_e32 v47, 0x760076, v47
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v49, s5, v49
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_add_nc_u32 v51, 0, v61
	v_add_nc_u32_e32 v114, v99, v53
	v_and_b32_e32 v116, 0x5040504, v46
	v_lshl_or_b32 v46, v47, 4, v47
	v_xad_u32 v64, v61, 16, 0
	v_xad_u32 v55, v61, 32, 0
	v_xad_u32 v63, v61, 48, 0
	v_xad_u32 v65, 0x50, v61, 0
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v115, v50, 3, v49
	v_and_b32_e32 v133, 0x7060706, v46
	v_xor_b32_e32 v67, 0x70, v98
	v_xor_b32_e32 v68, 16, v98
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s8, s2, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s2, s47, s2
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	v_add_nc_u32_e32 v113, 0, v67
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_add_nc_u32 v107, 0, v68
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v136, 0x7c, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v138, s5, 5, v115
	v_add_nc_u32_e32 v139, s45, v90
	s_mov_b32 s36, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s9, s9, 0xfffff800
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s46, s46, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s5, s64
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s60, s48
	s_add_i32 s48, s3, s2
	s_mov_b32 s65, 0x76543210
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_and_b32 s53, s7, 0xffff
	s_and_b32 s57, s57, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s47, s9, s8
	s_mov_b32 s61, s49
	s_add_i32 s48, s48, s4
	s_mov_b32 s52, s6
	s_mov_b32 s49, s36
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v101, v[4:7]
	s_waitcnt vmcnt(2)
	ds_store_b128 v101, v[33:36] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v101, v[37:40] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[41:44] offset:6144
	v_mov_b32_e32 v5, v25
	v_xor_b32_e32 v100, v56, v70
	v_lshl_or_b32 v56, v57, 6, v71
	v_and_or_b32 v57, v96, 16, v58
	v_mov_b32_e32 v6, v25
	v_xor_b32_e32 v48, v77, v48
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v7, v25
	v_or3_b32 v57, v57, v72, v75
	v_lshl_or_b32 v58, v54, 9, v73
	v_lshl_or_b32 v104, v45, 9, v48
	v_or_b32_e32 v48, v100, v52
	v_lshl_or_b32 v54, v54, 3, v69
	v_or3_b32 v91, v57, v74, v73
	v_xor_b32_e32 v45, 32, v98
	v_or3_b32 v103, v56, v66, v69
	v_xor_b32_e32 v8, 0x408, v48
	v_xor_b32_e32 v54, v58, v54
	v_xor_b32_e32 v52, 48, v98
	v_xor_b32_e32 v58, 64, v98
	v_add_nc_u32_e32 v108, 0, v45
	v_add_nc_u32_e32 v120, 0, v8
	v_xor_b32_e32 v8, 32, v91
	v_xor_b32_e32 v45, 8, v102
	v_add_nc_u32_e32 v106, v76, v54
	v_add_nc_u32_e32 v109, 0, v52
	v_add_nc_u32_e32 v110, 0, v58
	v_add_nc_u32_e32 v134, 0, v8
	v_mov_b32_e32 v8, v25
	v_xor_b32_e32 v105, v60, v59
	v_xor_b32_e32 v59, 0x50, v98
	v_xor_b32_e32 v60, 0x60, v98
	v_xor_b32_e32 v48, 16, v102
	v_xor_b32_e32 v52, 24, v102
	v_xor_b32_e32 v53, 4, v103
	v_add_nc_u32_e32 v111, 0, v59
	v_add_nc_u32_e32 v112, 0, v60
	v_xor_b32_e32 v54, 8, v103
	v_xor_b32_e32 v57, 12, v103
	v_xor_b32_e32 v58, 0x90, v104
	v_xor_b32_e32 v59, 0x120, v104
	v_xor_b32_e32 v60, 0x1b0, v104
	v_xor_b32_e32 v62, 16, v105
	v_add_nc_u32_e32 v117, 0, v45
	v_xor_b32_e32 v45, 64, v91
	v_xad_u32 v56, v61, 64, 0
	v_xad_u32 v66, 0x60, v61, 0
	v_xad_u32 v61, 0x70, v61, 0
	v_add_nc_u32_e32 v118, 0, v48
	v_add_nc_u32_e32 v119, 0, v52
	v_add_nc_u32_e32 v121, 0, v53
	v_add_nc_u32_e32 v122, 0, v54
	v_add_nc_u32_e32 v123, 0, v57
	v_add_nc_u32_e32 v124, 0, v58
	v_add_nc_u32_e32 v125, 0, v59
	v_add_nc_u32_e32 v126, 0, v60
	v_add_nc_u32_e32 v127, 0, v62
	v_add_nc_u32_e32 v135, 0, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v51
	ds_load_b128 v[37:40], v64
	ds_load_b128 v[41:44], v55
	ds_load_b128 v[45:48], v63
	ds_load_b128 v[49:52], v56
	ds_load_b128 v[53:56], v65
	ds_load_b128 v[57:60], v66
	ds_load_b128 v[61:64], v61
	v_xor_b32_e32 v67, 32, v105
	v_xor_b32_e32 v68, 48, v105
	v_xor_b32_e32 v69, 0x420, v105
	v_xor_b32_e32 v70, 0x430, v105
	v_xor_b32_e32 v71, 0x410, v105
	v_add_nc_u32_e32 v128, 0, v67
	v_xor_b32_e32 v67, 0x60, v91
	v_add_nc_u32_e32 v129, 0, v68
	v_add_nc_u32_e32 v130, 0, v69
	v_add_nc_u32_e32 v131, 0, v70
	v_add_nc_u32_e32 v132, 0, v71
	v_add_nc_u32_e32 v137, 0, v67
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s66, s49, s47
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v72, s43 :: v_dual_add_nc_u32 v77, 0, v98
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s66, s44
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v71, s42 :: v_dual_mov_b32 v70, s41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v80, s3, v89, 1
	v_add_lshl_u32 v84, s3, v92, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v73, 0, v91
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v69, s40 :: v_dual_add_nc_u32 v74, 0, v103
	v_mov_b32_e32 v68, s39
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	v_cndmask_b32_e32 v145, 0x80000000, v84, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[84:87], v80, s[52:55], 0 offen
	buffer_load_b128 v[145:148], v145, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v67, s38 :: v_dual_mov_b32 v66, s37
	v_dual_mov_b32 v65, s36 :: v_dual_add_nc_u32 v76, 0, v102
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s2, s48, s49
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v83.l, 0
	v_add_lshl_u32 v78, s2, v115, 1
	v_add_lshl_u32 v79, s2, v138, 1
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s66, s66, s45
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v169.l, v83.l
	v_cndmask_b32_e64 v78, 0x80000000, v78, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v79, 0x80000000, v79, s0
	v_mov_b16_e32 v88.l, v83.l
	v_mov_b16_e64 v170.l, v83.l
	v_mov_b16_e64 v172.l, v83.l
	v_mov_b16_e64 v173.l, v83.l
	v_mov_b16_e64 v171.l, v83.l
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v101, v[84:87]
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[145:148] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v107
	ds_load_b128 v[145:148], v77
	ds_load_b128 v[153:156], v77 offset:2048
	ds_load_b128 v[157:160], v107 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[145:152], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[153:160], v[33:40], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v109
	ds_load_b128 v[65:68], v108
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[65:72], v[41:48], v[161:168]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v108 offset:2048
	ds_load_b128 v[69:72], v109 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[65:72], v[41:48], v[145:152]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v111
	ds_load_b128 v[65:68], v110
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[65:72], v[49:56], v[161:168]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v110 offset:2048
	ds_load_b128 v[69:72], v111 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[65:72], v[49:56], v[145:152]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v113
	ds_load_b128 v[65:68], v112
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[65:72], v[57:64], v[161:168]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v112 offset:2048
	ds_load_b128 v[69:72], v113 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[65:72], v[57:64], v[145:152]
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[65:68], v78, s[60:63], 0 offen
	buffer_load_b128 v[69:72], v79, s[60:63], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v77, 0xff80ff80, v66, s0
	v_cndmask_b32_e64 v78, 0xff80ff80, v65, s0
	v_cndmask_b32_e64 v79, 0xff80ff80, v68, s0
	v_cndmask_b32_e64 v80, 0xff80ff80, v67, s0
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v70, 0xff80ff80, v70, s0
	v_cndmask_b32_e64 v69, 0xff80ff80, v69, s0
	v_cndmask_b32_e64 v72, 0xff80ff80, v72, s0
	v_cndmask_b32_e64 v71, 0xff80ff80, v71, s0
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v66.l, v80.l
	v_mov_b16_e32 v66.h, v79.l
	v_mov_b16_e32 v65.l, v78.l
	v_mov_b16_e32 v65.h, v77.l
	v_mov_b16_e32 v68.l, v71.l
	v_mov_b16_e32 v68.h, v72.l
	v_mov_b16_e32 v67.l, v69.l
	v_mov_b16_e32 v67.h, v70.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v169.h, v79.l
	v_mov_b16_e32 v88.h, v80.l
	v_mov_b16_e64 v170.h, v77.l
	v_mov_b16_e32 v83.h, v78.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v114, v[65:66], v[67:68] offset1:32
	v_mov_b16_e32 v66.l, v80.h
	v_mov_b16_e32 v66.h, v79.h
	v_mov_b16_e32 v65.l, v78.h
	v_mov_b16_e32 v65.h, v77.h
	v_mov_b16_e32 v68.l, v71.h
	v_mov_b16_e32 v68.h, v72.h
	v_mov_b16_e32 v67.l, v69.h
	v_mov_b16_e32 v67.h, v70.h
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v169
	v_cmp_neq_f32_e64 s2, 0xff800000, v88
	v_cmp_neq_f32_e64 s4, 0xff800000, v170
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v172.h, v71.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v114, v[65:66], v[67:68] offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v66.l, v83.l
	v_mov_b16_e32 v66.h, v70.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s0, s3
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v67, 0xffff0000, v80
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, s0, s2
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v68, 0xffff0000, v79
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v66
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s9
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v67
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v67, 0, 1, s12
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v173.h, v72.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v83
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_mov_b16_e32 v65.l, v66.l
	s_and_b32 s13, s0, s4
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v80, 0xffff0000, v71
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v68
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v68, 0, 1, s13
	v_mov_b16_e32 v66.l, v67.l
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v171.h, v69.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v172
	v_cmp_neq_f32_e64 s8, 0xff800000, v173
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s14, s0, s7
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v84, 0xffff0000, v72
	v_and_b32_e32 v86, 0xffff0000, v78
	v_and_b32_e32 v87, 0xffff0000, v70
	v_and_b32_e32 v153, 0xffff0000, v69
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[69:70], v76
	ds_load_b64 v[71:72], v117
	ds_load_b64 v[78:79], v119
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v80
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v80, 0, 1, s14
	v_or_b16 v154.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v68.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v171
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s3, s0, s6
	s_and_b32 s2, s0, s8
	s_and_b32 s6, s0, s10
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v85, 0xffff0000, v77
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v84
	v_cmp_neq_f32_e64 s19, 0xff800000, v86
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v84, 0, 1, s2
	v_cndmask_b32_e64 v86, 0, 1, s6
	v_mov_b16_e32 v66.l, v80.l
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s8, s0, s5
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v85
	v_cmp_neq_f32_e64 s20, 0xff800000, v87
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v85, 0, 1, s3
	v_cndmask_b32_e64 v87, 0, 1, s8
	v_or_b16 v154.l, v66.l, v65.l
	v_mov_b16_e32 v65.l, v84.l
	v_mov_b16_e32 v66.l, v86.l
	v_mov_b16_e32 v67.l, v85.l
	v_mov_b16_e32 v68.l, v87.l
	s_and_b32 s5, s0, s15
	v_lshlrev_b16 v65.l, 8, v65.l
	v_lshlrev_b16 v66.l, 8, v66.l
	s_and_b32 s15, s0, s11
	s_and_b32 s11, s0, s17
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v84, 16, v69
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v155, 0, 1, s11
	v_or_b16 v66.h, v67.l, v65.l
	v_or_b16 v66.l, v68.l, v66.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v69, 0xffff0000, v69
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v75, v99, v100
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[76:77], v118
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v88, 0, 1, s15
	ds_store_2addr_stride64_b32 v75, v154, v66 offset1:1
	v_mov_b16_e64 v66.l, v155.l
	s_and_b32 s4, s0, s16
	s_and_b32 s17, s0, s19
	v_cndmask_b32_e64 v86, 0, 1, s4
	v_mov_b16_e32 v68.l, v88.l
	v_lshlrev_b16 v66.l, 8, v66.l
	v_cndmask_b32_e64 v80, 0, 1, s17
	s_and_b32 s16, s0, s18
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v153
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v153, 0, 1, s16
	v_or_b16 v80.h, v68.l, v66.l
	v_mov_b16_e32 v66.l, v86.l
	v_cndmask_b32_e64 v68, 0, 1, s5
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v86, 16, v78
	v_lshlrev_b32_e32 v87, 16, v72
	v_and_b32_e32 v72, 0xffff0000, v72
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v85, 16, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v65.l, v153.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v72, 0x3fb8aa3b, v72 :: v_dual_lshlrev_b32 v153, 16, v77
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v88, 16, v76
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v67.h, v68.l, v66.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v68, 16, v79
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s0, s20
	s_and_b32 s10, s0, s21
	v_cndmask_b32_e64 v156, 0, 1, s7
	v_cndmask_b32_e64 v154, 0, 1, s10
	v_mov_b16_e32 v67.l, v80.l
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v153, 0x3fb8aa3b, v153 :: v_dual_mul_f32 v158, 0x3fb8aa3b, v68
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v66, 0xffff0000, v78
	v_and_b32_e32 v78, 0xffff0000, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v80.l, v67.l, v65.l
	v_mov_b16_e64 v65.l, v156.l
	v_mov_b16_e64 v67.l, v154.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v156, 0x3fb8aa3b, v86
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v158, s46, v151
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v154, 0x3fb8aa3b, v69
	v_mul_f32_e32 v69, 0x3fb8aa3b, v85
	v_mul_f32_e32 v85, 0x3fb8aa3b, v87
	v_mul_f32_e32 v87, 0x3fb8aa3b, v88
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v70, 0xffff0000, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v78, 0x3fb8aa3b, v78
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v77, 0xffff0000, v77
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v87, s46, v145
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v75, 16, v71
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v156, s46, v149 :: v_dual_and_b32 v71, 0xffff0000, v71
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v67.l, v67.l, v65.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v78, s46, v152 :: v_dual_mul_f32 v155, 0x3fb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v71, 0x3fb8aa3b, v71
	v_mul_f32_e32 v75, 0x3fb8aa3b, v75
	v_dual_mul_f32 v79, 0x3fb8aa3b, v84 :: v_dual_mul_f32 v84, 0x3fb8aa3b, v70
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_store_2addr_stride64_b32 v120, v80, v67 offset1:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v155, s46, v148
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v157, 0x3fb8aa3b, v66
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_load_b32 v67, v74
	ds_load_b32 v66, v121
	ds_load_b32 v68, v122
	ds_load_b32 v70, v123
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v153, s46, v147 :: v_dual_and_b32 v76, 0xffff0000, v76
	v_dual_fmac_f32 v79, s46, v161 :: v_dual_fmac_f32 v154, s46, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v75, s46, v165 :: v_dual_mul_f32 v88, 0x3fb8aa3b, v76
	v_fmac_f32_e32 v71, s46, v166
	v_dual_fmac_f32 v69, s46, v163 :: v_dual_fmac_f32 v84, s46, v164
	v_fmac_f32_e32 v72, s46, v168
	v_fmac_f32_e32 v88, s46, v146
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.h, v83.l
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v74, 0x10000, v67
	v_and_b32_e32 v76, 0x10000, v66
	v_and_b32_e32 v146, 1, v66
	v_and_b32_e32 v147, 0x1000000, v66
	v_lshrrev_b16 v66.h, 8, v67.l
	v_and_b32_e32 v80, 0x10000, v70
	v_and_b32_e32 v86, 1, v67
	v_and_b32_e32 v145, 0x1000000, v67
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v157, s46, v150 :: v_dual_and_b32 v148, 1, v68
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v150, 1, v70
	v_and_b32_e32 v151, 0x1000000, v70
	v_lshrrev_b16 v65.l, 8, v66.l
	v_lshrrev_b16 v66.l, 8, v68.l
	v_lshrrev_b16 v67.l, 8, v70.l
	v_and_b16 v70.l, 1, v66.h
	v_cmp_eq_u32_e64 s24, 1, v86
	v_and_b16 v65.l, 1, v65.l
	v_and_b16 v67.h, 1, v66.l
	v_and_b16 v67.l, 1, v67.l
	v_cmp_eq_u16_e64 s30, 1, v70.l
	v_and_b32_e32 v77, 0x10000, v68
	v_cmp_eq_u32_e64 s26, 1, v146
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v79, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v149, 0x1000000, v68
	v_cmp_eq_u16_e64 s31, 1, v65.l
	v_cmp_eq_u16_e64 s33, 1, v67.h
	v_cmp_eq_u16_e64 s34, 1, v67.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v154, s30
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v85, s46, v167
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s22, 0, v74
	v_cmp_ne_u32_e64 s21, 0, v77
	v_cmp_ne_u32_e64 s19, 0, v80
	v_cmp_ne_u32_e64 s25, 0, v145
	v_cmp_eq_u32_e64 s28, 1, v148
	v_cmp_ne_u32_e64 s29, 0, v149
	v_cmp_eq_u32_e64 s18, 1, v150
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v75, s26
	v_cndmask_b32_e64 v75, 0xff800000, v71, s31
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v66, v67
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s23, 0, v76
	v_cmp_ne_u32_e64 s27, 0, v147
	v_cmp_ne_u32_e64 s20, 0, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v69, s22
	v_cndmask_b32_e64 v69, 0xff800000, v84, s25
	v_cndmask_b32_e64 v76, 0xff800000, v85, s23
	v_cndmask_b32_e64 v84, 0xff800000, v87, s28
	v_cndmask_b32_e64 v86, 0xff800000, v153, s21
	v_cndmask_b32_e64 v87, 0xff800000, v155, s29
	v_cndmask_b32_e64 v148, 0xff800000, v156, s18
	v_cndmask_b32_e64 v150, 0xff800000, v158, s19
	v_cndmask_b32_e64 v85, 0xff800000, v88, s33
	v_cndmask_b32_e64 v149, 0xff800000, v157, s34
	v_cndmask_b32_e64 v77, 0xff800000, v72, s27
	v_cndmask_b32_e64 v151, 0xff800000, v78, s20
	ds_store_b128 v73, v[66:69]
	ds_store_b128 v134, v[74:77]
	ds_store_b128 v135, v[84:87]
	ds_store_b128 v137, v[148:151]
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v72, v69, v74, v75
	v_max3_f32 v73, v85, v86, v87
	v_max3_f32 v78, v148, v149, v150
	v_max3_f32 v70, v76, v77, v84
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v71, v71, v68, v72
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v72, v73, v78, v151
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[152:155], v106
	ds_load_b128 v[156:159], v106 offset:512
	ds_load_b128 v[160:163], v106 offset:1024
	ds_load_b128 v[164:167], v106 offset:1536
	v_dual_mov_b32 v146, v81 :: v_dual_max_f32 v81, v140, v140
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v70, v71, v70, v72
	v_mov_b32_e32 v145, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v71, v70, s65, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v147, v142, v70, v71
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v147
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v70, v163, v163
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v147
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v73, v155, v155
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v74, v147
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
.Ltmp16:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v152, v160, v153
	v_max3_f32 v79, v161, v154, v162
	v_max_f32_e32 v70, v73, v70
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v78, v85, v147
	v_sub_f32_e32 v85, v87, v147
	v_sub_f32_e32 v87, v149, v147
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v73, v167, v167
	v_max3_f32 v149, v74, v79, v70
	v_max_f32_e32 v70, v159, v159
.Ltmp19:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s30
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v156, v164, v157
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v150, v147
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s24
.Ltmp22:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v73
	v_max3_f32 v73, v165, v158, v166
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v67.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v75, v147
	v_sub_f32_e32 v75, v76, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v67, v67
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v150, v74, v73, v70
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.h, v83.l
	v_mov_b16_e32 v70.l, v66.h
	v_and_b32_e32 v65, 1, v65
	v_cmp_o_f32_e64 s30, v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v147
	v_sub_f32_e32 v68, v68, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v65, v67, v65, 0x7fff
	v_mov_b16_e32 v67.h, v83.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v66, v70, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s24
	v_mov_b16_e32 v70.h, v83.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s30
	v_permlanex16_b32 v66, v65, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v73, v66, v65, v116
	v_perm_b32 v74, v66, v65, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.h, v83.l
	v_mov_b16_e32 v69.h, v83.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e64 s24, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v68
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.h, v83.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v66.h
	v_cmp_o_f32_e64 s22, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v66, v66, v67, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v72
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v72.h, v83.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s25, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v71
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.h, v83.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s25
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v68.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v77, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v68, v68, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v76
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.l, v69.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v84, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v86, v147
	v_sub_f32_e32 v86, v148, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.h, v83.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s27
	v_permlanex16_b32 v69, v65, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v76, v69, v65, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v71.l, v70.h
	v_cmp_o_f32_e64 s23, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v70, v70, v71, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v67.l, 0x7fff, v70.h, s23
	v_mov_b16_e32 v70.h, v83.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v72.l, v71.h
	v_cmp_o_f32_e64 s30, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v71, v71, v72, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.h, 0x7fff, v71.h, s30
	v_mov_b16_e32 v71.h, v83.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.l, v72.h
	v_cmp_o_f32_e64 s28, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v72, v72, v75, 0x7fff
	v_perm_b32 v75, v69, v65, v116
	v_permlanex16_b32 v69, v67, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v65, v66, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s28
	v_perm_b32 v79, v69, v67, v116
	v_perm_b32 v80, v69, v67, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v77, v65, v66, v116
	v_perm_b32 v78, v65, v66, v133
	v_permlanex16_b32 v66, v68, s65, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v69.h, v83.l
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v85, v144, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v65, v66, v68, v116
	v_perm_b32 v66, v66, v68, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.h, v83.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s22, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s21, v68, v68
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v68, v69, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v67.h, s22
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v69, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v69, v116
	v_perm_b32 v68, v68, v69, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v87
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v87, v142, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v87, v87
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.l, v69.h
	v_cmp_o_f32_e64 s21, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v86
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v86, s66, v139, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v86, 0x80000000, v86, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.l, v70.h
	v_cmp_o_f32_e64 s18, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v71.h, 0x7fff, v69.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s18
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v70, v71, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v87, 0, v87, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v69, v70, v71, v116
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v87
	v_mul_f32_e32 v26, v26, v87
	v_mul_f32_e32 v27, v27, v87
	v_mul_f32_e32 v28, v28, v87
	v_mul_f32_e32 v29, v29, v87
	v_mul_f32_e32 v30, v30, v87
	v_mul_f32_e32 v31, v31, v87
	v_mul_f32_e32 v32, v32, v87
	v_mul_f32_e32 v17, v17, v87
	v_mul_f32_e32 v18, v18, v87
	v_mul_f32_e32 v19, v19, v87
	v_mul_f32_e32 v20, v20, v87
	v_mul_f32_e32 v21, v21, v87
	v_mul_f32_e32 v22, v22, v87
	v_mul_f32_e32 v23, v23, v87
	v_mul_f32_e32 v24, v24, v87
	v_mul_f32_e32 v9, v9, v87
	v_mul_f32_e32 v10, v10, v87
	v_mul_f32_e32 v11, v11, v87
	v_mul_f32_e32 v12, v12, v87
	v_mul_f32_e32 v13, v13, v87
	v_mul_f32_e32 v14, v14, v87
	v_mul_f32_e32 v15, v15, v87
	v_mul_f32_e32 v16, v16, v87
	v_mul_f32_e32 v1, v1, v87
	v_mul_f32_e32 v2, v2, v87
	v_mul_f32_e32 v3, v3, v87
	v_mul_f32_e32 v4, v4, v87
	v_mul_f32_e32 v5, v5, v87
	v_mul_f32_e32 v6, v6, v87
	v_mul_f32_e32 v7, v7, v87
	v_dual_mul_f32 v8, v8, v87 :: v_dual_mov_b32 v87, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v88
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v88, v150
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v70, v70, v71, v133
	v_mov_b16_e32 v71.h, v83.l
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v87, v87 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v88, v88 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v87, v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s19
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v88, v88, v88 :: v_dual_max_f32 v87, v149, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v82, v82
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v88, v150, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v142, v87
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v142, v142, v142
	v_dual_max_f32 v87, v87, v142 :: v_dual_mov_b32 v142, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v142, v142, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v88, v88, v142
.Ltmp38:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v151, v147
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v144, v85, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v148
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v84, v143, v143
	v_max_f32_e32 v148, v81, v87
	v_max_f32_e32 v143, v84, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v85, v152, v143
	v_sub_f32_e32 v87, v153, v143
	v_sub_f32_e32 v150, v160, v143
	v_sub_f32_e32 v151, v161, v143
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v72.h
	v_cmp_o_f32_e64 s20, v72, v72
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v162, v143
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v150, v150
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v71, 1, v71
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v152, v152
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v153, v163, v143
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v71, v72, v71, 0x7fff
	v_mov_b16_e32 v72.h, v83.l
	v_mov_b16_e32 v72.l, v82.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s14
	v_cndmask_b32_e64 v150, 0, v150, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v83.h, 0x7fff, v71.h, s20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v72, 1, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s16
	v_cndmask_b32_e64 v152, 0, v152, s15
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v85, v150
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v155, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v72, v82, v72, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v82, v141, v141
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v162, v87, v151
.Ltmp42:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v153
	v_exp_f32_e32 v142, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v83.l, 0x7fff, v72.h, s19
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v149, v82, v88
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v154, v143
	v_sub_f32_e32 v154, v156, v144
	v_sub_f32_e32 v156, v158, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v72, v83, s65, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v158, v164, v144
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s11
	v_cndmask_b32_e64 v142, 0, v142, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v71, v72, v83, v116
	v_perm_b32 v72, v72, v83, v133
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v83, s66, v90, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v157, v144
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v142, v151
.Ltmp44:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v154
	v_exp_f32_e32 v151, v158
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v83, 0x80000000, v83, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v88, s12
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v157, v159, v144
	v_sub_f32_e32 v159, v165, v144
	v_sub_f32_e32 v160, v166, v144
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	buffer_load_b128 v[81:84], v83, s[56:59], 0 offen
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v163, v88, v152
.Ltmp46:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[85:88], v86, s[56:59], 0 offen
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v167, v144
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s8
	v_cndmask_b32_e64 v151, 0, v151, s10
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s8, 0xff800000, v140
	v_cmp_neq_f32_e64 s9, 0xff800000, v141
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v158, v141, v149
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v141, v149 :: v_dual_add_f32 v154, v142, v151
	v_dual_mov_b32 v142, v147 :: v_dual_sub_f32 v147, v140, v148
	v_mov_b32_e32 v140, v148
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v148, v155
	v_exp_f32_e32 v149, v159
	v_exp_f32_e32 v155, v156
	v_exp_f32_e32 v156, v160
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v159, v161
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v150, v150, v162 :: v_dual_add_f32 v153, v163, v153
.Ltmp48:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v158, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v148, s6
	v_cndmask_b32_e64 v149, 0, v149, s7
	v_cndmask_b32_e64 v155, 0, v155, s3
	v_cndmask_b32_e64 v156, 0, v156, s5
	v_cndmask_b32_e64 v157, 0, v157, s2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v159, 0, v159, s4
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v149, v160, v149
	v_dual_add_f32 v150, v150, v153 :: v_dual_add_f32 v155, v155, v156
.Ltmp50:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v152, 0, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v156, v157, v159 :: v_dual_add_f32 v149, v154, v149
.Ltmp52:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v151, 0, v105
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v147, 0, v147, s8
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v154, v155, v156
.Ltmp54:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v148, 0, v158, s9
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s2, s49, 32
	s_cmpk_lt_u32 s49, 0x7e0
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v149, v154
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v149, v150
	s_mov_b32 s49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v154, v153
	v_mov_b32_dpp v149, v149 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v154, v154 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v149, v150, v149 :: v_dual_add_f32 v150, v153, v154
.Ltmp58:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v153.l, v81.l
	v_mov_b16_e32 v81.l, v82.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v153.h, v85.l
	v_mov_b16_e32 v85.l, v81.h
	v_mov_b16_e32 v81.h, v86.l
	v_mov_b16_e32 v86.l, v82.h
	v_mov_b16_e32 v82.l, v83.l
	v_mov_b16_e32 v82.h, v87.l
	v_mov_b16_e32 v87.l, v83.h
	v_mov_b16_e32 v83.l, v84.l
	v_mov_b16_e32 v83.h, v88.l
	v_mov_b16_e32 v88.l, v84.h
	ds_store_2addr_b32 v152, v153, v85 offset1:16
	ds_store_2addr_b32 v124, v81, v86 offset1:16
	ds_store_2addr_b32 v125, v82, v87 offset1:16
	ds_store_2addr_b32 v126, v83, v88 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v151
	ds_load_b128 v[85:88], v127
	ds_load_b128 v[156:159], v131
	ds_load_b128 v[152:155], v130
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v127 offset:2048
	ds_load_b128 v[81:84], v151 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[152:159], v[73:80], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[152:155], v130 offset:2048
	ds_load_b128 v[156:159], v131 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v129
	ds_load_b128 v[81:84], v128
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[65:72], v[25:32]
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v81, v149
.Ltmp60:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[152:159], v[73:80], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[73:76], v151 offset:1024
	ds_load_b128 v[151:154], v151 offset:3072
	ds_load_b128 v[159:162], v128 offset:2048
	ds_load_b128 v[77:80], v132
	ds_load_b128 v[163:166], v129 offset:2048
	ds_load_b128 v[155:158], v132 offset:2048
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v149, v81
.Ltmp63:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v81, v146, v147
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v82, v150
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[159:166], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[151:158], v[65:72], v[1:8]
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v150, v82
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp67:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v82, v145, v148
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v96
	v_add_nc_u32_e32 v34, 0, v97
	v_lshl_add_u32 v35, v136, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s7, 0x31027000
	ds_store_b64 v35, v[81:82]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v35, 4, v95
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v94
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 32, v35
	v_or_b32_e32 v34, 16, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v0, v93
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s64, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v38
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s45, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v38, null, v37, v37, v25
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v42, null, v37, v37, v27
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v38
	v_rcp_f32_e32 v47, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v42
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v50, null, v37, v37, v29
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_div_scale_f32 v41, s1, v26, v37, v26
	v_fma_f32 v54, -v38, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v52, null, v37, v37, v30
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v56, -v42, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v44, v49, 1.0
	v_dual_fmac_f32 v46, v54, v46 :: v_dual_fmac_f32 v47, v55, v47
	v_div_scale_f32 v43, s2, v27, v37, v27
	v_div_scale_f32 v45, s3, v28, v37, v28
	v_rcp_f32_e32 v58, v52
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_mul_f32 v55, v39, v46
	v_fmac_f32_e32 v49, v57, v49
	v_mul_f32_e32 v56, v41, v47
	v_fma_f32 v54, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v43, v48
	v_div_scale_f32 v51, s4, v29, v37, v29
	v_fma_f32 v62, -v40, v56, v41
	v_mul_f32_e32 v59, v45, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v60, -v52, v58, 1.0
	v_fma_f32 v61, -v38, v55, v39
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v56, v62, v47
	v_fma_f32 v64, -v44, v59, v45
	v_fma_f32 v63, -v42, v57, v43
	v_fmac_f32_e32 v58, v60, v58
	v_dual_fmac_f32 v55, v61, v46 :: v_dual_mul_f32 v54, v51, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v64, v49
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v44, v59, v45
	v_fma_f32 v44, -v50, v54, v51
	v_fmac_f32_e32 v57, v63, v48
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v54, v44, v53
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v31
	v_div_fmas_f32 v39, v39, v47, v56
	v_div_fixup_f32 v25, v38, v37, v25
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v38, v42
	v_div_fmas_f32 v40, v40, v48, v57
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s2, v30, v37, v30
	v_div_scale_f32 v43, null, v37, v37, v32
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v45, v39, v58
	v_div_fixup_f32 v27, v40, v37, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v38, 1.0
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v44, null, v37, v37, v17
	v_fma_f32 v40, -v52, v45, v39
	v_fmac_f32_e32 v38, v46, v38
	v_div_fmas_f32 v41, v41, v49, v59
	v_fma_f32 v48, -v50, v54, v51
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v40, v58
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s3, v31, v37, v31
	v_fma_f32 v46, -v43, v47, 1.0
	v_div_fmas_f32 v48, v48, v53, v54
	v_fma_f32 v39, -v52, v45, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v41, v38
	v_div_scale_f32 v53, null, v37, v37, v18
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v47, v46, v47
	v_fma_f32 v50, -v42, v40, v41
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_fma_f32 v52, -v44, v49, 1.0
	v_div_scale_f32 v46, s5, v32, v37, v32
	v_fmac_f32_e32 v40, v50, v38
	v_div_fixup_f32 v29, v48, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v52, v49
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_scale_f32 v48, null, v37, v37, v19
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v42, -v53, v45, 1.0
	v_mul_f32_e32 v51, v46, v47
	v_div_scale_f32 v52, s2, v17, v37, v17
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v50, -v43, v51, v46
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v50, v47
	v_div_fixup_f32 v31, v38, v37, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_div_scale_f32 v43, s3, v18, v37, v18
	v_div_fmas_f32 v39, v39, v47, v51
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v32, v39, v37, v32
	v_div_scale_f32 v51, null, v37, v37, v21
	v_fma_f32 v38, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v44, s4, v19, v37, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v46, v40, 1.0
	v_div_fmas_f32 v38, v38, v49, v41
	v_fmac_f32_e32 v47, v39, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v53, v47, v43
	v_div_scale_f32 v49, s2, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v40
	v_fma_f32 v54, -v51, v41, 1.0
	v_div_scale_f32 v45, s3, v21, v37, v21
	v_div_fixup_f32 v18, v38, v37, v18
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v54, v41
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v48, v39, v44
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v48, v39, v44
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s5, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v51, v43, v45
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v19, v38, v37, v19
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v24
	v_fma_f32 v38, -v51, v43, v45
	v_fmac_f32_e32 v48, v42, v53
	v_div_scale_f32 v51, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v49
	v_div_fmas_f32 v38, v38, v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v50, v48, v44
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s2, v23, v37, v23
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s3, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v41, v37, v22
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v21, v38, v37, v21
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v55, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s4, v9, v37, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v43
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, s2, v10, v37, v10
	v_div_fmas_f32 v40, v43, v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v42, v44, v38
	v_div_fixup_f32 v23, v39, v37, v23
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_div_fixup_f32 v24, v40, v37, v24
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s5, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v40, s3, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v51, v54, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, s2, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v11, v43, v37, v11
	v_div_scale_f32 v43, null, v37, v37, v15
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_rcp_f32_e32 v49, v43
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_fma_f32 v41, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v37, v14
	v_div_scale_f32 v40, s2, v15, v37, v15
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v41, v47
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v38, s3, v16, v37, v16
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s4, v1, v37, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v54, -v46, v52, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v45, v44, v41
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v41, v37, v14
	v_fmac_f32_e32 v42, v51, v42
	v_fma_f32 v44, -v43, v45, v40
	v_div_scale_f32 v51, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v56, v53, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s5, v2, v37, v2
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v51, v55, 1.0
	v_fmac_f32_e32 v56, v41, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v46, v43, v54
	v_fma_f32 v38, -v48, v47, v38
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v55, v44, v55
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v44, s2, v3, v37, v3
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v45, null, v37, v37, v4
	v_div_fmas_f32 v42, v42, v52, v43
	v_div_fixup_f32 v15, v40, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_scale_f32 v42, null, v37, v37, v7
	v_fmac_f32_e32 v41, v46, v55
	v_div_fixup_f32 v1, v39, v37, v1
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v49, null, v37, v37, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v42, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s4, v7, v37, v7
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v53, v46
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s3, v6, v37, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v56, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v43, v47 :: v_dual_fmac_f32 v41, v38, v41
	v_div_scale_f32 v38, s2, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s5, v8, v37, v8
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	v_fma_f32 v38, -v39, v54, v38
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v38, v37, v5
	v_fma_f32 v41, -v49, v58, v55
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v40, v37, v6
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_and_b32 s5, s51, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s45, v35
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v35, v36, v35, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_mov_b32 s4, s50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v38, 16, v35
	v_add_nc_u32_e32 v37, 8, v35
	v_cndmask_b32_e32 v39, 0x80000000, v35, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_clause 0x2
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v37, s[4:7], 0 offen
	buffer_store_b32 v27, v38, s[4:7], 0 offen
	v_add_nc_u32_e32 v38, 56, v35
	v_add_nc_u32_e32 v25, 24, v35
	v_add_nc_u32_e32 v37, 48, v35
	v_add_nc_u32_e32 v26, 32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_add_nc_u32 v27, 40, v35
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s45, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x4
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	buffer_store_b32 v31, v37, s[4:7], 0 offen
	buffer_store_b32 v32, v38, s[4:7], 0 offen
	v_add_lshl_u32 v25, v36, v34, 2
	v_add_nc_u32_e32 v26, 0x48, v35
	v_add_nc_u32_e32 v27, 0x50, v35
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v35
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s45, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v35
	v_add_nc_u32_e32 v20, 0x78, v35
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v36, v33, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s45, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x2
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v24, v20, s[4:7], 0 offen
	buffer_store_b32 v9, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v35
	v_add_lshl_u32 v0, v36, v0, 2
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v35
	v_add_nc_u32_e32 v19, 0xa0, v35
	v_add_nc_u32_e32 v20, 0xa8, v35
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[4:7], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v10, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	buffer_store_b32 v14, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v35
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v16, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v0, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v35
	v_add_nc_u32_e32 v1, 0xe0, v35
	v_add_nc_u32_e32 v2, 0xe8, v35
	v_add_nc_u32_e32 v3, 0xf0, v35
	v_add_nc_u32_e32 v9, 0xf8, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[4:7], 0 offen
	buffer_store_b32 v5, v1, s[4:7], 0 offen
	buffer_store_b32 v6, v2, s[4:7], 0 offen
	buffer_store_b32 v7, v3, s[4:7], 0 offen
	buffer_store_b32 v8, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp68:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 174
		.amdhsa_next_free_sgpr 67
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 174
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10656
; TotalNumSgprs: 69
; NumVgprs: 174
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 69
; NumVGPRsForWavesPerEU: 174
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     174
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
