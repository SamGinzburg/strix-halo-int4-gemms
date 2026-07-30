	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x60
	s_load_b32 s4, s[0:1], 0x68
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v45, 1, v0
	s_load_b256 s[16:23], s[0:1], 0x0
	v_dual_mov_b32 v49, 0x5410 :: v_dual_lshlrev_b32 v46, 4, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s5, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v57, 0xff800000 :: v_dual_and_b32 v44, 16, v46
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s7, s6, s5
	s_mov_b32 s31, 0x31027000
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s30, 0x7ffffffe
	v_dual_mov_b32 v50, 0x7632 :: v_dual_and_b32 v47, 15, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v52, v0, 4, 1
	v_lshrrev_b32_e32 v51, 3, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x20
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s26, v45
	s_mul_i32 s8, s26, s7
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s26, v44
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v51, s5, v51
	v_lshl_add_u32 v71, v47, 1, 0
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	v_add3_u32 v1, v2, v44, s8
	s_mov_b32 s8, 0
	v_mov_b16_e32 v78.h, 0
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	buffer_load_b128 v[40:43], v1, s[28:31], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_and_or_b32 v1, v45, 48, v47
	s_mov_b32 s15, s8
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s29, s23, 0xffff
	s_mov_b32 s28, s22
	v_mov_b32_e32 v24, 0
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v69, s7, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v1
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v45, s5, v45
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s34, s4, 0x3fb8aa3b
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v39, s15 :: v_dual_lshlrev_b32 v2, 1, v69
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, 0x200, v1
	v_dual_mov_b32 v34, s10 :: v_dual_lshlrev_b32 v53, 1, v0
	v_dual_mov_b32 v32, s8 :: v_dual_and_b32 v55, 24, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s6
	v_mov_b32_e32 v37, s13
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v58, v53, 30, v52
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v56, 7, v0
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v48, v1, s[28:31], 0 offen
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v53, 24, v53
	v_dual_mov_b32 v28, v24 :: v_dual_add_nc_u32 v73, 0, v46
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v52, 1, v52
	v_mov_b32_e32 v21, v24
	v_xor_b32_e32 v55, v46, v55
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v46, 2, v58
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v54, 3, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v30, v24 :: v_dual_add_nc_u32 v75, 0, v55
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v72, 4, v56
	v_xor_b32_e32 v56, 8, v55
	v_lshl_or_b32 v47, v47, 5, v53
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_or_b32 v74, s3, 10, v52
	v_or_b32_e32 v52, 48, v51
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v55, 4, v46
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v70, 16, v0
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v54, 56, v54
	v_dual_mov_b32 v16, v24 :: v_dual_add_nc_u32 v77, 0, v47
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v58, 16, v51
	v_xor_b32_e32 v60, 8, v47
	v_xor_b32_e32 v61, 16, v47
	v_xor_b32_e32 v62, 24, v47
	v_mul_lo_u32 v47, s27, v52
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s2, s27, v54
	.loc	1 629 13                        ; attention.py:629:13
	v_mul_lo_u32 v54, s27, v58
	v_mad_u64_u32 v[58:59], null, s26, v45, v[44:45]
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s1, 0, v70
	v_mov_b32_e32 v11, v24
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v53, 32, v51
	v_dual_mov_b32 v9, v24 :: v_dual_lshlrev_b32 v82, 1, v47
	v_add_nc_u32_e32 v80, 0, v61
	v_cndmask_b32_e64 v47, 0x1054, v49, s1
	v_cndmask_b32_e64 v49, 0x3276, v50, s1
	v_mul_lo_u32 v53, s27, v53
	v_mul_lo_u32 v51, s27, v51
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v79, 0, v60
	v_lshl_or_b32 v47, v47, 8, v47
	v_lshl_or_b32 v49, v49, 8, v49
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v1, v24
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v81, 0, v62
	v_dual_mov_b32 v38, s14 :: v_dual_mov_b32 v35, s11
	v_dual_mov_b32 v36, s12 :: v_dual_mov_b32 v33, s9
	v_dual_mov_b32 v22, v24 :: v_dual_lshlrev_b32 v83, 1, v53
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v76, 0, v56
	v_dual_mov_b32 v8, v24 :: v_dual_lshlrev_b32 v85, 1, v51
	v_dual_mov_b32 v13, v24 :: v_dual_lshlrev_b32 v84, 1, v54
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	s_and_b32 s19, s19, 0xffff
	s_movk_i32 s33, 0xffc0
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_lshl_b32 s35, s27, 7
	s_lshl_b32 s26, s26, 6
	s_mov_b32 s28, s18
	s_mov_b32 s29, s19
	s_mov_b32 s19, 0x76543210
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v52, v46, v40
	ds_bpermute_b32 v40, v55, v40
	ds_bpermute_b32 v44, v46, v41
	ds_bpermute_b32 v41, v55, v41
	ds_bpermute_b32 v45, v46, v42
	ds_bpermute_b32 v42, v55, v42
	ds_bpermute_b32 v46, v46, v43
	ds_bpermute_b32 v43, v55, v43
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v59, v40, v52, s1
	v_cndmask_b32_e64 v61, v52, v40, s1
	v_and_b32_e32 v40, 0x540054, v47
	v_and_b32_e32 v47, 0x760076, v49
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v60, v41, v44, s1
	v_cndmask_b32_e64 v62, v44, v41, s1
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v86, 16, v48
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v47, 4, v47
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v3, v24
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v63, v42, v45, s1
	v_cndmask_b32_e64 v65, v45, v42, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v64, v43, v46, s1
	v_cndmask_b32_e64 v66, v46, v43, s1
	v_and_b32_e32 v67, 0x5040504, v40
	v_and_b32_e32 v68, 0x7060706, v41
	v_mov_b32_e32 v48, v24
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 634 32                        ; attention.py:634:32
	v_dual_cndmask_b32 v40, 0x80000000, v58 :: v_dual_add_nc_u32 v45, v84, v72
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v44, v85, v72
	v_add_nc_u32_e32 v46, v83, v72
	v_add_nc_u32_e32 v47, v82, v72
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[40:43], v40, s[28:31], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v52.h, v78.h
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v57
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v49.h, v78.h
	v_mov_b16_e32 v51.h, v78.h
	v_mov_b16_e32 v53.h, v78.h
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s33, s33, 64
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v75, v[40:41]
	ds_store_b64 v76, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[111:114], v44, s[20:23], 0 offen
	buffer_load_b128 v[115:118], v45, s[20:23], 0 offen
	buffer_load_b128 v[119:122], v46, s[20:23], 0 offen
	buffer_load_b128 v[123:126], v47, s[20:23], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v50, v74, s[36:39], 0 offen offset:36
	buffer_load_u16 v54, v74, s[36:39], 0 offen offset:40
	buffer_load_u16 v55, v74, s[36:39], 0 offen offset:44
	buffer_load_u16 v56, v74, s[36:39], 0 offen offset:48
	buffer_load_u16 v139, v74, s[36:39], 0 offen offset:52
	buffer_load_u16 v140, v74, s[36:39], 0 offen offset:56
	buffer_load_u16 v141, v74, s[36:39], 0 offen offset:60
	buffer_load_u16 v142, v74, s[36:39], 0 offen offset:64
	buffer_load_u16 v143, v74, s[36:39], 0 offen offset:68
	buffer_load_u16 v144, v74, s[36:39], 0 offen offset:72
	buffer_load_u16 v145, v74, s[36:39], 0 offen offset:76
	buffer_load_u16 v146, v74, s[36:39], 0 offen offset:80
	buffer_load_u16 v147, v74, s[36:39], 0 offen offset:84
	buffer_load_u16 v148, v74, s[36:39], 0 offen offset:88
	buffer_load_u16 v149, v74, s[36:39], 0 offen offset:92
	buffer_load_u16 v150, v74, s[36:39], 0 offen offset:96
	buffer_load_u16 v151, v74, s[36:39], 0 offen offset:100
	buffer_load_u16 v152, v74, s[36:39], 0 offen offset:104
	buffer_load_u16 v153, v74, s[36:39], 0 offen
	buffer_load_u16 v154, v74, s[36:39], 0 offen offset:4
	buffer_load_u16 v155, v74, s[36:39], 0 offen offset:8
	buffer_load_u16 v156, v74, s[36:39], 0 offen offset:12
	buffer_load_u16 v157, v74, s[36:39], 0 offen offset:16
	buffer_load_u16 v158, v74, s[36:39], 0 offen offset:20
	buffer_load_u16 v159, v74, s[36:39], 0 offen offset:24
	buffer_load_u16 v160, v74, s[36:39], 0 offen offset:28
	buffer_load_u16 v161, v74, s[36:39], 0 offen offset:32
	buffer_load_u16 v162, v74, s[36:39], 0 offen offset:108
	buffer_load_u16 v163, v74, s[36:39], 0 offen offset:112
	buffer_load_u16 v164, v74, s[36:39], 0 offen offset:120
	buffer_load_u16 v165, v74, s[36:39], 0 offen offset:124
	buffer_load_u16 v166, v74, s[36:39], 0 offen offset:116
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[93:96], v77 offset1:1
	ds_load_2addr_stride64_b64 v[127:130], v77 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[103:106], v79 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v79 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[135:138], v80 offset1:1
	.loc	1 629 13                        ; attention.py:629:13
	s_cmpk_lt_u32 s33, 0x1c0
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[93:94], v[59:60], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[59:60], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[127:128], v[59:60], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[103:104], v[63:64], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[105:106], v[63:64], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[129:130], v[59:60], v[32:39] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[127:130], v80 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[131:132], v[63:64], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[135:136], v[61:62], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[133:134], v[63:64], v[103:110] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[131:134], v81 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[87:94], v[137:138], v[61:62], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[127:128], v[61:62], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[129:130], v[61:62], v[103:110] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[127:130], v81 offset0:2 offset1:3
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[40:47], v[131:132], v[65:66], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[133:134], v[65:66], v[87:94] neg_lo:[1,1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	s_waitcnt vmcnt(35)
	ds_store_b128 v73, v[111:114]
	s_waitcnt vmcnt(34)
	ds_store_b128 v73, v[115:118] offset:2048
	s_waitcnt vmcnt(33)
	ds_store_b128 v73, v[119:122] offset:4096
	s_waitcnt vmcnt(32)
	ds_store_b128 v73, v[123:126] offset:6144
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[95:102], v[127:128], v[65:66], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[129:130], v[65:66], v[103:110] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v108, v108
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v88, v86, v88 :: v_dual_lshlrev_b32 v113, 16, v142
	v_mul_f32_e32 v89, v86, v89
	v_mul_f32_e32 v90, v86, v90
	v_mul_f32_e32 v91, v86, v91
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v92, v86, v92 :: v_dual_lshlrev_b32 v117, 16, v146
	v_mul_f32_e32 v93, v86, v93
	v_dual_mul_f32 v94, v86, v94 :: v_dual_lshlrev_b32 v111, 16, v140
	v_mul_f32_e32 v95, v86, v95
	v_mul_f32_e32 v96, v86, v96
	v_mul_f32_e32 v97, v86, v97
	v_dual_mul_f32 v98, v86, v98 :: v_dual_lshlrev_b32 v115, 16, v144
	v_dual_mul_f32 v99, v86, v99 :: v_dual_lshlrev_b32 v112, 16, v141
	v_mul_f32_e32 v100, v86, v100
	v_mul_f32_e32 v101, v86, v101
	v_mul_f32_e32 v102, v86, v102
	v_dual_mul_f32 v103, v86, v103 :: v_dual_lshlrev_b32 v116, 16, v145
	v_mul_f32_e32 v104, v86, v104
	v_dual_mul_f32 v105, v86, v105 :: v_dual_lshlrev_b32 v114, 16, v143
	v_mul_f32_e32 v40, v86, v40
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v41, v86, v41 :: v_dual_lshlrev_b32 v118, 16, v147
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v129, v86, v42 :: v_dual_lshlrev_b32 v146, 16, v149
	v_mul_f32_e32 v43, v86, v43
	v_mul_f32_e32 v44, v86, v44
	v_mul_f32_e32 v45, v86, v45
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v46, v86, v46 :: v_dual_lshlrev_b32 v149, 16, v152
	v_mul_f32_e32 v47, v86, v47
	v_mul_f32_e32 v106, v86, v106
	v_mul_f32_e32 v107, v86, v107
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v109, v86, v109 :: v_dual_lshlrev_b32 v152, 16, v155
	v_mul_f32_e32 v110, v86, v110
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v42, 16, v50
	v_lshlrev_b32_e32 v50, 16, v54
	v_lshlrev_b32_e32 v54, 16, v55
	v_lshlrev_b32_e32 v55, 16, v56
	v_lshlrev_b32_e32 v56, 16, v139
	v_lshlrev_b32_e32 v143, 16, v148
	v_lshlrev_b32_e32 v147, 16, v150
	v_lshlrev_b32_e32 v148, 16, v151
	v_lshlrev_b32_e32 v150, 16, v153
	v_lshlrev_b32_e32 v151, 16, v154
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v153, 16, v156
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v154, 16, v157
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v155, 16, v158
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v156, 16, v159
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v157, 16, v160
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v159, 16, v162
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v160, 16, v163
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v87, v86, v87 :: v_dual_lshlrev_b32 v158, 16, v161
	v_dual_mul_f32 v108, v86, v108 :: v_dual_mul_f32 v55, v91, v55
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v50, v89, v50 :: v_dual_lshlrev_b32 v161, 16, v164
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v162, 16, v165
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v163, 16, v166
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v88, v88, v42
	v_dual_mul_f32 v54, v90, v54 :: v_dual_mul_f32 v89, v93, v111
	v_dual_mul_f32 v56, v92, v56 :: v_dual_mul_f32 v93, v97, v115
	v_dual_mul_f32 v90, v94, v112 :: v_dual_mul_f32 v97, v101, v143
	v_dual_mul_f32 v91, v95, v113 :: v_dual_mul_f32 v92, v96, v114
	v_dual_mul_f32 v94, v98, v116 :: v_dual_mul_f32 v101, v105, v149
	v_dual_mul_f32 v95, v99, v117 :: v_dual_mul_f32 v96, v100, v118
	v_dual_mul_f32 v41, v41, v151 :: v_dual_mul_f32 v98, v102, v146
	v_mul_f32_e32 v43, v43, v153
	v_dual_mul_f32 v99, v103, v147 :: v_dual_mul_f32 v100, v104, v148
	v_dual_mul_f32 v45, v45, v155 :: v_dual_mul_f32 v40, v40, v150
	v_dual_mul_f32 v47, v47, v157 :: v_dual_mul_f32 v44, v44, v154
	v_dual_mul_f32 v103, v106, v159 :: v_dual_mul_f32 v104, v107, v160
	v_dual_mul_f32 v107, v108, v163 :: v_dual_mul_f32 v102, v129, v152
	v_dual_mul_f32 v87, v87, v158 :: v_dual_mul_f32 v46, v46, v156
	v_dual_mul_f32 v105, v109, v161 :: v_dual_mul_f32 v106, v110, v162
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v55, s34, v55 :: v_dual_mul_f32 v88, s34, v88
	v_dual_mul_f32 v89, s34, v89 :: v_dual_mul_f32 v50, s34, v50
	v_dual_mul_f32 v91, s34, v91 :: v_dual_mul_f32 v54, s34, v54
	v_dual_mul_f32 v93, s34, v93 :: v_dual_mul_f32 v56, s34, v56
	v_dual_mul_f32 v95, s34, v95 :: v_dual_mul_f32 v90, s34, v90
	v_dual_mul_f32 v97, s34, v97 :: v_dual_mul_f32 v92, s34, v92
	v_dual_mul_f32 v99, s34, v99 :: v_dual_mul_f32 v96, s34, v96
	v_dual_mul_f32 v41, s34, v41 :: v_dual_mul_f32 v98, s34, v98
	v_dual_mul_f32 v43, s34, v43 :: v_dual_mul_f32 v100, s34, v100
	v_dual_mul_f32 v45, s34, v45 :: v_dual_mul_f32 v40, s34, v40
	v_dual_mul_f32 v47, s34, v47 :: v_dual_mul_f32 v44, s34, v44
	v_dual_mul_f32 v103, s34, v103 :: v_dual_mul_f32 v104, s34, v104
	v_dual_mul_f32 v107, s34, v107 :: v_dual_mul_f32 v94, s34, v94
	v_dual_mul_f32 v101, s34, v101 :: v_dual_mul_f32 v102, s34, v102
	v_dual_mul_f32 v87, s34, v87 :: v_dual_mul_f32 v46, s34, v46
	v_mul_f32_e32 v105, s34, v105
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v166, 0xff800000, v88, s6
	v_cndmask_b32_e64 v167, 0xff800000, v50, s6
	v_cndmask_b32_e64 v168, 0xff800000, v54, s6
	v_cndmask_b32_e64 v169, 0xff800000, v55, s6
	v_cndmask_b32_e64 v170, 0xff800000, v56, s6
	v_cndmask_b32_e64 v171, 0xff800000, v89, s6
	v_cndmask_b32_e64 v172, 0xff800000, v90, s6
	v_cndmask_b32_e64 v90, 0xff800000, v91, s6
	v_cndmask_b32_e64 v91, 0xff800000, v92, s6
	v_cndmask_b32_e64 v40, 0xff800000, v40, s6
	v_cndmask_b32_e64 v54, 0xff800000, v41, s6
	v_cndmask_b32_e64 v43, 0xff800000, v43, s6
	v_cndmask_b32_e64 v44, 0xff800000, v44, s6
	v_cndmask_b32_e64 v45, 0xff800000, v45, s6
	v_cndmask_b32_e64 v103, 0xff800000, v103, s6
	v_cndmask_b32_e64 v104, 0xff800000, v104, s6
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v106, s34, v106
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v92, 0xff800000, v93, s6
	v_cndmask_b32_e64 v93, 0xff800000, v94, s6
	v_cndmask_b32_e64 v94, 0xff800000, v95, s6
	v_cndmask_b32_e64 v95, 0xff800000, v96, s6
	v_cndmask_b32_e64 v96, 0xff800000, v97, s6
	v_cndmask_b32_e64 v97, 0xff800000, v98, s6
	v_cndmask_b32_e64 v98, 0xff800000, v99, s6
	v_cndmask_b32_e64 v99, 0xff800000, v100, s6
	v_cndmask_b32_e64 v100, 0xff800000, v101, s6
	v_cndmask_b32_e64 v55, 0xff800000, v102, s6
	v_cndmask_b32_e64 v46, 0xff800000, v46, s6
	v_cndmask_b32_e64 v47, 0xff800000, v47, s6
	v_cndmask_b32_e64 v173, 0xff800000, v87, s6
	v_cndmask_b32_e64 v101, 0xff800000, v105, s6
	v_cndmask_b32_e64 v105, 0xff800000, v107, s6
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v41, v166, v167, v168
	v_max3_f32 v50, v169, v170, v171
	v_max3_f32 v56, v172, v90, v91
	v_max3_f32 v107, v43, v44, v45
	v_max_f32_e32 v109, v103, v104
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v102, 0xff800000, v106, s6
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v106, v40, v54
	v_max3_f32 v87, v92, v93, v94
	v_max3_f32 v88, v95, v96, v97
	v_max3_f32 v89, v98, v99, v100
	v_max3_f32 v108, v46, v47, v173
	v_max_f32_e32 v110, v101, v102
	v_max3_f32 v56, v41, v50, v56
	v_max3_f32 v106, v106, v55, v107
	v_max3_f32 v87, v87, v88, v89
.Ltmp4:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v88, v109, v105, v110
.Ltmp6:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v56, v106, v108, v56
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v145, v71 offset:608
	ds_load_u16_d16 v144, v71 offset:352
	ds_load_u16_d16 v121, v71 offset:512
	ds_load_u16_d16 v128, v71 offset:288
	ds_load_u16_d16 v134, v71 offset:1824
	ds_load_u16_d16 v122, v71 offset:768
	ds_load_u16_d16 v138, v71 offset:832
	ds_load_u16_d16 v123, v71 offset:1024
	ds_load_u16_d16 v130, v71 offset:800
	ds_load_u16_d16 v139, v71 offset:1088
	ds_load_u16_d16 v124, v71 offset:1280
	ds_load_u16_d16 v131, v71 offset:1056
	ds_load_u16_d16 v140, v71 offset:1344
	ds_load_u16_d16 v125, v71 offset:1536
	ds_load_u16_d16 v132, v71 offset:1312
	ds_load_u16_d16 v141, v71 offset:1600
	ds_load_u16_d16 v126, v71 offset:1792
	ds_load_u16_d16 v133, v71 offset:1568
	ds_load_u16_d16 v142, v71 offset:1856
	ds_load_u16_d16 v120, v71 offset:256
	ds_load_u16_d16 v119, v71
	ds_load_u16_d16 v127, v71 offset:32
	ds_load_u16_d16 v137, v71 offset:576
	ds_load_u16_d16 v135, v71 offset:64
	ds_load_u16_d16 v136, v71 offset:320
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v144, v71 offset:480
	ds_load_u16_d16 v143, v71 offset:96
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v120, v71 offset:384
	ds_load_u16_d16_hi v121, v71 offset:640
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v137, v71 offset:704
	ds_load_u16_d16 v129, v71 offset:544
	ds_load_u16_d16_hi v141, v71 offset:1728
	ds_load_u16_d16_hi v126, v71 offset:1920
	ds_load_u16_d16_hi v142, v71 offset:1984
	ds_load_u16_d16_hi v119, v71 offset:128
	ds_load_u16_d16_hi v127, v71 offset:160
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v135, v71 offset:192
	ds_load_u16_d16_hi v122, v71 offset:896
	ds_load_u16_d16_hi v138, v71 offset:960
	ds_load_u16_d16 v146, v71 offset:864
	ds_load_u16_d16_hi v123, v71 offset:1152
	ds_load_u16_d16_hi v139, v71 offset:1216
	ds_load_u16_d16 v147, v71 offset:1120
	ds_load_u16_d16_hi v124, v71 offset:1408
	ds_load_u16_d16_hi v140, v71 offset:1472
	ds_load_u16_d16 v148, v71 offset:1376
	ds_load_u16_d16_hi v125, v71 offset:1664
	ds_load_u16_d16 v149, v71 offset:1632
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v56, v56, v87, v88
.Ltmp10:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v50, v71 offset:2048
	ds_load_u16_d16 v41, v71 offset:2112
	ds_load_u16_d16 v150, v71 offset:1888
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v143, v71 offset:224
	ds_load_u16_d16_hi v128, v71 offset:416
	ds_load_u16_d16_hi v136, v71 offset:448
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v129, v71 offset:672
	ds_load_u16_d16_hi v145, v71 offset:736
	ds_load_u16_d16_hi v130, v71 offset:928
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v146, v71 offset:992
	ds_load_u16_d16_hi v131, v71 offset:1184
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v147, v71 offset:1248
	ds_load_u16_d16_hi v132, v71 offset:1440
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v148, v71 offset:1504
	ds_load_u16_d16_hi v133, v71 offset:1696
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v149, v71 offset:1760
	ds_load_u16_d16_hi v134, v71 offset:1952
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v150, v71 offset:2016
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v87, v56, s19, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v42, v71 offset:2368
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v107.h, v78.h
	v_mov_b16_e32 v110.h, v78.h
	v_mov_b16_e32 v112.h, v78.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v89, v57, v56, v87
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v74, 0x80, v74
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v111.h, v78.h
	v_mov_b16_e32 v106.h, v78.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v56, v57, v89
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v43, v89
	v_sub_f32_e32 v55, v55, v89
	v_sub_f32_e32 v97, v97, v89
	v_sub_f32_e32 v99, v99, v89
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v56, v56
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v55, v55
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v91, v91, v89
	v_sub_f32_e32 v93, v93, v89
	v_sub_f32_e32 v100, v100, v89
	v_sub_f32_e32 v104, v104, v89
	v_sub_f32_e32 v102, v102, v89
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v93, v93
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v87, 0, v56, s0
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v54, v54, v89
	v_sub_f32_e32 v40, v40, v89
	v_sub_f32_e32 v44, v44, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v46, v46, v89 :: v_dual_mul_f32 v31, v31, v87
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v87
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v54, v54
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v27, v27, v87
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v45, v45, v89 :: v_dual_mul_f32 v24, v24, v87
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v116, 0, v43, s6
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v29, v29, v87
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v47, v47, v89 :: v_dual_mul_f32 v26, v26, v87
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v113, 0, v54, s6
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v114, 0, v40, s6
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v87
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v113.h
	v_mov_b16_e32 v49.l, v114.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s0, v113, v113
	v_cmp_o_f32_e64 s3, v114, v114
	v_and_b32_e32 v40, 1, v78
	v_and_b32_e32 v43, 1, v49
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v115, 0, v55, s6
	v_cndmask_b32_e64 v117, 0, v44, s6
	v_cndmask_b32_e64 v108, 0, v46, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v40, v113, v40, 0x7fff
	v_add3_u32 v43, v114, v43, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v45, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v51.l, v115.h
	v_mov_b16_e32 v52.l, v117.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s0
	v_cndmask_b16 v40.l, 0x7fff, v43.h, s3
	v_mov_b16_e32 v53.l, v108.h
	v_mov_b16_e32 v78.l, v116.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v109, 0, v47, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v44, 1, v51
	v_permlanex16_b32 v43, v40, s19, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v45, 1, v52
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v19, v19, v87 :: v_dual_and_b32 v46, 1, v53
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v108, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v151, v43, v40, v67
	v_perm_b32 v152, v43, v40, v68
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v21, v21, v87 :: v_dual_and_b32 v40, 1, v78
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v118.h
	v_add3_u32 v43, v115, v44, 0x7fff
	v_add3_u32 v44, v117, v45, 0x7fff
	v_add3_u32 v45, v108, v46, 0x7fff
	v_cmp_o_f32_e64 s4, v116, v116
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v23, v23, v87 :: v_dual_and_b32 v46, 1, v78
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v109.h
	v_cmp_o_f32_e64 s5, v115, v115
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v30, v30, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v40, v116, v40, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s10
	v_and_b32_e32 v45, 1, v78
	v_cmp_o_f32_e64 s7, v118, v118
	v_cmp_o_f32_e64 s8, v117, v117
	v_cmp_o_f32_e64 s9, v109, v109
	v_cndmask_b16 v40.l, 0x7fff, v43.h, s5
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s4
	v_add3_u32 v46, v118, v46, 0x7fff
	v_add3_u32 v45, v109, v45, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s8
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v16, v16, v87
	v_mul_f32_e32 v18, v18, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v43.h, 0x7fff, v46.h, s7
	v_permlanex16_b32 v46, v40, s19, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v44.h, 0x7fff, v45.h, s9
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v20, v20, v87
	v_mul_f32_e32 v22, v22, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v45, v43, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v153, v46, v40, v67
	v_perm_b32 v154, v46, v40, v68
	v_permlanex16_b32 v40, v44, s19, 0xfedcba98 op_sel:[1,0]
	v_dual_mov_b32 v88, v48 :: v_dual_mul_f32 v9, v9, v87
	v_perm_b32 v155, v45, v43, v67
	v_perm_b32 v156, v45, v43, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v157, v40, v44, v67
	v_perm_b32 v158, v40, v44, v68
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v11, v11, v87 :: v_dual_add_nc_u32 v72, s35, v72
	v_dual_mul_f32 v13, v13, v87 :: v_dual_add_nc_u32 v58, s26, v58
	v_mul_f32_e32 v8, v8, v87
	v_mul_f32_e32 v10, v10, v87
	v_mul_f32_e32 v12, v12, v87
	v_mul_f32_e32 v14, v14, v87
	v_mul_f32_e32 v15, v15, v87
	v_mul_f32_e32 v1, v1, v87
	v_mul_f32_e32 v3, v3, v87
	v_mul_f32_e32 v5, v5, v87
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[119:126], v[151:158], v[24:31]
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[135:142], v[151:158], v[8:15]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v135, v170, v89
	v_sub_f32_e32 v137, v172, v89
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[127:134], v[151:158], v[16:23]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v132, v167, v89
	v_sub_f32_e32 v134, v169, v89
	v_sub_f32_e32 v131, v166, v89
	v_sub_f32_e32 v136, v171, v89
	v_sub_f32_e32 v130, v173, v89
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v134, v134
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v133, v168, v89
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v136, v136
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v127.h, v78.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v133, v133
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v128.h, v78.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v135, v135
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v140, 0, v132, s6
	v_cndmask_b32_e64 v142, 0, v134, s6
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v129.h, v78.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v139, 0, v131, s6
	v_cndmask_b32_e64 v136, 0, v136, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v127.l, v140.h
	v_mov_b16_e64 v128.l, v142.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v87
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v137, v137
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v138, 0, v130, s6
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v127, 1, v127
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v141, 0, v133, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s5, v140, v140
	v_mov_b16_e64 v129.l, v136.h
	v_and_b32_e32 v128, 1, v128
	v_add3_u32 v127, v140, v127, 0x7fff
	v_mov_b16_e64 v78.l, v139.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v167, 0, v135, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v49.l, v138.h
	v_cmp_o_f32_e64 s8, v142, v142
	v_and_b32_e32 v129, 1, v129
	v_add3_u32 v128, v142, v128, 0x7fff
	v_cndmask_b16 v130.l, 0x7fff, v127.h, s5
	v_and_b32_e32 v127, 1, v78
	v_mov_b16_e64 v78.l, v141.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v137, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v136, v136
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v129, v136, v129, 0x7fff
	v_cndmask_b16 v132.l, 0x7fff, v128.h, s8
	v_and_b32_e32 v128, 1, v78
	v_mov_b16_e64 v78.l, v167.h
	v_cmp_o_f32_e64 s0, v139, v139
	v_cmp_o_f32_e64 s3, v138, v138
	v_add3_u32 v49, v138, v49, 0x7fff
	v_cndmask_b16 v134.l, 0x7fff, v129.h, s10
	v_add3_u32 v127, v139, v127, 0x7fff
	v_and_b32_e32 v129, 1, v78
	v_mov_b16_e64 v78.l, v137.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v126, v71 offset:3872
	ds_load_u16_d16 v52, v71 offset:2560
	ds_load_u16_d16 v120, v71 offset:2336
	ds_load_u16_d16 v43, v71 offset:2624
	ds_load_u16_d16 v53, v71 offset:2816
	ds_load_u16_d16 v121, v71 offset:2592
	ds_load_u16_d16 v44, v71 offset:2880
	ds_load_u16_d16 v54, v71 offset:3072
	ds_load_u16_d16 v122, v71 offset:2848
	ds_load_u16_d16 v45, v71 offset:3136
	ds_load_u16_d16 v56, v71 offset:3584
	ds_load_u16_d16 v124, v71 offset:3360
	ds_load_u16_d16 v47, v71 offset:3648
	ds_load_u16_d16 v57, v71 offset:3840
	ds_load_u16_d16 v125, v71 offset:3616
	ds_load_u16_d16 v48, v71 offset:3904
	ds_load_u16_d16 v55, v71 offset:3328
	ds_load_u16_d16 v123, v71 offset:3104
	ds_load_u16_d16 v46, v71 offset:3392
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s4, v141, v141
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s3
	v_cndmask_b16 v49.h, 0x7fff, v127.h, s0
	v_add3_u32 v127, v141, v128, 0x7fff
	v_and_b32_e32 v128, 1, v78
	v_cmp_o_f32_e64 s9, v137, v137
	v_cmp_o_f32_e64 s7, v167, v167
	v_add3_u32 v129, v167, v129, 0x7fff
	v_cndmask_b16 v130.h, 0x7fff, v127.h, s4
	v_add3_u32 v133, v137, v128, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v119, v71 offset:2080
	ds_load_u16_d16_hi v41, v71 offset:2240
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v131, v49, s19, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v132.h, 0x7fff, v129.h, s7
	v_permlanex16_b32 v135, v130, s19, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v134.h, 0x7fff, v133.h, s9
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v127, v131, v49, v67
	v_perm_b32 v128, v131, v49, v68
	v_perm_b32 v129, v135, v130, v67
	v_perm_b32 v130, v135, v130, v68
	v_permlanex16_b32 v135, v134, s19, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v132, s19, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v4, v4, v87 :: v_dual_sub_f32 v105, v105, v89
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v133, v135, v134, v67
	v_perm_b32 v134, v135, v134, v68
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v135, v71 offset:4128
	ds_load_u16_d16 v159, v71 offset:2144
	ds_load_u16_d16 v40, v71 offset:4160
	ds_load_u16_d16 v51, v71 offset:2304
	ds_load_u16_d16_hi v50, v71 offset:2176
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v47, v71 offset:3776
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v57, v71 offset:3968
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v48, v71 offset:4032
	ds_load_u16_d16_hi v42, v71 offset:2496
	ds_load_u16_d16 v160, v71 offset:2400
	ds_load_u16_d16_hi v52, v71 offset:2688
	ds_load_u16_d16_hi v43, v71 offset:2752
	ds_load_u16_d16 v161, v71 offset:2656
	ds_load_u16_d16_hi v53, v71 offset:2944
	ds_load_u16_d16_hi v44, v71 offset:3008
	ds_load_u16_d16 v162, v71 offset:2912
	ds_load_u16_d16_hi v54, v71 offset:3200
	ds_load_u16_d16_hi v45, v71 offset:3264
	ds_load_u16_d16 v163, v71 offset:3168
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v55, v71 offset:3456
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v46, v71 offset:3520
	ds_load_u16_d16 v164, v71 offset:3424
	ds_load_u16_d16_hi v56, v71 offset:3712
	ds_load_u16_d16 v165, v71 offset:3680
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v131, v49, v132, v67
	v_perm_b32 v132, v49, v132, v68
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v49, v71 offset:4096
	ds_load_u16_d16 v166, v71 offset:3936
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v51, v71 offset:2432
	ds_load_u16_d16_hi v119, v71 offset:2208
	ds_load_u16_d16_hi v159, v71 offset:2272
	ds_load_u16_d16_hi v120, v71 offset:2464
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v160, v71 offset:2528
	ds_load_u16_d16_hi v121, v71 offset:2720
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v161, v71 offset:2784
	ds_load_u16_d16_hi v122, v71 offset:2976
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v162, v71 offset:3040
	ds_load_u16_d16_hi v123, v71 offset:3232
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v163, v71 offset:3296
	ds_load_u16_d16_hi v124, v71 offset:3488
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v164, v71 offset:3552
	ds_load_u16_d16_hi v125, v71 offset:3744
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v165, v71 offset:3808
	ds_load_u16_d16_hi v126, v71 offset:4000
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v166, v71 offset:4064
	ds_load_u16_d16_hi v49, v71 offset:4224
	ds_load_u16_d16_hi v40, v71 offset:4288
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v105, v105
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v0, v0, v87
	v_dual_mul_f32 v6, v6, v87 :: v_dual_sub_f32 v95, v95, v89
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v102, v102
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[50:57], v[127:134], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[41:48], v[127:134], v[8:15]
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v48, v114, v113 :: v_dual_add_f32 v57, v115, v116
	v_add_f32_e32 v113, v117, v118
.Ltmp14:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[143:150], v[151:158], v[0:7]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v91, s6
	v_cndmask_b32_e64 v115, 0, v93, s6
	v_cndmask_b32_e64 v118, 0, v99, s6
	v_cndmask_b32_e64 v99, 0, v100, s6
	v_cndmask_b32_e64 v100, 0, v104, s6
	v_cndmask_b32_e64 v105, 0, v105, s6
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v93, v108, v109
.Ltmp16:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[159:166], v[127:134], v[0:7]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v103, v103, v89
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v159, 0, v102, s6
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v95, v95
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v113, v113, v93
	v_add_f32_e32 v93, v100, v105
.Ltmp18:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v98, v98, v89
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v103, v103
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v48, v48, v57
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v114.h
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v102, v136, v137
.Ltmp22:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v98, v98
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v101, v101, v89
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v116, 0, v95, s6
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v97, v97
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v169.h, v78.h
	v_mov_b16_e64 v169.l, v100.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v103, s6
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v94, v94, v89
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v168.h, v78.h
	v_mov_b16_e64 v168.l, v99.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v98, s6
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v92, v92, v89 :: v_dual_add_f32 v57, v99, v103
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v94, v94
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v97, 0, v97, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v137, v98, v118
.Ltmp24:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v92, v92
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v107.l, v98.h
	v_cmp_o_f32_e64 s11, v98, v98
	v_and_b32_e32 v163, 1, v169
	v_and_b32_e32 v162, 1, v168
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[119:126], v[127:134], v[16:23]
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v107, 1, v107
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v127, v71 offset:6208
	ds_load_u16_d16 v126, v71 offset:5984
	ds_load_u16_d16 v143, v71 offset:6144
	ds_load_u16_d16 v145, v71 offset:6656
	ds_load_u16_d16 v129, v71 offset:6720
	ds_load_u16_d16 v128, v71 offset:6464
	ds_load_u16_d16 v144, v71 offset:6400
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v170.h, v78.h
	v_cmp_o_f32_e64 s12, v99, v99
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v91, 0, v92, s6
	v_cndmask_b32_e64 v92, 0, v94, s6
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v90, v90, v89
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v94, v138, v139 :: v_dual_add_f32 v95, v140, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v108, v91, v115 :: v_dual_add_f32 v109, v92, v116
.Ltmp26:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v90, v90
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v112.l, v91.h
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v160, v94, v95
.Ltmp28:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v111.l, v92.h
	v_add3_u32 v98, v98, v107, 0x7fff
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v48, v48, v113
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v99, v99, v162, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v119, v71 offset:4192
	ds_load_u16_d16 v41, v71 offset:4416
	ds_load_u16_d16 v50, v71 offset:4352
	ds_load_u16_d16 v51, v71 offset:4608
	ds_load_u16_d16 v42, v71 offset:4672
	ds_load_u16_d16 v120, v71 offset:4448
	ds_load_u16_d16 v52, v71 offset:4864
	ds_load_u16_d16 v43, v71 offset:4928
	ds_load_u16_d16 v121, v71 offset:4704
	ds_load_u16_d16 v53, v71 offset:5120
	ds_load_u16_d16 v44, v71 offset:5184
	ds_load_u16_d16 v122, v71 offset:4960
	ds_load_u16_d16 v54, v71 offset:5376
	ds_load_u16_d16 v45, v71 offset:5440
	ds_load_u16_d16 v123, v71 offset:5216
	ds_load_u16_d16 v55, v71 offset:5632
	ds_load_u16_d16 v46, v71 offset:5696
	ds_load_u16_d16 v124, v71 offset:5472
	ds_load_u16_d16 v56, v71 offset:5888
	ds_load_u16_d16 v47, v71 offset:5952
	ds_load_u16_d16 v125, v71 offset:5728
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s5, v114, v114
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v152, v71 offset:6496
	ds_load_u16_d16 v146, v71 offset:6912
	ds_load_u16_d16 v130, v71 offset:6976
	ds_load_u16_d16 v153, v71 offset:6752
	ds_load_u16_d16 v147, v71 offset:7168
	ds_load_u16_d16 v131, v71 offset:7232
	ds_load_u16_d16 v154, v71 offset:7008
	ds_load_u16_d16 v148, v71 offset:7424
	ds_load_u16_d16 v132, v71 offset:7488
	ds_load_u16_d16 v155, v71 offset:7264
	ds_load_u16_d16 v149, v71 offset:7680
	ds_load_u16_d16 v133, v71 offset:7744
	ds_load_u16_d16 v156, v71 offset:7520
	ds_load_u16_d16 v150, v71 offset:7936
	ds_load_u16_d16 v134, v71 offset:8000
	ds_load_u16_d16 v157, v71 offset:7776
	ds_load_u16_d16 v158, v71 offset:8032
	ds_load_u16_d16 v151, v71 offset:6240
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v127, v71 offset:6336
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v128, v71 offset:6592
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v144, v71 offset:6528
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v90, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v115, v115
	v_cmp_o_f32_e64 s16, v100, v100
	v_add3_u32 v100, v100, v163, 0x7fff
	v_cmp_o_f32_e64 s3, v91, v91
	v_mov_b16_e32 v110.l, v90.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v96, v96, v89
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v104, v90, v114
.Ltmp32:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s0, v90, v90
	v_cmp_o_f32_e64 s4, v92, v92
	v_and_b32_e32 v95, 1, v110
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v96, v96
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v110, 1, v112
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v104, v104, v108
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v116, v116
	v_add3_u32 v112, v90, v95, 0x7fff
	v_cmp_o_f32_e64 s9, v97, v97
	v_cmp_o_f32_e64 s13, v118, v118
	v_cmp_o_f32_e64 s14, v103, v103
	v_cmp_o_f32_e64 s15, v105, v105
	v_cndmask_b16 v98.l, 0x7fff, v112.h, s0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v96, s6
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v96, v142, v167
.Ltmp36:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v101
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s17, v159, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v136, v117, v97
	v_add_f32_e32 v102, v96, v102
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v96, 1, v111
	v_mov_b16_e32 v106.l, v117.h
	v_cmp_o_f32_e64 s10, v117, v117
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v108, v109, v136
	v_add_f32_e32 v109, v137, v57
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp40:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s6
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v102, v160, v102
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v106, 1, v106
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v104, v104, v108
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v110, v91, v110, 0x7fff
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v94, v101, v159
	v_add_f32_e32 v48, v48, v102
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v170.l, v101.h
	v_cmp_o_f32_e64 s18, v101, v101
	v_add3_u32 v161, v92, v96, 0x7fff
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v111, v93, v94
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v106, v117, v106, 0x7fff
	v_and_b32_e32 v164, 1, v170
	v_cndmask_b16 v110.l, 0x7fff, v100.h, s16
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v90, v71 offset:6432
	ds_load_u16_d16_hi v145, v71 offset:6784
	ds_load_u16_d16_hi v129, v71 offset:6848
	ds_load_u16_d16 v91, v71 offset:6688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v146, v71 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v130, v71 offset:7104
	ds_load_u16_d16 v92, v71 offset:6944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v147, v71 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v131, v71 offset:7360
	ds_load_u16_d16 v93, v71 offset:7200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v148, v71 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v132, v71 offset:7616
	ds_load_u16_d16 v94, v71 offset:7456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v149, v71 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v133, v71 offset:7872
	ds_load_u16_d16 v95, v71 offset:7712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v150, v71 offset:8064
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v134, v71 offset:8128
	ds_load_u16_d16 v96, v71 offset:7968
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v107, v109, v111
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v109.l, 0x7fff, v99.h, s12
	v_add3_u32 v101, v101, v164, 0x7fff
	v_mov_b32_e32 v57, v89
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v50, v71 offset:4480
	ds_load_u16_d16_hi v41, v71 offset:4544
	ds_load_u16_d16 v136, v71 offset:4384
	ds_load_u16_d16_hi v51, v71 offset:4736
	ds_load_u16_d16_hi v42, v71 offset:4800
	ds_load_u16_d16 v137, v71 offset:4640
	ds_load_u16_d16_hi v52, v71 offset:4992
	ds_load_u16_d16_hi v43, v71 offset:5056
	ds_load_u16_d16 v138, v71 offset:4896
	ds_load_u16_d16_hi v53, v71 offset:5248
	ds_load_u16_d16_hi v44, v71 offset:5312
	ds_load_u16_d16 v139, v71 offset:5152
	ds_load_u16_d16_hi v54, v71 offset:5504
	ds_load_u16_d16_hi v45, v71 offset:5568
	ds_load_u16_d16 v140, v71 offset:5408
	ds_load_u16_d16_hi v55, v71 offset:5760
	ds_load_u16_d16_hi v46, v71 offset:5824
	ds_load_u16_d16 v141, v71 offset:5664
	ds_load_u16_d16_hi v56, v71 offset:6016
	ds_load_u16_d16_hi v47, v71 offset:6080
	ds_load_u16_d16 v142, v71 offset:5920
	ds_load_u16_d16_hi v143, v71 offset:6272
	ds_load_u16_d16 v89, v71 offset:6176
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v102, v104, v107
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v107.l, 0x7fff, v98.h, s11
	v_cndmask_b16 v111.l, 0x7fff, v101.h, s18
	v_cndmask_b16 v100.l, 0x7fff, v110.h, s3
	v_cndmask_b16 v106.l, 0x7fff, v161.h, s4
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v48, v48, v102
.Ltmp54:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v108.l, 0x7fff, v106.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v99, v48, s19, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v48, v48, v99 :: v_dual_and_b32 v99, 1, v78
.Ltmp57:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v115.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v48, v88, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v99, v114, v99, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v101, 1, v78
	v_mov_b16_e32 v78.l, v116.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v135, v71 offset:4256
	ds_load_u16_d16_hi v119, v71 offset:4320
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v136, v71 offset:4512
	ds_load_u16_d16_hi v120, v71 offset:4576
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v137, v71 offset:4768
	ds_load_u16_d16_hi v121, v71 offset:4832
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v138, v71 offset:5024
	ds_load_u16_d16_hi v122, v71 offset:5088
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v139, v71 offset:5280
	ds_load_u16_d16_hi v123, v71 offset:5344
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v140, v71 offset:5536
	ds_load_u16_d16_hi v124, v71 offset:5600
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v141, v71 offset:5792
	ds_load_u16_d16_hi v125, v71 offset:5856
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v142, v71 offset:6048
	ds_load_u16_d16_hi v126, v71 offset:6112
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v89, v71 offset:6304
	ds_load_u16_d16_hi v151, v71 offset:6368
	ds_load_u16_d16_hi v90, v71 offset:6560
	ds_load_u16_d16_hi v152, v71 offset:6624
	ds_load_u16_d16_hi v91, v71 offset:6816
	ds_load_u16_d16_hi v153, v71 offset:6880
	ds_load_u16_d16_hi v92, v71 offset:7072
	ds_load_u16_d16_hi v154, v71 offset:7136
	ds_load_u16_d16_hi v93, v71 offset:7328
	ds_load_u16_d16_hi v155, v71 offset:7392
	ds_load_u16_d16_hi v94, v71 offset:7584
	ds_load_u16_d16_hi v156, v71 offset:7648
	ds_load_u16_d16_hi v95, v71 offset:7840
	ds_load_u16_d16_hi v157, v71 offset:7904
	ds_load_u16_d16_hi v96, v71 offset:8096
	ds_load_u16_d16_hi v158, v71 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v98.h, 0x7fff, v99.h, s5
	v_add3_u32 v99, v115, v101, 0x7fff
	v_and_b32_e32 v102, 1, v78
	v_mov_b16_e32 v78.l, v97.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v104, v98, s19, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v100.h, 0x7fff, v99.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v99, v116, v102, 0x7fff
	v_and_b32_e32 v101, 1, v78
	v_mov_b16_e32 v78.l, v118.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v102, v100, s19, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v106.h, 0x7fff, v99.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v101, v97, v101, 0x7fff
	v_perm_b32 v97, v104, v98, v67
	v_perm_b32 v98, v104, v98, v68
	v_and_b32_e32 v104, 1, v78
	v_mov_b16_e32 v78.l, v103.h
	v_cndmask_b16 v108.h, 0x7fff, v101.h, s9
	v_permlanex16_b32 v112, v106, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v99, v102, v100, v67
	v_perm_b32 v100, v102, v100, v68
	v_and_b32_e32 v113, 1, v78
	v_mov_b16_e32 v78.l, v105.h
	v_add3_u32 v104, v118, v104, 0x7fff
	v_permlanex16_b32 v114, v108, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v112, v106, v67
	v_perm_b32 v102, v112, v106, v68
	v_and_b32_e32 v106, 1, v78
	v_mov_b16_e64 v78.l, v159.h
	v_cndmask_b16 v107.h, 0x7fff, v104.h, s13
	v_add3_u32 v112, v103, v113, 0x7fff
	v_perm_b32 v103, v114, v108, v67
	v_perm_b32 v104, v114, v108, v68
	v_and_b32_e32 v108, 1, v78
	v_add3_u32 v105, v105, v106, 0x7fff
	v_cndmask_b16 v109.h, 0x7fff, v112.h, s14
	v_permlanex16_b32 v113, v107, s19, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[40:47], v[97:104], v[8:15]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v42, v159, v108, 0x7fff
	v_cndmask_b16 v110.h, 0x7fff, v105.h, s15
	v_permlanex16_b32 v43, v109, s19, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[49:56], v[97:104], v[24:31]
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[135:142], v[97:104], v[16:23]
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v111.h, 0x7fff, v42.h, s17
	v_permlanex16_b32 v45, v110, s19, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[119:126], v[97:104], v[0:7]
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v40, v113, v107, v67
	v_perm_b32 v41, v113, v107, v68
	v_permlanex16_b32 v47, v111, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v42, v43, v109, v67
	v_perm_b32 v43, v43, v109, v68
	v_perm_b32 v44, v45, v110, v67
	v_perm_b32 v45, v45, v110, v68
	v_perm_b32 v46, v47, v111, v67
	v_perm_b32 v47, v47, v111, v68
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[143:150], v[40:47], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[89:96], v[40:47], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[127:134], v[40:47], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[151:158], v[40:47], v[0:7]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v32, null, v48, v48, v24
	v_div_scale_f32 v33, null, v48, v48, v25
	v_div_scale_f32 v36, null, v48, v48, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v24, v48, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v39, v36
	v_div_scale_f32 v38, s0, v25, v48, v25
	v_div_scale_f32 v43, null, v48, v48, v27
	v_div_scale_f32 v42, s3, v26, v48, v26
	v_fma_f32 v40, -v32, v34, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v33, v35, 1.0
	v_div_scale_f32 v47, null, v48, v48, v28
	v_fma_f32 v44, -v36, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v34, v40, v34 :: v_dual_fmac_f32 v35, v41, v35
	v_rcp_f32_e32 v41, v43
	v_div_scale_f32 v50, null, v48, v48, v29
	v_dual_mul_f32 v45, v37, v34 :: v_dual_mul_f32 v46, v38, v35
	v_fmac_f32_e32 v39, v44, v39
	v_div_scale_f32 v40, s4, v27, v48, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v32, v45, v37
	v_fma_f32 v49, -v33, v46, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v43, v41, 1.0
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s2, 0, v48
	.loc	1 846 17 is_stmt 1              ; attention.py:846:17
	s_and_b32 s25, s25, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v45, v44, v34 :: v_dual_mul_f32 v44, v42, v39
	v_dual_fmac_f32 v46, v49, v35 :: v_dual_fmac_f32 v41, v51, v41
	v_rcp_f32_e32 v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v32, v45, v37
	v_fma_f32 v37, -v36, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v46, v38
	v_div_scale_f32 v38, null, v48, v48, v30
	v_div_fmas_f32 v32, v32, v34, v45
	v_rcp_f32_e32 v34, v50
	v_dual_fmac_f32 v44, v37, v39 :: v_dual_mul_f32 v37, v40, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v24, v32, v48, v24
	v_div_fmas_f32 v33, v33, v35, v46
	v_fma_f32 v35, -v47, v49, 1.0
	v_fma_f32 v32, -v36, v44, v42
	v_div_scale_f32 v42, null, v48, v48, v31
	v_fma_f32 v36, -v50, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v49, v35, v49
	v_div_fixup_f32 v25, v33, v48, v25
	v_fma_f32 v33, -v43, v37, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v34, v36, v34
	v_rcp_f32_e32 v36, v38
	v_div_scale_f32 v35, s0, v28, v48, v28
	v_fmac_f32_e32 v37, v33, v41
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s2
	v_cndmask_b32_e64 v24, 0, v24, s2
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v78.l, v25.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v38, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v45, v36
	v_div_fmas_f32 v32, v32, v39, v44
	v_rcp_f32_e32 v44, v42
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v39, s3, v29, v48, v29
	v_div_fixup_f32 v26, v32, v48, v26
	v_fma_f32 v32, -v43, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v32, v41, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v42, v44, 1.0
	v_mul_f32_e32 v33, v35, v49
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v32, v48, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v41, v44
	v_fma_f32 v40, -v47, v33, v35
	v_mul_f32_e32 v43, v39, v34
	v_div_scale_f32 v41, null, v48, v48, v16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v33, v40, v49
	v_fma_f32 v37, -v50, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v40, s4, v30, v48, v30
	v_fma_f32 v32, -v47, v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v37, v34
	v_div_scale_f32 v37, s5, v31, v48, v31
	v_div_scale_f32 v47, null, v48, v48, v17
	v_div_fmas_f32 v32, v32, v49, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v50, v43, v39
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v46, v37, v44
	v_div_fixup_f32 v32, v32, v48, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v34, v43
	v_fma_f32 v43, -v41, v45, 1.0
	v_rcp_f32_e32 v34, v47
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v28, v33, v48, v29
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v33, s0, v16, v48, v16
	v_mul_f32_e32 v35, v40, v36
	v_div_scale_f32 v43, null, v48, v48, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s8, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v38, v35, v40
	v_fmac_f32_e32 v35, v39, v36
	v_fma_f32 v39, -v42, v46, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v38, v35, v40
	v_fmac_f32_e32 v46, v39, v44
	v_fma_f32 v38, -v47, v34, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v36, v35
	v_fma_f32 v35, -v42, v46, v37
	v_mul_f32_e32 v36, v33, v45
	v_div_scale_f32 v37, null, v48, v48, v18
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s3, v17, v48, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v37
	v_fma_f32 v40, -v41, v36, v33
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v42, v38, v34
	v_div_fmas_f32 v35, v35, v44, v46
	v_div_fixup_f32 v30, v29, v48, v30
	v_fmac_f32_e32 v36, v40, v45
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v46, null, v48, v48, v21
	v_div_fixup_f32 v29, v35, v48, v31
	v_fma_f32 v31, -v47, v42, v38
	v_fma_f32 v40, -v37, v39, 1.0
	v_fma_f32 v33, -v41, v36, v33
	v_div_scale_f32 v41, null, v48, v48, v20
	v_rcp_f32_e32 v35, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v42, v31, v34 :: v_dual_fmac_f32 v39, v40, v39
	v_rcp_f32_e32 v40, v41
	v_div_fmas_f32 v33, v33, v45, v36
	v_div_scale_f32 v31, s4, v18, v48, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v36, -v47, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v47, s3, v20, v48, v20
	v_fma_f32 v44, -v43, v35, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v34, v36, v34, v42
	v_fma_f32 v45, -v41, v40, 1.0
	v_div_fixup_f32 v16, v33, v48, v16
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v35, v44, v35
	v_div_scale_f32 v44, s0, v19, v48, v19
	v_fmac_f32_e32 v40, v45, v40
	v_rcp_f32_e32 v45, v46
	v_div_fixup_f32 v17, v34, v48, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v42, v44, v35
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	v_cndmask_b32_e64 v16, 0, v16, s2
	v_cndmask_b32_e64 v17, 0, v17, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v43, v42, v44
	v_fma_f32 v49, -v46, v45, 1.0
	v_mul_f32_e32 v38, v31, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v33, v35
	v_fmac_f32_e32 v45, v49, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v37, v38, v31
	v_mul_f32_e32 v34, v47, v40
	v_div_scale_f32 v49, s5, v21, v48, v21
	v_fmac_f32_e32 v38, v36, v39
	v_div_scale_f32 v36, null, v48, v48, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v41, v34, v47
	v_fmac_f32_e32 v34, v33, v40
	v_mul_f32_e32 v33, v49, v45
	v_fma_f32 v31, -v37, v38, v31
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v31, v31, v39, v38
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v31, v48, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v39, v37
	v_fma_f32 v38, -v43, v42, v44
	v_div_scale_f32 v39, null, v48, v48, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v38, v35, v42
	v_fma_f32 v38, -v41, v34, v47
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v46, v33, v49
	v_div_scale_f32 v42, s0, v22, v48, v22
	v_div_fmas_f32 v34, v38, v40, v34
	v_rcp_f32_e32 v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v45
	v_div_fixup_f32 v19, v35, v48, v19
	v_div_scale_f32 v35, null, v48, v48, v8
	v_div_fixup_f32 v18, v34, v48, v20
	v_fma_f32 v20, -v46, v33, v49
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v39, v38, 1.0
	v_div_fmas_f32 v20, v20, v45, v33
	v_rcp_f32_e32 v33, v35
	s_mov_b32 vcc_lo, s0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, null, v48, v48, v9
	v_div_fixup_f32 v20, v20, v48, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v41
	v_mul_f32_e32 v40, v42, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v36, v40, v42
	v_fmac_f32_e32 v40, v34, v37
	v_div_scale_f32 v34, s3, v23, v48, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v36, v40, v42
	v_mul_f32_e32 v36, v34, v38
	v_fma_f32 v42, -v35, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v37, v40
	v_fma_f32 v37, -v39, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, null, v48, v48, v10
	v_div_scale_f32 v40, s0, v8, v48, v8
	v_fmac_f32_e32 v36, v37, v38
	v_fma_f32 v37, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v21, v21, v48, v22
	v_mul_f32_e32 v22, v40, v33
	v_fma_f32 v34, -v39, v36, v34
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s4, v9, v48, v9
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v35, v22, v40
	v_div_fmas_f32 v34, v34, v38, v36
	v_mul_f32_e32 v36, v37, v43
	v_fma_f32 v38, -v42, v44, 1.0
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v22, v39, v33
	v_div_scale_f32 v39, null, v48, v48, v11
	v_fma_f32 v45, -v41, v36, v37
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v38, s3, v10, v48, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v39
	v_div_fixup_f32 v23, v34, v48, v23
	v_fma_f32 v34, -v35, v22, v40
	v_dual_fmac_f32 v36, v45, v43 :: v_dual_mul_f32 v35, v38, v44
	v_div_scale_f32 v40, null, v48, v48, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v34, v33, v22
	v_fma_f32 v33, -v41, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v42, v35, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v39, v46, 1.0
	v_div_fixup_f32 v8, v22, v48, v8
	v_div_fmas_f32 v33, v33, v43, v36
	v_fmac_f32_e32 v35, v34, v44
	v_rcp_f32_e32 v34, v40
	v_div_scale_f32 v36, null, v48, v48, v13
	v_fmac_f32_e32 v46, v37, v46
	v_div_scale_f32 v37, s0, v11, v48, v11
	v_div_fixup_f32 v9, v33, v48, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v36
	v_fma_f32 v22, -v42, v35, v38
	v_mul_f32_e32 v38, v37, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v40, v34, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v48, v48, v15
	v_div_fmas_f32 v22, v22, v44, v35
	v_fma_f32 v35, -v39, v38, v37
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v48, v12
	v_fma_f32 v42, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v35, v46
	v_div_fixup_f32 v10, v22, v48, v10
	v_mul_f32_e32 v43, v41, v34
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, s4, v13, v48, v13
	v_fma_f32 v22, -v39, v38, v37
	v_fma_f32 v37, -v40, v43, v41
	v_div_scale_f32 v35, null, v48, v48, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v42, v33
	v_div_fmas_f32 v22, v22, v46, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v43, v37, v34
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v44, v35
	v_fma_f32 v37, -v36, v39, v42
	v_div_fixup_f32 v11, v22, v48, v11
	v_fma_f32 v22, -v40, v43, v41
	v_div_scale_f32 v40, null, v48, v48, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v37, v33
	v_rcp_f32_e32 v37, v45
	v_div_fmas_f32 v22, v22, v34, v43
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v35, v44, 1.0
	v_fma_f32 v34, -v36, v39, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v43, null, v48, v48, v1
	v_div_fixup_f32 v12, v22, v48, v12
	v_div_fmas_f32 v33, v34, v33, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v45, v37, 1.0
	v_rcp_f32_e32 v39, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	v_cndmask_b32_e64 v23, 0, v23, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v13, v33, v48, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v40, v42, 1.0
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s3, v15, v48, v15
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v46, v42
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v38, s0, v14, v48, v14
	v_div_scale_f32 v46, null, v48, v48, v2
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v38, v44
	v_fma_f32 v33, -v43, v39, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	v_cndmask_b32_e64 v10, 0, v10, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v35, v36, v38
	v_fmac_f32_e32 v39, v33, v39
	v_div_scale_f32 v33, s5, v1, v48, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v34, v44
	v_div_scale_f32 v34, s4, v0, v48, v0
	v_mul_f32_e32 v22, v41, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v35, v36, v38
	v_rcp_f32_e32 v38, v46
	v_mul_f32_e32 v49, v34, v42
	v_fma_f32 v47, -v45, v22, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v44, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v40, v49, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v47, v37
	v_div_fixup_f32 v14, v35, v48, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v38, 1.0
	v_fmac_f32_e32 v49, v36, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v45, v22, v41
	v_div_scale_f32 v36, s0, v2, v48, v2
	v_fmac_f32_e32 v38, v47, v38
	v_mul_f32_e32 v50, v33, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v35, v37, v22
	v_div_scale_f32 v41, null, v48, v48, v3
	v_mul_f32_e32 v35, v36, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v43, v50, v33
	v_fma_f32 v34, -v40, v49, v34
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v41
	v_fma_f32 v40, -v46, v35, v36
	v_fmac_f32_e32 v50, v44, v39
	v_div_fmas_f32 v34, v34, v42, v49
	v_div_scale_f32 v44, null, v48, v48, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v40, v38
	v_fma_f32 v33, -v43, v50, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v0, v34, v48, v0
	v_div_fixup_f32 v15, v22, v48, v15
	v_fma_f32 v22, -v41, v37, 1.0
	v_fma_f32 v34, -v46, v35, v36
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v39, v50
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v37, v22, v37
	v_div_scale_f32 v22, s3, v3, v48, v3
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v48, v48, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v44, v46, 1.0
	v_div_fixup_f32 v1, v33, v48, v1
	v_div_scale_f32 v33, null, v48, v48, v4
	v_rcp_f32_e32 v42, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v49, v46
	v_mul_f32_e32 v38, v22, v37
	v_div_scale_f32 v39, null, v48, v48, v5
	v_rcp_f32_e32 v36, v33
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v43, -v41, v38, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v39
	v_div_fixup_f32 v2, v34, v48, v2
	v_div_scale_f32 v49, s7, v7, v48, v7
	v_fmac_f32_e32 v38, v43, v37
	v_fma_f32 v43, -v35, v42, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v33, v36, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v22, -v41, v38, v22
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v6, v48, v6
	v_fma_f32 v45, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v22, v37, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v51, v43, v42 :: v_dual_fmac_f32 v40, v45, v40
	v_div_scale_f32 v45, s4, v5, v48, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v35, v51, v43
	v_div_fixup_f32 v3, v22, v48, v3
	v_dual_mul_f32 v50, v45, v40 :: v_dual_fmac_f32 v51, v38, v42
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_and_b32_e32 v38, 1, v78
	v_mov_b16_e32 v78.l, v27.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v34, v36
	v_div_scale_f32 v34, s0, v4, v48, v4
	v_fma_f32 v37, -v39, v50, v45
	s_mov_b32 vcc_lo, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v38, v25, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v47, v34, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v37, v40
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v37.l, v24.h
	v_mov_b16_e32 v37.h, v78.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v33, v47, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s0
	v_cmp_o_f32_e64 s0, v24, v24
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v37, 1, v37
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v41, v36
	v_mul_f32_e32 v41, v49, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v25, v24, v37, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v22, -v33, v47, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v33, -v44, v41, v49
	v_fma_f32 v34, -v39, v50, v45
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v78.h
	v_and_b32_e32 v39, 1, v78
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v33, v46
	v_fma_f32 v33, -v35, v51, v43
	v_div_fmas_f32 v22, v22, v36, v47
	s_mov_b32 vcc_lo, s4
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v24, 1, v37
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v40, v50
	s_mov_b32 vcc_lo, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v27, v39, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v42, v51
	s_mov_b32 vcc_lo, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v27, v27
	v_mov_b16_e32 v78.l, v28.h
	v_mov_b16_e32 v39.l, v32.h
	v_mov_b16_e32 v39.h, v78.h
	v_cndmask_b16 v38.l, 0x7fff, v25.h, s0
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v37.h, s7
	v_and_b32_e32 v37, 1, v78
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v29, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v25, 1, v39
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v29, v28, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v78.h
	v_mov_b16_e32 v78.l, v26.h
	v_add3_u32 v25, v32, v25, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v24.h, s0
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_and_b32_e32 v24, 1, v37
	v_and_b32_e32 v29, 1, v78
	v_cndmask_b16 v28.l, 0x7fff, v25.h, s8
	v_cmp_o_f32_e64 s0, v26, v26
	v_mov_b16_e32 v78.l, v17.h
	v_add3_u32 v24, v30, v24, 0x7fff
	v_add3_u32 v25, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v78.h
	v_and_b32_e32 v29, 1, v78
	v_mov_b16_e32 v78.l, v19.h
	v_cndmask_b16 v25.l, 0x7fff, v24.h, s7
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s0
	v_and_b32_e32 v24, 1, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v31, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v17, v17
	v_and_b32_e32 v30, 1, v78
	v_add3_u32 v17, v16, v24, 0x7fff
	v_mov_b16_e32 v24.l, v26.h
	v_mov_b16_e32 v24.h, v78.h
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	v_cmp_o_f32_e64 s0, v16, v16
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v78.l, v20.h
	v_and_b32_e32 v16, 1, v24
	v_add3_u32 v24, v19, v30, 0x7fff
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v30.h, v78.h
	v_cndmask_b16 v29.l, 0x7fff, v17.h, s0
	v_add3_u32 v16, v26, v16, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_and_b32_e32 v24, 1, v78
	v_and_b32_e32 v17, 1, v30
	v_cmp_o_f32_e64 s0, v26, v26
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v78.h
	v_mov_b16_e32 v78.l, v23.h
	v_add3_u32 v17, v18, v17, 0x7fff
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s0
	v_and_b32_e32 v16, 1, v26
	v_and_b32_e32 v20, 1, v78
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s7
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s8
	v_mov_b16_e32 v78.l, v9.h
	v_add3_u32 v16, v21, v16, 0x7fff
	v_add3_u32 v17, v23, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v21, v21
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v78.h
	v_cmp_o_f32_e64 s0, v23, v23
	v_and_b32_e32 v21, 1, v78
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	v_mov_b16_e32 v78.l, v11.h
	v_and_b32_e32 v16, 1, v20
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	v_add3_u32 v20, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_and_b32_e32 v21, 1, v78
	v_add3_u32 v9, v8, v16, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v78.h
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s7, v11, v11
	v_mov_b16_e32 v78.l, v13.h
	v_and_b32_e32 v8, 1, v16
	v_add3_u32 v16, v11, v21, 0x7fff
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v78.h
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s0
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v78
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v15, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v9, 1, v21
	v_cmp_o_f32_e64 s7, v13, v13
	v_add3_u32 v15, v13, v16, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v78.h
	v_mov_b16_e32 v78.l, v10.h
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s0
	v_and_b32_e32 v8, 1, v16
	v_and_b32_e32 v13, 1, v78
	v_mov_b16_e32 v78.l, v1.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v44, v41, v49
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v78.h
	v_and_b32_e32 v13, 1, v78
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v46, v41
	v_div_fixup_f32 v4, v22, v48, v4
	v_div_fixup_f32 v5, v34, v48, v5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v10, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v78.h
	v_mov_b16_e32 v78.l, v3.h
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v33, v48, v6
	v_div_fixup_f32 v7, v35, v48, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cmp_o_f32_e64 s0, v0, v0
	v_and_b32_e32 v0, 1, v1
	v_and_b32_e32 v1, 1, v78
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s2
	v_cndmask_b32_e64 v4, 0, v4, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s0
	v_mov_b16_e32 v8.h, v78.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v78.l, v5.h
	v_mov_b16_e32 v8.l, v4.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v7, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v7, 1, v78
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v78.h
	v_mov_b16_e32 v78.l, v3.h
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s0
	v_cmp_o_f32_e64 s0, v2, v2
	v_add3_u32 v2, v4, v8, 0x7fff
	v_and_b32_e32 v8, 1, v13
	v_and_b32_e32 v13, 1, v78
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v5, v5
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v4, v6, v8, 0x7fff
	v_add3_u32 v5, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v36, 1, v70
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v4, v38, v28, s1
	v_cndmask_b32_e64 v6, v27, v25, s1
	v_cndmask_b32_e64 v8, v29, v18, s1
	v_cndmask_b32_e64 v13, v17, v19, s1
	v_cndmask_b32_e64 v14, v19, v17, s1
	v_cndmask_b32_e64 v17, v0, v10, s1
	v_cndmask_b32_e64 v0, v10, v0, s1
	v_cndmask_b32_e64 v15, v12, v20, s1
	v_cndmask_b32_e64 v12, v20, v12, s1
	v_cndmask_b32_e64 v16, v9, v11, s1
	v_cndmask_b32_e64 v9, v11, v9, s1
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v35, s27, v69
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v7, v18, v29, s1
	v_cndmask_b32_e64 v18, v2, v1, s1
	v_cndmask_b32_e64 v1, v1, v2, s1
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v22, 16, v36
	s_mov_b32 s0, 0x76543210
	v_or_b32_e32 v33, 32, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v3, v28, v38, s1
	v_cndmask_b32_e64 v5, v25, v27, s1
	v_permlanex16_b32 v2, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 48, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v19, v1, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s27, v22
	v_cmp_gt_i32_e64 s5, s27, v36
	v_cmp_gt_i32_e64 s3, s27, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v3, v67
	v_perm_b32 v1, v2, v3, v68
	v_perm_b32 v2, v4, v5, v67
	v_perm_b32 v3, v4, v5, v68
	v_perm_b32 v4, v6, v7, v67
	v_perm_b32 v5, v6, v7, v68
	v_perm_b32 v6, v8, v13, v67
	v_perm_b32 v7, v8, v13, v68
	v_perm_b32 v12, v14, v17, v67
	v_perm_b32 v13, v14, v17, v68
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v35, v22, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v10, v15, v67
	v_perm_b32 v9, v10, v15, v68
	v_perm_b32 v10, v11, v16, v67
	v_perm_b32 v11, v11, v16, v68
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s27, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v14, v19, v18, v67
	v_perm_b32 v15, v19, v18, v68
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v35, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s6, vcc_lo
	s_and_b32 s0, s6, s5
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v35, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s6, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s6, s4
	s_mov_b32 s27, 0x31027000
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 174
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 174
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13012
; TotalNumSgprs: 42
; NumVgprs: 174
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 42
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
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
